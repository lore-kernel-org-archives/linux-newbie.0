From: wa4chq@netscape.net (neil t)
Subject: lilo question...again
Date: Sat, 23 Nov 2002 07:41:41 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <66EF623E.18966587.0006BEFC@netscape.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for the info about lilo.  It was a typo...I did edit /etc/lilo.config but I still get many, many error messages when I try to boot RedHat.  So I think I will go ahead and forget about it and install Debian.  I have copied all the things I want to save and stored them on my /dos partion and even copied important stuff from Mandrake to the /dos partion.  
Ray, you mention:
"If you install Debian, it will replace your existing bootloader with a lilo install that boots only Debian. After it does that, you can edit its
/etc/lilo.conf, then run lilo, to restore the options to boot DOS or
Mandrake, but the Debian installer itself won't add those choices for you."
I understand that the Debian installer won't add the choices, but do I need to replace my existing bootloader?  Can't I just install Debian and then edit the Mandrake bootloader to reflect Debian on /dev/hda3?

I copied an installation guide for Debian Woody 3.0, but it seems to be geared to setting up a server.  I just want regular install.  I did use it as a guide when I first installed Debian, and it did seem to work, but I did have to tweak it a bit.  (any suggestions for a better installation guide?)  One thing it mentions is: "The next three selections refer to setting up the system to boot up.  a] select Make System Bootable b] select the default Install LILO in the MBR and press Enter when the "Sercuring LILO" message apprears c] you don't need to make a boot floppy so arrow down to Alernate: Reboot the System, press Enter and answer Yes to the confirmation"
When I installed it, I made a boot floppy and it worked ok, but was very slow.  Which brings me back to my original question.  I would rather have the option on the gui lilo box when I boot.  I don't mind the way things boot now, I just don't want to mess up what I have.  The Mandrake gui LILO box at boot is fine with me as long as I can boot Debian from it.  (I am sure I messed up the RedHat because I forgot to execute lilo after editing /etc/lilo.config).

I apologize for the way some of the stuff is phrased, I still haven't quite got the Linux lingo down!

All the best-

Neil T.
-- 
Arachne/DRdos-Mandrake9.0/Basiclinux-QrpHamRadio
http://www.qsl.net/wa4chq
 


__________________________________________________________________
The NEW Netscape 7.0 browser is now available. Upgrade now! http://channels.netscape.com/ns/browsers/download.jsp 

Get your own FREE, personal Netscape Mail account today at http://webmail.netscape.com/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
