From: "Ray Olszewski" <fido@tcob1.net>
Subject: Re: partition resides on first track
Date: Wednesday, 05 Feb 2003 08:35:00 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_030205_083500__92977bb6@racenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All

At 09:46 AM 2/5/03 +0100, Andrew Langdon-Davies wrote:
>Above is returned by fdisk (more or less; I am at a different machine and 
>can't remember exactly). Presumably, this is why trying to install 
>Mandrake 9.0 failed repeatedly at the bootloader stage (with no way out of 
>the installation program) and eventually trashed the partition table (now 
>rebuilt).
>Q1: Am I right?
>Q2: Can I correct the situation? (With parted, e.g.)
>Q3: Otherwise, how else can I install Mandrake without losing the quaint 
>little Win98 system my girlfriend needs for work?
>The present setup is:
>first hd 2.4 G, one Win 98 partition, could be resized to 1 G to make room 
>for Mandrake;
>second hd 600M, probably for additional Win progs or storage.

Fragmentary error reports with half-remembered ("more or less") error 
messages are very hard to interpret. I suggest you try the install again, 
and this time write down exactly what fdisk says, as well as what fdisk is 
trying to do when it says it. Certainly in principle, setting up a 
multi-boot system with Windows and Linux is possible.

fdisk can't make partitions, though, on a disk where the existing 
partitions fill all the space, so you will have to make room  (resize the 
Win98 partition as you say) before running fdisk. This also makes me 
suspect you've left out important details, if you did manage to get as far 
as a bootloader install before failing.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------------
-
-


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
