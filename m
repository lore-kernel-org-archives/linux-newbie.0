From: Mark Johnson <mark260@adelphia.net>
Subject: Re: accessing my XP printer from Linux?
Date: 25 Feb 2003 21:19:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1046236784.2287.26.camel@mark.localdomain>
References: <1045726946.1229.26.camel@mark.localdomain> 
	<15956.36097.705979.573271@ksys.rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15956.36097.705979.573271@ksys.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Thanks Kurt for the help, but I have been working on CUPS lately and
almost have it working.  I found some help at HP.COM, as I have a HP
3820 printer, and got their latest drivers and used thier Red Hat
install procedures.  Then I used the CUPS configurator (localhost:631)
and have been trying to get that working, but after I get everything
entered in, I press the Print Test button and it tells me I don't have
permission.  I turned off the iptables (service iptables stop) and even
disables the Norton firewall and still got no permission?  maybe you can
help me out on the naming conventions. cups wants the
smb://server/sharename but I'm unsure which names convert from windows? 
is server the group name?  is share name the computername?  also I was
asked by printtool what my name and password was, and there is no name
or password setup on the XP box?  It just has my name that I used to
install windows?  also do I use the XP's printer's share name in the
path too? as in the sharename?  or do I use the IP address for the
server instead of the XP group name.  As you can see I am starting to
get a little confused :).  In fact I'm too confused to even attempt your
suggestions yet.  I have too big of a headache right now.

If you or anyone else can help me get CUPS going or clarify the naming
conventions I would really appreciate it.

Thanks in advance
  -=Mark=-

On Thu, 2003-02-20 at 00:08, Kurt Sys wrote:
> Hi Mark,
> 
> It took a while before I was able to access network-printers, but what you most probably need is smbclient. You have to make an entry in your printcap-file (of course), then make an smbprint-script and a '.config' file for each networkprinter. Here are my files:
> 
> --- /etc/printcap :
> [...]
> smb0|SMB.HP.LJ4.normal.1:\
> 	:cm=HP LaserJet 4 computerlokaal:
> 	:lp=/dev/smb0:\
> 	:sd=/var/spool/lpd/smb0:\
> 	:af=/var/spool/lpd/smb0/acct:\
> 	:mx#0:\
> 	:if=/usr/local/bin/smbprint
> [...]
> ---
> 
> 
> --- /usr/local/bin/smbprint (find some of these files on the net... but check the lines where I use a temporary file: on the net, you often find an other way of doing this, but it didn't work with me, and some people on this list helped me out):
> #!/bin/sh -x
> 
> logfile=/tmp/smb-print.log
> 
> eval acct_file=\$$#
> 
> spool_dir=/var/spool/lpd/smb0
> config_file=$spool_dir/.config
> 
> tempsmbprint=`mktemp /tmp/smbprint.XXXXXX` && sed 's/ //g' $config_file >$tempsmbprint && source $tempsmbprint && rm $tempsmbprint
> unset tempsmbprint
> 
> echo "server $server, service $service" >> $logfile
> 
> (
> echo translate
> echo "print -"
> cat
> ) | /usr/bin/smbclient "\\\\$server\\$service" -U$user>> $logfile
> ---
> 
> 
> --- /var/spool/smb0/.config :
> server=LABMETSERVER service=HPLaserJ user=kurts password="xxxxxxxx"
> ---
> 
> Things are not completely like I want them right now, but at least, I can print. You can test some stuff, before you try the 'printcap'-thing etc. I did these things to test whether I could reach the printer:
> 
> $ gs -sDEVICE=ljet4 -sOutputFile=foo.hp foo.pdf
> $ smbclient //labmetserver/HPLaserJ -Ukurts
> passwd:
> 
> smb> print foo.hp
> smb> quit
> 
> If this works, mess a bit with the printcap, .config and smbprint-file and things should get to work... By the way, I guess if you use redhed, there must be a kind of a tool somewhere. I remember there exists something like 'printtool' and it can search for networked printers (although it didn't work with me :-) ).
> 
> 
> I hope this is an anwser to your question... or this can help you in some way.
> 
> Kurt.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
