From: "J." <mailing-lists@xs4all.nl>
Subject: Re: The du and ls -l
Date: Sun, 19 Dec 2004 15:24:44 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412191520030.21477-100000@hestia>
References: <1103340281.3800.15.camel@myLinux>
Reply-To: Linux Newbie <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1103340281.3800.15.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

On Sat, 18 Dec 2004, Jagadeesh Bhaskar P wrote:

> Hi,
> 	In some cases, as have been mentioned in Advanced Programming in Unix
> Environment, by Richard Stevens, files with holes report different sizes
> with du -s and ls -l. But how does the reporting of du and ls -l
> actually differ? What is the fundamental difference between them??

<QUOTE gnu-bob>
The fundemental difference is: 
 Inbetween disk space used, and the actual file size.

The 'ls -l' lists out the size of the file.  That is the number of
bytes that you would read if you opened the file and read it from
beginning to end.  This should match what you see with 'wc -c' as
well.  This is useful when talking about size of files.

The 'du' listing is different.  It lists out how much disk space you
have used.  It does not look at sizes of individual files.  It instead
asks the filesystem how many disk blocks a file is consuming.
Therefore du is useful when talking about disk space used.

Why are they different?  Because no one has ever designed a filesystem
that is 100% efficient.  Filesystems work in blocks and fragments of
blocks.  Today fragments are usually 512 bytes.  The numbers here are
not important and different filesystems do this differently.  But the
fact that files cannot be stored exactly at their file size but must
consume the entire fragment is the important concept.  The minimum
file non-zero file size is 1 byte but the file still consumes one
block which is 512 bytes and the storage ratio is inefficient.  But a
8192 size file will consume 16 512 byte fragments and be perfectly
efficient.  On average over all of the files on your disk things work
pretty well.

Note that you specifically asked du to print out the result converted
to bytes.  The natural units for du are the number of 512 byte
blocks.  But this is not natural for most humans and so there are
conversion options such as -b to bytes and -h and -H to larger units.

Also consumed but not reported are the associated inode blocks which
hold the ownership and mode information of the file.  So this as well
contributes to the overhead needed when making a filesystem on a disk.
</QUOTE gnu-bob>

> Hoping for a help

np m8

> TIA
> -- 
> With regards,
> 
> Jagadeesh Bhaskar P

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
