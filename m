From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: lilo questions.......
Date: Sun, 24 Nov 2002 11:23:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE0FCF2.7404875@gelm.net>
References: <3B60FCE9.0E186F1F.0006BEFC@netscape.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: neil t <wa4chq@netscape.net>
Cc: linux-newbie@vger.kernel.org



neil t wrote:
> 
> greetings and again tnx for the help---
> 
> >I copied an installation guide for Debian Woody 3.0, but it seems to be
> >geared to setting up a server.  I just want regular install.  I did use it
> >as a guide when I first installed Debian, and it did seem to work, but I
> >did have to tweak it a bit.  (any suggestions for a better installation
> >guide?)

Are you looking for a better Debian Woody 3.0 regular install
than the one you copied?  Which one did you copy?

> 
> >When I installed it, I made a boot floppy and it worked ok, but was very
> >slow.
> 
> >>>>>"Slow" and "fast" are in the eye of the beholder, so your telling me >>>>>this is "very slow" in your opinion doesn't let me know if you are describing the normal speed of floppy-based boots or a system with a problem.
> 
> I was describing booting from the floppy disk....
> 
> >>Getting the "lingo" down is less important then being careful about your
> descriptions. For example, after noting at the beginning of this message
> that you'd previously made a "typo", you continue to misname "lilo.conf"
> "lilo.config" (unless Mandrake really does use a different name for this
> file ... I know Debian still calls it lilo.conf). When asking for
> configuration help, accurate reporting of the details is essential.
> 
> whoops!  yes it is "lilo.conf" !

 But you never mentioned running /sbin/lilo  !!

> Ok, so I guess if I install Debian 3.0 or even Red Hat again, it will replace my existing bootloader but I will still have the option to make Mandrake the default.  This is determined when I edit /etc/lilo.conf.

 ...and run /sbin/lilo.

Debian/Red Hat/Mandrake are not boot loaders, per se.
Perhaps those three distributions use the same boot loader. (?)

You do not need to do an 'install' to change|alter a boot loader.

The issue is not from which distribution a boot loader is re-written,
it is what bootable partitions can be selected from the boot loader
when the system is next booted.  (?)

> Is there a standard format for adding other linux distro's to /etc/lilo.conf?  One of replies to my question explains it this way:
> 
> "It does not really make any differance which system installed lilo, the
> secret is mounting all your disks/partitions where "lilo" can
  reach them all in one go, you can define any partition "in use
  or not" as long as it is mounted.
          ^^^^^^^^^^^^^^^^^^^^^^^^
<snipped to end>
So,
 if all the partitions you want to choose to boot from are mounted,
 run /sbin/lilo.

HTH, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
