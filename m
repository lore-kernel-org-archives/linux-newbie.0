From: "James Miller (office)" <jamtat@mailsnare.net>
Subject: Re: /cdrom fails to unmount
Date: Thu, 24 Jul 2003 10:55:15 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0307241035410.2445@veclin.office>
References: <200307240457.h6O4v5qR009233@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307240457.h6O4v5qR009233@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Thu, 24 Jul 2003, Heimo Claasen wrote:
>
> A good illustration is the behaviour of the Midnight Commander: you
> start it somwhere on some branch on the directory tree, then you
> navigate _inside_ the prog to _look_ at some other branch/files, and if
> you exit MC then your're quite somewhere else from where you started.
>
> Maybe that's natural for everyone who grew up with *nixish mother's
> milk; for all others, and certainly for mewbies like me, it's a bit more
> diffcult to understand why "The System" would change your current/working
> directory with, say, just reading-in data for an application, from a data
> file which is situated quite somewhere else.
>
You have a somewhat convoluted English style, Heimo.  Let me see if I
understand what you're saying (as I mentioned earlier, I've been
confronted with this "device busy" message in the past and have never
definitively figured out its dynamics).  I think what you're saying is
this: if the user mounts the CDROM, then navigates into the
/whatever/cdrom directory using MC, then exits MC (F10), the OS will
continue to "think" the cdrom is being accessed.  Is that right?  So,
while there's no process running that's actively trying to access the
cdrom (not one that the user can find, anyway), the computer/OS acts as
though there is such a process tying up the cdrom, and therefore won't
allow the user to umount/eject the media.  Is this another way of saying
what you were trying to communicate, Heimo?  I'd really like to get this
situation figgered out once and for all, since it's pretty irritating to
be denied the possibility of unmounting and ejecting the media sometimes.
I'm hoping I won't have to make it a big research project or anything -
though that's what I said when I first migrated to Linux (famous last
words).

Thanks, James

PS Additional clarifications: it was nice to learn about umount -l - that
looks like it could be pretty helpful, if one is using a new enough
kernel.  On fuser /path-to/cdrom (a way to list processes trying to
access the specified filesystem): is this one limited to newer kernel
versions too?  I sometimes use a 2.2.x kernel system, and even a 2.0.x
kernel system, so it would be nice to know if this command will work on
those.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
