From: Ray Olszewski <ray@comarre.com>
Subject: Re: debian install question
Date: Wed, 25 Sep 2002 16:13:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020925160839.02627890@celine>
References: <3F27D9A0.6E3B4641.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F27D9A0.6E3B4641.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: neil t <wa4chq@netscape.net>, linux-newbie@vger.kernel.org

At 06:21 PM 9/25/02 -0400, neil t wrote:
>Greetings all-
>First....tnx for the help I have been receiving from the group.
>ok...
>I have an extra HD that I have slaved off of my
>cdrom....I went ahead and have partioned it with
>a linux primary and a swap file, then I formatted it.
>I would like to give
>Debian a try and want to install it on my slaved drive,
>HDD.  A friend has burned the disks for me and is mailing
>them to me.  I don't remember if during my installation of
>RH7.2, if I was asked which drive to install too...so my question
>is: How do I make sure Debian is being installed to the correct
>drive and not overwriting my RedHat (on HDA)?


During the installation process, you will be given the option to select the 
root (/) partition for your system -- including using fdisk or cfdisk (I 
forget which) to partition a drive and the usual tools to put filesystems 
on partitions -- as well as to select (and if necessary create) other 
partitions that you can mount where you will (the Debian installer makes 
suggestions here but does not mandate mount points).

What you will need to be careful about is not the root partition but LILO. 
Either you'll need to bypass the part of a Debian install that installed a 
new bootsector, or you'll have to modify /etc/lilo.conf after installation 
is complete to give you the option of booting into either RH or Debian.

This is just a rough outline to assure you that Debian introduces no 
*special* problems -- you still have to take care of the usual odds and 
ends associated with any multiboot system.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
