From: Ray Olszewski <ray@comarre.com>
Subject: Re: No Boot Problem
Date: Thu, 25 Jul 2002 20:53:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020725203925.022778d0@celine>
References: <3D406BBB.E208E07B@gelm.net>
 <3D36DDA3.FA0F073C@gmx.net>
 <02072506225706.04469@unix.pa3gcu>
 <3D406BBB.E208E07B@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207252138.32376.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, linux-newbie@vger.kernel.org

As you can see below, your message came to the list in soewhat garbled form 
-- with sentence fragments and bits that look like they are out of place. 
So please forgive me if I have misinterpreted what you (intended to) say.

At 09:38 PM 7/25/02 -0400, Frank Roberts - SOTL wrote:
>partitionsucceededI hope you nice people can explain to me how to get out of
>this situation.
>
>I have a dual boot box - MS Windows 98 on hda and Linux RH6.3 on hdb.
>
>Having problems with the Windows side (nothing new here) I decided to remove
>both hda and hdb and install a third hard drive (hd3) and the use the
>original restore disk to install windows on hd3.
>
>First I had problems getting the restore disk to be acknowledged but on about
>the 4th boot attempt I .
>
>The first screen up said that the disk drive was unreadable and that i would
>have to use FDisk to remove all partions. This I did and then rebooted the
>box.
>
>The box then refused to boot.

If I understand you correctly, up to this point, all your problems are with 
Windows, not with Linux.

>I then restored the box to its original configuration by reinstalling hda and
>hdb and removing hd3. The systen still refused to boot.

At this point, a description of the failure mode would belp more than 
"refused to boot".  Did LILO even begin to run? Did it display any messages 
on teh screen?

>I stuck Tomsrtd in and boot the box into Toms followed by a normal shut down.
>
>I then stuck RH 7.3 install in and started an upgrade to see what would
>happen. The box finally booted into RH after 5 or 6 tries.

This sounds more and more like a hardware failure, perhaps a mobo problem. 
The system as you described it has now had problems with a Windows boot 
floppy, some hard disk bootloader (I surmise lilo), and syslinux (I believe 
RH boot floppies use syslinux).

>I shut the upgrade down before the box upgrades keeping the original
>configuration - hopefully.
>
>Next I attempted an install of RH to see what the  table looked liked. Here I
>received an error message that the partition table for hda the MS Windows
>side was not readable. At that point I shut the box down keeping the original
>configuration hopefully.
>
>I again tried to boot the box normally. No Go.
>
>Hopefully somebody has some ideas in how to boot this box.

Boot it into what? You say it booted with Tomsrtbt. It's been awhile since 
I used that, but doesn't it include a kernel with ide support and tools 
like (Linux) fdisk? What do those tools tell you about the disks and their 
partitions?

The difficulties you describe simply do not sound like Linux problems; 
instead, they sound like hardware problems of some sort. A more complete 
report of the details of the various failures (especially the LILO failure) 
, and a description of the underlying hardware, might elicit more helpful 
responses.


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
