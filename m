From: Ray Olszewski <ray@comarre.com>
Subject: Re: installation and lilo
Date: Fri, 22 Nov 2002 09:15:13 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021122090246.02157610@celine>
References: <6C559FFA.31E59693.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6C559FFA.31E59693.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

neil --

Your message was pretty hard to read, dut to its lack of paragraphing, so I 
hope I'm reading it right. Shorn of detail, you need a way to make LILO 
successfully boot multiple candidate OSs, each with an associated kernel 
and root partition. You do this by editing (as root) the file 
/etc/lilo.conf (NOT lilo.config), then running lilo to install the changes.

You say you did the edit (I'll assume the wrong filename was just an e-mail 
typo) but "forgot" to run lilo. Well, the fix or that should be pretty 
obvious: boot the system somehow (a rescue floppy, or to Mandrake) and run 
lilo. I trust you realize that each root (or, more precisely, each /etc) 
directory will have its own copy of lilo.conf, so if you boot to Mandrake, 
you may need to re-edit its lilo.conf (on hdd1) so it contains the changes 
you (probably) made to Red Hat's lilo.conf (on hda3). Or you can mount 
/dev/hda3 somewhere and tell lilo to use /mount_point/etc/lilo.conf for its 
installation instructions.

If you install Debian, it will replace your existing bootloader with a lilo 
install that boots only Debian. After it does that, you can edit its 
/etc/lilo.conf, then run lilo, to restore the options to boot DOS or 
Mandrake, but the Debian installer itself won't add those choices for you.

At 06:32 AM 11/22/02 -0500, neil t wrote:
>(this didn't send the first time, so I am posting it again via a FWD)
>[...]
>Greetings- I have a weird setup, but right now I am ok with it.  I 
>originally had Redhat 7.2 on hda3, dos on hda1 and a spare drive slaved 
>off the cdrom called hdd 1.  Everything was lovely.  Then I installed the 
>latest Debian on hdd1 and had it boot from a disk instead of messing with 
>lilo.  Other then being slower that way, it was ok.  Then I got a copy of 
>Mandrake 9.0 and decided to put it on hdd1 in place of the Debian.  But 
>somehow I missed the part about the option to make it boot from a disk or 
>lilo.  What happened was now Mandrake is top dog.  I tried editting 
>lilo.config, but forgot to type 'lilo' after the editting and now I can't 
>get Redhat to boot.  I can access all my stuff, so that is not a 
>problem.  But now I have hda3 kinda doing nothing useful.  What I want to 
>know is if I decide to get rid of Redhat and either reinstall it or 
>reinstall debian, what will happen to Mandrake?  Will that get screwed 
>up?  Or will I be able to chose Debian, Dos or Mandrake like I want?  I am 
>sure Debian will be a safe bet because I know it asked about the boot 
>disk, but just thought I would ask the knowledgeable group here. Cheers 
>Neil T. -- Arachne/DRdos-Mandrake9.0/Basiclinux-QrpHamRadio 
>http://www.qsl.net/wa4chq




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
