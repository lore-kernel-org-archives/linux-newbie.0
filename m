From: Heimo Claasen <hammer@revobild.net>
Subject: zipdisk file problems
Date: 15 Dec 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212150239.gBF2d2iG023078@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On a Zipdisk-ette, where directories and files had been changed and
shoveled around - both with running DOS and Linux -, some files (jpg.s)
suddenly became inaccessible with a Linux pixel application (in case,
good old XView: it hangs "hard", not only X but the whole machine is
frozen, only way out it with the ugly red buton).

Though from DOS there is no whatsoever access problem, the files
themselves appear integer. And under Linux, the trouble does not seem
to be specific with one distinct file - some re-arrangement of files in
that specific directory would (eventually but not necessarily) make
reappear that total hung-up with another file.

The (internal, SCSI) Zipdrive is mounted as (filesystem-)"type msdos" in
"fstab".

I suspect some pecularities of the DOS/FAT16 filetables.  Straight xcopy
to HD, then xcopy back the entire zipdisk (under DOS) on a new or hard
formatted zipdisk does away with the problem. With erasing files or
directories, however, DOS does not really "wipe" an entry in the file
allocation table but merely sets a marker (8-bit) byte for "deleted"
files. Could it be this which irritates the Linux application ?

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-12-14
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
