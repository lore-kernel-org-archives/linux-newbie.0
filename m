From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: accessing my XP printer from Linux?
Date: Wed, 26 Feb 2003 15:33:16 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15964.53292.510412.155611@ksys.rug.ac.be>
References: <1045726946.1229.26.camel@mark.localdomain>
	<15956.36097.705979.573271@ksys.rug.ac.be>
	<1046236784.2287.26.camel@mark.localdomain>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046236784.2287.26.camel@mark.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello again,

I don't know a lot about CUPS, printer configuration etc. I just know how I managed to get it to work. Basically, I guess the following lines should work:

$ gs -sDEVICE=ljet4 -sOutputFile=foo.hp foo.pdf 

this will convert a pdf-file to 'printer format' (in this case, HP Laserjet 4)

$ smbclient //labmetserver/HPLaserJ -Ukurts 

Connect to the server, use as 'service' the printer HPLaserJ. labmetserver is the name of the computer (or IP-number, whatever you prefer, but your computer has to be able to resolve any name, so you can use the IP-number to be sure). I have an entry '157.193.64.19 lmeserv.rug.ac.be labmetserver' in my '/etc/hosts'-file. labmetserver is actually 157.193.64.19

My password is asked (I don't know how to work with it if not password protected, I think it shouldn't ask for one...) so I give it... and I can use the service HPLaserJ. Then, I can use some commands on this service, and one of these is 'print', which sends a file to the printer (the service I'm in). This should be a text file or 'printer type'-file (that's way I run the gostscript in the first line):

smb> print foo.hp

Just try this, and see where exactly you're stuck. Is it when you run 'smbclient', while you try to connect to the computer which shares a printer? And what error messages and warnings do you get?


Kurt.



Mail from Mark Johnson, sent on February 25 2003 at 21:19
(GMT-0800):

  > Thanks Kurt for the help, but I have been working on
  > CUPS lately and almost have it working.  I found some
  > help at HP.COM, as I have a HP 3820 printer, and got
  > their latest drivers and used thier Red Hat install
  > procedures.  Then I used the CUPS configurator
  > (localhost:631) and have been trying to get that
  > working, but after I get everything entered in, I press
  > the Print Test button and it tells me I don't have
  > permission.  I turned off the iptables (service iptables
  > stop) and even disables the Norton firewall and still
  > got no permission?  maybe you can help me out on the
  > naming conventions. cups wants the
  > smb://server/sharename but I'm unsure which names
  > convert from windows?  is server the group name?  is
  > share name the computername?  also I was asked by
  > printtool what my name and password was, and there is no
  > name or password setup on the XP box?  It just has my
  > name that I used to install windows?  also do I use the
  > XP's printer's share name in the path too? as in the
  > sharename?  or do I use the IP address for the server
  > instead of the XP group name.  As you can see I am
  > starting to get a little confused :).  In fact I'm too
  > confused to even attempt your suggestions yet.  I have
  > too big of a headache right now.
  > 
  > If you or anyone else can help me get CUPS going or
  > clarify the naming conventions I would really appreciate
  > it.
  > 
  > Thanks in advance
  >   -=Mark=-
  > 
  > > 
  > > Things are not completely like I want them right now,
  > > but at least, I can print. You can test some stuff,
  > > before you try the 'printcap'-thing etc. I did these
  > > things to test whether I could reach the printer:
  > > 
  > > $ gs -sDEVICE=ljet4 -sOutputFile=foo.hp foo.pdf $
  > > smbclient //labmetserver/HPLaserJ -Ukurts passwd:
  > > 
  > > smb> print foo.hp smb> quit


-- 
The difference between genius and stupidity is that genius
has it's limits.
		-- Albert Einstein
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
