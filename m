From: "rob.rice" <rob.rice@fuse.net>
Subject: Re: Big dummy lost SU password...
Date: Fri, 11 Jul 2003 18:56:16 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F0F4090.2040400@fuse.net>
References: <bemkju$ou$1@main.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bemkju$ou$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Jamie Risk wrote:

>Due in parts to brain fog and the remarkable stability of Linux, I've not
>had to adminster my Linux box for over 8 months.  Because of Windows Admin
>tinkering, my samba server has stopped working and I need to modify it's
>configuration.
>
>Is there a way I can mount mylinux box (say from a bootable ISO image I'd
>make) to reset the root user password and not goof up the other accounts
>that I've been so happily been using?
>
>I'm hoping that combinations of commands like chroot and such will allow me
>to avoid rebuilding my system.
>
>- Jamie (if I rember correctly)
>
>
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>
there single floppy linuxes like tomsrtbt that will run in ram and let 
you use most linux commands to edit the etc files
I might be wrong on this but as far as I know  chroot will ask for 
root's password you may have to delete root's pass word from 
/etc/shadow  befor you run passwd depending on the distro just deleting 
root's pass word will get you in as root with no pass word

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
