From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Locate Vs Find
Date: Sun, 28 Nov 2004 15:13:16 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0411281438060.16146-100000@hestia>
References: <41A647E2.1080302@tlinx.org>
Reply-To: Linux Newbie <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41A647E2.1080302@tlinx.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

Sunday, November 28 14:38:06

> On Mon, 2004-11-22 at 22:22, Ankit Jain wrote:
>
> Which is more efficient? /if both perform the same
> work and are not different then why shoudl we have 2 ?

That's not true, they do not preform the same task.
`find' doesn't find files, it's just a side effect of
the program. `Find's' real occupation is to evaluate files.
a.k.a. to preform tests on them. For example:
find / -atime +1 -fstype ext2 -name core -exec rm '{}' \;
find . \( -fstype nfs -prune\) -o \
       \( -type d -a -exec chmod 771 '{}' \; \) -o \
       \( -name "*.BAK" -a -exec /bin/rm '{}' \; \) -o \
       \( -name "*.sh" -a -exec chmod 755 '{}' \; \)
find /home -xdev -size +500k -ls > blabla
find /usr/include -xtype f -exec grep foobar \ 
     /dev/null '{}' \;
Find recurses down a structure and preforms a stat() system call for each
regular file it encounters.. I advise you to read man page or stat(),
lstat(), readdir and the dirent.h header file..

`Locate's' only purpose is to find files. It builds a database of all
files which then later on can be searched..

There are no. examples of c code directory handeling available in the
snippits section at rdrs.net or more `find' examples in 
http://www.rdrs.net/docs/src/reminder.txt

Greetzz.. 

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
