From: "Jerry T" <linuxl1@hotmail.com>
Subject: Fwd: Re: cdrom working! (almost)
Date: Mon, 08 Apr 2002 00:49:11 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <F157l5sF78NalRnfN0R0000470a@hotmail.com>
Mime-Version: 1.0
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org

How do I access the cdrom ioctls?


>From: Adam Schrotenboer <adam@tabris.net>
>To: "Jerry T" <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org
>Subject: Re: cdrom working! (almost)
>Date: Sat, 6 Apr 2002 23:44:59 -0500
>
>On Saturday 06 April 2002 16:28, Jerry T wrote:
> > I turned on the scsi-cdrom-support in "make xconfig", recompiled and
> > my cd started working. I can read data files on the cd but I cannot
> > listen to audio cds. Sndconfig seems to work fine and I can play audio
> > files off my harddrive. When I run the cd-player (gtcd) I can see the
> > title of the CD but when I click 'play' it does nothing. I also tried
> > whatever the KDE CD player is and it just hangs up.
> >
> > If I try to mount the audio cdrom I now get the following error
> > "mount:wrong fs type, bad option, bad superblock on /dev/cdrom, or too
> > many mounted file systems"
>Red Book Audio is a) not mountable and b) not needed to be. All
>functions are performed via cdrom ioctls.
> >
> > I see iso9660 listed in /proc/filesystems.
> >
> > _________________________________________________________________
> > Join the world=92s largest e-mail service with MSN Hotmail.
> > http://www.hotmail.com
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe
> > linux-newbie" in the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs



_________________________________________________________________
Send and receive Hotmail on your mobile device: http://mobile.msn.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
