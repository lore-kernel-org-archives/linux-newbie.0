From: "Puneet B" <puneetb@bonbon.net>
Subject: RE: Big dummy lost SU password...
Date: Fri, 11 Jul 2003 16:33:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <CHEKJPMKMAELJLFIBCPLAEAMCAAA.puneetb@bonbon.net>
References: <3F0F4090.2040400@fuse.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F0F4090.2040400@fuse.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> >Is there a way I can mount mylinux box (say from a bootable ISO image I'd
> >make) to reset the root user password and not goof up the other accounts
> >that I've been so happily been using?
> >
> >I'm hoping that combinations of commands like chroot and such
> will allow me
> >to avoid rebuilding my system.
>
> there single floppy linuxes like tomsrtbt that will run in ram and let
> you use most linux commands to edit the etc files
> I might be wrong on this but as far as I know  chroot will ask for
> root's password you may have to delete root's pass word from
> /etc/shadow  befor you run passwd depending on the distro just deleting
> root's pass word will get you in as root with no pass word

If your distribution (Redhat does) supports a 'rescue mode' on its install
CD then you can use that:
http://www.redhat.com/docs/manuals/linux/RHL-9-Manual/custom-guide/s1-rescue
mode-boot.html
http://www.redhat.com/docs/manuals/linux/RHL-7.2-Manual/custom-guide/rescuem
ode.html

or, you could boot into single user mode at the LILO prompt using
'linux single' or 'linux init s'. That'll give you a root prompt
where you can try editing /etc/passwd or using passwd.

Puneet


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
