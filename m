From: Stephen Samuel <samnospam@bcgreen.com>
Subject: Re: Linux Equivilant of Ghost?
Date: Thu, 27 Oct 2005 20:01:02 -0700
Message-ID: <4361946E.7000905@bcgreen.com>
References: <faf407640510231359t46ac5b92uf4e46ec099178132@mail.gmail.com> <200510232323.22675.eric@cisu.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200510232323.22675.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: eric@cisu.net
Cc: Michael Medwid <mmedwid@gmail.com>, linux-newbie@vger.kernel.org

You can also do the process the other way 'round.
 From the machine doing the install:

shh pickup@sourcebox  dd if=/hold/rootimage  bs=40K | dd of=/dev/hda1 bs=40k

You really want to make sure that the partition used to create
rootimage is smaller than the partition on any of your destination
machines.  Once you've DD'd the data over, then
    resize2fs /dev/hda1
(presuming that you're using ext[23]fs for the OS. Other Filesystems
may have their own utility) resize2fs will expand an ext2 or ext3 fs to
fit whatever partition it is currently in.



Eric Bambach wrote:

>On Sunday 23 October 2005 03:59 pm, Michael Medwid wrote:
>  
>
>>Is there a method to quickly replicate a bunch of Linux workstations
>>to a desired image like you can do with Symantec's Ghost product on
>>Windows?   For example suppose you have a classroom with 15 PCs and
>>you want them all to have the same image.  If there is such a beast -
>>does it support multicast to be able to image several machines on a
>>LAN all at once?
>>
>>Thanks.
>>
>>Michael
>>-
>>    
>>
>
>In a pinch there is alwatys dd :). This is especially true if they have 
>identical hard drive sizes and partition layouts
>
>dd if=(Image source) of=(image destination) bs=512
>
>where image source will be an entire hard drive like the primary 
>master /dev/hda and dest. will be /dev/hdb. ALso you can do this over the 
>network!
>
>Boot the image destination from a boot cd, (I like gentoo cause you can get 
>SSHD up with 1 command)
>
>On the image master
>
>dd if=/dev/hda bs=512 | ssh root@imagedestination dd of=/dev/hda
>
>This will block copy the hard drive on the source (/dev/hda) over the network 
>onto the destination hard drive (/dev/hda).
>
>Ugly, but it could hold you over till you get ghost up and going and its quite 
>simple.
>
>
>  
>


-- 
Stephen Samuel +1(604)876-0426             samnospam@bcgreen.com
		   http://www.bcgreen.com/
   Powerful committed communication. Transformation touching
     the jewel within each person and bringing it to light.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
