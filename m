From: Ray Olszewski <ray@comarre.com>
Subject: Re: lilo question...again
Date: Sat, 23 Nov 2002 08:34:32 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021123081535.02122950@celine>
References: <66EF623E.18966587.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <66EF623E.18966587.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Responses inline below.

At 07:41 AM 11/23/02 -0500, neil t wrote:
>Thanks for the info about lilo.  It was a typo...I did edit 
>/etc/lilo.config but I still get many, many error messages when I try to 
>boot RedHat.  So I think I will go ahead and forget about it and install 
>Debian.  I have copied all the things I want to save and stored them on my 
>/dos partion and even copied important stuff from Mandrake to the /dos 
>partion.
>Ray, you mention:
>"If you install Debian, it will replace your existing bootloader with a 
>lilo install that boots only Debian. After it does that, you can edit its
>/etc/lilo.conf, then run lilo, to restore the options to boot DOS or
>Mandrake, but the Debian installer itself won't add those choices for you."
>I understand that the Debian installer won't add the choices, but do I 
>need to replace my existing bootloader?  Can't I just install Debian and 
>then edit the Mandrake bootloader to reflect Debian on /dev/hda3?

This is partly a terminology confusion, partly an installation issue. The 
bootloader is a small program that gets placed in the MBR (or on a 
partitin, but we'll neglect that for right now). lilo is a Linux program 
that reads a consifuration file and uses the information there to install a 
bootloader. The confusion arises because we commonly call both this Linux 
program -AND- the bootloaded program itself "lilo". So ...

If you follow the procedure you describe above, you are replacing the 
existing bootloader ... only you are using the Mandrake version of lilo 
(and lilo.conf) to do it. Assuming you do the edits right (a requirement no 
matter how you do it), doing it this way is fine.

But using lilo to install a bootloader is part of the normal Debian install 
process. There is probably a way to skip this step, but I don't know what 
it is (since I don't run multi-boot hosts). If you can make it work that's 
great.

>I copied an installation guide for Debian Woody 3.0, but it seems to be 
>geared to setting up a server.  I just want regular install.  I did use it 
>as a guide when I first installed Debian, and it did seem to work, but I 
>did have to tweak it a bit.  (any suggestions for a better installation 
>guide?)

Better than what? You don't tell me enough to know ahat you are using now.

>One thing it mentions is: "The next three selections refer to setting up 
>the system to boot up.  a] select Make System Bootable b] select the 
>default Install LILO in the MBR and press Enter when the "Sercuring LILO" 
>message apprears c] you don't need to make a boot floppy so arrow down to 
>Alernate: Reboot the System, press Enter and answer Yes to the confirmation"
>When I installed it, I made a boot floppy and it worked ok, but was very 
>slow.

"Slow" and "fast" are in the eye of the beholder, so your telling me this 
is "very slow" in your opinion doesn't let me know if you are describing 
the normal speed of floppy-based boots or a system with a problem. Compared 
to HD-based boots, floppy boots are always much slower ... they are really 
intended for emergency rescue, not (in most cases) for everyday operation 
of the system.

>Which brings me back to my original question.  I would rather have the 
>option on the gui lilo box when I boot.  I don't mind the way things boot 
>now, I just don't want to mess up what I have.  The Mandrake gui LILO box 
>at boot is fine with me as long as I can boot Debian from it.  (I am sure 
>I messed up the RedHat because I forgot to execute lilo after editing 
>/etc/lilo.config).

Up-to-date versions of Debian (Sid, anyway ... I'm not sure about Woody) 
install a version of lilo that provides a "gui lilo box" ... probably the 
same one that Mandrake offers.

>I apologize for the way some of the stuff is phrased, I still haven't 
>quite got the Linux lingo down!

Getting the "lingo" down is less important then being careful about your 
descriptions. For example, after noting at the beginning of this message 
that you'd previously made a "typo", you continue to misname "lilo.conf" 
"lilo.config" (unless Mandrake really does use a different name for this 
file ... I know Debian still calls it lilo.conf). When asking for 
configuration help, accurate reporting of the details is essential.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
