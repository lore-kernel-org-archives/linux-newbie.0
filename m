From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to hide . folders
Date: Fri, 06 Aug 2004 08:55:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040806083739.01fcb418@celine>
References: <BD385D76.3EE4%eatley@wow-corp.com>
 <BD385D76.3EE4%eatley@wow-corp.com> <Pine.LNX.4.58.0408060856370.23328@ppg_penguin.kenmoffat.uk
 linux.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0408060856370.23328@ppg_penguin.kenmoffat.uk
 linux.net>
References: <BD385D76.3EE4%eatley@wow-corp.com>
 <BD385D76.3EE4%eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie <linux-newbie@vger.kernel.org>

At 09:13 AM 8/6/2004 +0100, Ken Moffat wrote:
>On Thu, 5 Aug 2004, Eve Atley wrote:
>
> >
> > Ken, thanks for the reply.
> >
> > You're correct... This is SSH via a graphical client. They are 
> non-technical
> > folks who need something simple. I'm just trying to protect any system 
> files
> > from accidental deletion.

It might be worth your while to tell us the "graphical client" involved, 
and (of more use) what server is running on the Linux end for it to connect 
to. It sounds like you are using ssh to tunnel something, and the unnamed 
something may have some abilities to control what users see. ssh by itself 
(that is, used to initiate a console session) does not have that ability.

> >
> > Is my question better stated, then, as how to prevent users from deleting
> > any of the directories they encounter? If that's the correct question, then
> > is my solution to set a read-only on any folders that I don't wish deleted?
> >
>  I'm not an expert on this, but a quick test suggests users need write
>permission on the directory to be able to write/delete the contents.

Ken is correct as far as he goes, but I don't know if he's gone far enough 
to answer your question.

Remember that in Linux or Unix (at least with native-mode filesystems), 
every directory and file has 3 sets of permissions -- for the 
directory/file's owner, its group, and "everybody". Here, you're concerned 
about either the second or third set ... from what you've written, I'm not 
sure which.

The directory's actual owner will almost surely want to have rwx 
permissions. But the directory's group and "everybody" modes can be more 
restrictive. How restrictive depends on details you have not told us about 
your setup.

For example, if you want these users to be able to cd to the directories in 
question, list their contents, and run programs and scripts located in 
them, then the users need execute (x) access to these directories. Read 
access (r) by itself will not do. The files and subdirectories within these 
directories should be, for those users, either read-only (r--) or 
read-execute (r-x), as appropriate. Whether these settings apply to the 
group permissions or the everybody permissions depends on details that 
either you have not provided or I missed.

>  For genuine system directories, users should already be unable to
>delete them (hint: don't test this on the real directories just in
>case!).  For your new data directories, maybe some of the data can
>conveniently live in read-only directories.  Beyond that, frequent
>backups (search for backing up with rsync) are good.
>
> > > something : system directories show up if you go too far up the
> > > hierarchy, but permissions should prevent you writing in them.
> >
> > Is it possible to keep users from proceeding up further in the 
> hierarchy, by
> > chance?
> >
> > - Eve
> >
> >
>
>  I don't think so.  Normally, everyone can read the top-level
>directories except lost+found and they certainly need access to /tmp,

Right. Your only hope here is that the specific "graphical client" your 
naive users connect through has some capability to help you.

I don't know a way to prevent any user from seeing the very top level of 
your filesystem hierarchy (the contents of /). And your system will act 
very strangely if /tmp is not mode 777, as Ken says. Beyond that ... other 
top-level directories are usually mode 755, and need to be so users can run 
the programs and access the other files (e.g., program configuration files) 
in them.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
