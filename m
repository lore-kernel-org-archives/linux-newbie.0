From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: accessing my XP printer from Linux?
Date: Thu, 20 Feb 2003 09:08:33 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15956.36097.705979.573271@ksys.rug.ac.be>
References: <1045726946.1229.26.camel@mark.localdomain>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1045726946.1229.26.camel@mark.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Mark,

It took a while before I was able to access network-printers, but what you most probably need is smbclient. You have to make an entry in your printcap-file (of course), then make an smbprint-script and a '.config' file for each networkprinter. Here are my files:

--- /etc/printcap :
[...]
smb0|SMB.HP.LJ4.normal.1:\
	:cm=HP LaserJet 4 computerlokaal:
	:lp=/dev/smb0:\
	:sd=/var/spool/lpd/smb0:\
	:af=/var/spool/lpd/smb0/acct:\
	:mx#0:\
	:if=/usr/local/bin/smbprint
[...]
---


--- /usr/local/bin/smbprint (find some of these files on the net... but check the lines where I use a temporary file: on the net, you often find an other way of doing this, but it didn't work with me, and some people on this list helped me out):
#!/bin/sh -x

logfile=/tmp/smb-print.log

eval acct_file=\$$#

spool_dir=/var/spool/lpd/smb0
config_file=$spool_dir/.config

tempsmbprint=`mktemp /tmp/smbprint.XXXXXX` && sed 's/ //g' $config_file >$tempsmbprint && source $tempsmbprint && rm $tempsmbprint
unset tempsmbprint

echo "server $server, service $service" >> $logfile

(
echo translate
echo "print -"
cat
) | /usr/bin/smbclient "\\\\$server\\$service" -U$user>> $logfile
---


--- /var/spool/smb0/.config :
server=LABMETSERVER service=HPLaserJ user=kurts password="xxxxxxxx"
---

Things are not completely like I want them right now, but at least, I can print. You can test some stuff, before you try the 'printcap'-thing etc. I did these things to test whether I could reach the printer:

$ gs -sDEVICE=ljet4 -sOutputFile=foo.hp foo.pdf
$ smbclient //labmetserver/HPLaserJ -Ukurts
passwd:

smb> print foo.hp
smb> quit

If this works, mess a bit with the printcap, .config and smbprint-file and things should get to work... By the way, I guess if you use redhed, there must be a kind of a tool somewhere. I remember there exists something like 'printtool' and it can search for networked printers (although it didn't work with me :-) ).


I hope this is an anwser to your question... or this can help you in some way.

Kurt.



Mail from Mark Johnson, sent on  February 19 2003 at 23:42 (GMT-0800): 

  > I have my printer connected to my Windows XP machine so everyone in the
  > house can use it.  But I can't access it from my Linux computer (Red Hat
  > 8.0).  I tried Samba but it only lets me share a local printer with
  > others on the network.  I use a Cable modem 4 port router to network and
  > share access to the Internet (Linksys BEFSR41).  Is there a way to
  > configure Samba to allow me to access a printer on another computer, or
  > is there any program that will accomplish this?
  > 
  > Thanks in advance
  >   -=Mark=-
  > 
  > -
  > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
  > the body of a message to majordomo@vger.kernel.org
  > More majordomo info at  http://vger.kernel.org/majordomo-info.html
  > Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Common sense is the most evenly distributed quantity in the world. Everyone thinks he has enough.
		-- Descartes, 1637
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
