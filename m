From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: tar for "full" floppy backup?
Date: Fri, 6 Dec 2002 17:26:05 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212061725310.1504-100000@athame.gmpexpress.net>
References: <200212062144.OAA17052@cu.imt.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212062144.OAA17052@cu.imt.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

maybe tar cvbkf /dev ... will work.

Jude <dashielljt(at)gmpexpress-dot-net>

On Fri, 6 Dec 2002, Jerry James Haumberger wrote:

> Hello everyone --
>
> An old Slackware 3.0 manual suggests the following command with
> tar for a full backup onto 3.5" floppy disks:
>
> tar cvfbk /dev/fd0 1440 4 /
>
> I've read that the "k" option is supposed to cause tar to prompt
> for adding multiple disks as the archive exceeds the size of each
> floppy disk, but I receive errors, and the backup stalls.
>
> Does anyone know of a one-line command string for using tar
> to backup all that's necessary (I realize that *everything*
> doesn't have to be backed up, such as empty directories, etc.)?
>
> And what would be the correct command using tar to restore this
> backup?
>
> Can the multiple floppy disk archive be gzipped during the tar
> archive process -- or would this make it impossible to restore
> the archive later?
>
> Am I using the wrong utility to attempt floppy disk backups?
>
> I only have about 9 MBs of material (from BasicLinux) to
> back up and am using a full version of tar from Slackware 3.5,
> and I'm not working with a network here.
>
> Please excuse my ignorance, and thanks for any suggestions!
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
