From: Heimo Claasen <hammer@revobild.net>
Subject: well written MBR
Date: 30 Jul 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307300727.h6U7RWZ3062571@www2.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

That was a typical newbie error: by following te distribution's (in
this case, Mandrake) "recommendation" with a new installation to write
the MBR straight on the first, primary disk/partition. Now, the - still
existing - DOS partition located there is not bootable any more.

How to repair that without a full re-install (of both the DOS and the
Linux partitions) ?

With the new (Linux) installation, none of the partitions set up earlier
have been changed; the Linux partitions have been re-formatted but not
that DOS partition, which is duely accessible from the newly installed
Linux (and mounted as /dos-c there). LiLo is used as boot loader.

The _Linux_ "fdisk" gives a funny message which I never saw before:
"Partition table entries are not in disk order". Right so, as it shows:

Device   Boot Start End     Block   Id  System       REM: Mounted:
---------------------------------------------------  -------
/dev/hda1  *   67    67      8032+  83  Linux         /boot
/dev/hda2      68  4868  38561197+   5  Extended      -.-
/dev/hda3       1    66    530113    6  FAT16         /dos-c
/dev/hda5      68   385   2554303   83  Linux         /
/dev/hda6     386   486    811251   82  Linux swap     (sic)
/dev/hda7     487  4868  35195548   83  Linux         /data

But what would be the effect of the ("advanced") command, "fix order of
partitions" ?!
(Don't expect enlightement from the "man"ual...)

Another REM: the original, earlier set-up had created the DOS primary
partition - the same that appears as "hda3" here - and one extended
partition comprising all the rest of the HD volume, and where the earlier
Linux had then been installed. None of these partitions had been changed
or resized.

The _DOS_ "fdisk", when booting with DOS from a floppy, doesn't see
anything; and couldn't either as the only one partition it would indicate
would be the DOS/FAT16 areas on the disk - for which it cannot find the
partition table any more.

Finally, using "cfdisk" from the Linux install results in:
" FATAL ERROR: Bad primary partition 1: Partition ends after end-of-disk.
" Press any key to exit cfdisk."
Which I did gladly.(*)

In the Linux "/boot" partition exists indeed a file "boot.0300" -
according to one _not_ very reliable book,[**]

" LILO saves backup copies of your original boot record in the files
" /boot/boot.0300 (for IDE drives) ... These files contain the MBR of
" the drive before LILO was installed. You can use the _dd_ command to
" replace the boot record on the drive with this backup copy.
" For example:
"    dd if=/boot/boot.0300 of=/dev/hada bs=446 count=1
" copies the first 446 bytes of the files /boot/boot.0300 to /dev/hda.
" Even though the files are 512 bytes in size, only the first 446 bytes
" should be copied back to the MBR."

I'm somewhat hesitant to employ this straight awa, even if the earlier
Linux install (Debian) used LiLo too, and its LiLo configuration was at
least similar (I think even, identical) to the new (Mdk) "Lilo.conf".

On the other hand, re-installing DOS and its MBR would definitely
destroy the (otherwise well running) new install altogether.

The problem is less one of data loss, as all data files have been
backed up, but one of work time - doing the _whole_ install over from
scratch would certainly need one full, if not two work days (lots of
fine tuning done in both systems.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-07-29
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

--------------
(*) I cannot let be to quote fully from "man fdisk" (thus, the
Linux "fdisk"):

       There  are  several  *fdisk programs around.  Each has its
       problems and strengths.  Try them  in  the  order  cfdisk,
       fdisk,  sfdisk.   (Indeed,  cfdisk  is a beautiful program
       that has strict requirements on the  partition  tables  it
       accepts,  and  produces high quality partition tables. Use
       it if you can.  fdisk is a buggy program that  does  fuzzy
       things - usually it happens to produce reasonable results.
       Its single advantage is that it has some support  for  BSD
       disk  labels and other non-DOS partition tables.  Avoid it
       if you can.  sfdisk is for hackers only - the user  inter-
       face  is  terrible,  but it is more correct than fdisk and
       more powerful than both fdisk and  cfdisk.   Moreover,  it
       can be used noninteractively.)

This is proposterous.  Not only seen in view of the result from "cfdisk"
quoted above. Completely non-descriptive and ideological terms like
"beautiful", "high quality", and the sure inevitable "powerful" are a
spit in your face.  Not a word either on the fundamental DOS-"fdisk":
Some Linucen wouldn't even install if you hadn't DOS-partitioned the HD
first.

(**) "Running Linux," O'Reilly. This book, despite of the reputation it is
often given, is (a) highly useless for beginners - terminology is used
in a sloppy way (make a test, try to find what is "file type", a term
employed throughout the book) - and (b) hopeless for trouble-shooting:
if you don't know the solution in the first hand, you wouldn't find any
answer there. Take this MBR dilemma - "distros" propose (in an
inconsistent way) different placements, but thers's no whatsoever hint
in that book to what the consequences are, not to speak of how to repair
them; except for the short passage quoted.

-hc
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
