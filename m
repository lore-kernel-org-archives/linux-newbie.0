From: James Miller <jamtat@mailsnare.net>
Subject: Re: shared partition for dual boot
Date: Fri, 11 Jul 2003 23:36:33 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307112258490.1107@homenet>
References: <Email.pvHcaE4ibhs@lcsd.k12.wa.us>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Email.pvHcaE4ibhs@lcsd.k12.wa.us>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>, dbentson@lcsd.k12.wa.us

On Fri, 11 Jul 2003 dbentson@lcsd.k12.wa.us wrote:
>
> Thanks for the response. How would I determine what the desktop I am running
> is? I thought that Gnome was the desktop environment... I have a lot to learn I
> think.
>
> I will need to check on the etc/fstab information... I doubt that it is there
> though since I never added anything - and the partition was created after I
> installed Redhat.
>
> Just for kicks, what should I expect to see in etc/fstab?
>
Dan:

I'm going to cc this response to the list since I'm sort of the
neighborhood newbie and don't know all that much.  You'll get much better
help from others onlist, and they'll be able to spot any mistakes I'm
making :)  Anyway, here goes . . .

I would guess that, unless you were presented a choice of desktops when
you installed RH9, that you're using Bluecurve.  But this is only my
deduction from things I've read about RH9: I've not used RH since 7.3, so
am really in the dark in terms of hands-on experience with this distro
after 7.3.  Farnkly, I'm not even sure how you'd check whether you're
using Bluecurve.  But I know I've seen others onlist make comments about
RH9 and their use of, or familiarity with, it, so maybe they'll be able to
tell you whether you're using that desktop and/or how to tell.

If you created the partition in question after you installed RH9, then it
most likely will not be found in /etc/fstab (the "/" before "etc" is
important: the forward slash is Linux's way of indicating directories, and
in this case, that it is a top level directory).  What you would see there
would depend on your hard drive arrangement.  Let's take a simple case for
demonstration purposes.  Let's imagine you have a 120GB hard drive (HD
hereafter), and that you've put 4 partitions on it for all the stuff
you've installed there.  Let's say Win2K is on the first partition, RH9 is
on the second partition, your 97GB of data are on the third partition and
that you've made the fourth partition for swap.  The way Linux will refer
to these partitions, if they are all primary partitions, is as /dev/hda1
(Win2K), /dev/hda2 (RH9), /dev/hda3 (97GB data) and /dev/hda4 (swap).
The numbering changes slightly for extended/logical partitions, but I'll
not go into that here for purposes of simplification.  If there were an
entry in /etc/fstab for your 97GB data partition, it would look something
like this:
/dev/hda3  /home/data   vfat   defaults   0      1

This presumes you would have created the directory /home/data and would
have chosen, at some point and through some means, to make it the mount
point for your data partition.  The creation and choice of mount point are
sort of a subjective issue as I understand it - i.e., I don't know of any
standard for where a mount point for such a partition would be created, or
for how it would be named.  Perhaps others onlist do though.

Anyway, if you don't have a mount point for that partition on your RH
system, you will need to create one.  Then, you'll need to create an
/etc/fstab entry for it.  After that, you can mount it.  You can surely
create some sort of symlink desktop icon representing the partition
though, as I mentioned, I'm not exactly sure how you'd do this on your
system.  As far as creating a mount point and an /etc/fstab entry, I'd try
looking around the system and see if RH has some facility for doing this -
like maybe by detecting new partitions.  It may be able to sort of
automate it through the gui for you and save you some of the difficulty.
In any case, don't try to follow the /etc/fstab entry I've used above for
demonstration purposes since it will almost certainly be wrong for your
system.

Can others offer some help on this query?  I don't want to go on at too
great length since I don't always know what the heck I'm talkin' 'bout.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
