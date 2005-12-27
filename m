From: Ray Olszewski <ray@comarre.com>
Subject: Re: usb  sd cardreader
Date: Tue, 27 Dec 2005 10:57:01 -0800
Message-ID: <43B18E7D.6020504@comarre.com>
References: <43ADB929.7010206@nycap.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43ADB929.7010206@nycap.rr.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I waited to see if someone else could give you more direct help. But I 
didn't see anything on the list, so ...

My best guess is that you are accessing the card itself instead of the 
filesystem on it (or even, possibly, the reader tself rather than the 
card in it ... depends a bit on the reader, and I don't know the Lexar 
you're using). See if trying to mount /dev/sdb1 (or possibly /dev/sdb2 
or /dev/sdb3  or /dev/sdb4) gives you better success. If you try these, 
also try leaving off the -t specification, or try using "-t vfat", the 
filesystem usually on SD cards I am familiar with. (devusbfs is not a 
filesystem type for data partitions.)

Also, the "fhash memory howto" ... at least the one I found ... focuses 
on memory sticks, not card readers. Search on "linux card reader howto" 
to find some other discussion more directly applicable to card readers 
(though they are similar to memory sticks).

As to what device is what ... your best bet is to scan the scsi bus 
rahter than guessing. I do it here with cdrecord (cdrecord --scanbus), 
but if you don't have it handy, I think there is also a utility called 
sg_scan, or something close to that, that you can use.

Finally, when you see ...

 > when i go into /media/lexar and do a ls command i get:
 > 001 002 003 devices drivers

... what are you actually seeing? In an e-mail presentation, it is hard 
to tell if these entries are files, directories, or something else. For 
example, can you cd into any of these things, and if you do, what do you 
see there? (My guess is you cannot, that they are kin to hard disk 
partitions, but I don't really know.)

PS. If you post again, please mention which kernel you mean by "the" 2.4 
kernel, and whether it is the stock Debian image or one you compiled 
yourself.

bob krasko wrote:
> 
> i am setting up debian sarge with the 2.4 kernel.
> 
> my computer has a dvd burner(dev/cdrom, ls-120 drive (dev/sda), and a 
> floppy. all of which i finally set up.
> 
> the usb reader i want to use is a lexar jumpdrive trio, (the sandisk 
> readers are next)
> 
> i have tried many things and have followed the flash memory how to in 
> detail.(as well as many hours of other things from google)
> 
> when trying to get the usb reader to set up, i added the following to 
> fstab:
> next line under proc:
> none    /proc/bus/usb    usbdevfs    defaults    0    0
> 
> and the last line added under my ls 120 drive (dev/sda) is
> 
> /dev/sdb    /media/lexar    usbdevfs    rw,user,noauto,    0    0
> 
>     
> the command mount -t usbfs /dev/sdb /media/lexar mounts the device to 
> the media directory in lexar.
> 
> when i go into /media/lexar and do a ls command i get:
> 001 002 003 devices drivers
> 
> instead of reading the files that i put on the sd card and carried over 
> from my win 2000 machine. (i put a wav file, an mp3, txt, etc just to 
> see how linux would read the various files.
> 
> it appears that i have come to the end of my wire and really would 
> appreciate some help.
> 
> the how to indicates that my device is a scsi, and my ls 120 shows up as 
> the first scsi device, making the next device sdb, right ???
> 
> tia

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
