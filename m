From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sharing drives.
Date: Wed, 02 Oct 2002 10:38:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021002102745.02d0a0e0@celine>
References: <002601c26a36$73b95820$ef32f7c2@gcb>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002601c26a36$73b95820$ef32f7c2@gcb>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

At 06:08 PM 10/2/02 +0100, geoff wrote:
>Many thanks to Chuck and Ray for interesting replies.
>
>I am reminded that Debian Woody uses ext2, but SuSE 8.0 uses reiserfs.

There is no requirement that all filesystems used by a kernel be the same 
type; the ability to combine ext2 and iso9660 (CD-ROM) filesystems is the 
most familiar example of this flexibility. I doubt Woody's stock kernel 
contains support for reiserfs, but I believe a custom kernel can add it in 
(Debian kernels are quite standard in most respects). I bet that the SuSE 
kernel already supports ext2 as well as reiserfs (but if not, once again, a 
custom kernel could fix this).

>I wonder if pushed to an extreme, could one kernel  work with  two
>(simultaneous/combined) distros, chosing the best bits of each :-)

Well ... Lawson has for years talked here about his "SlackHat" system, 
combining the part he likes of Slackware with the parts he likes of Red Hat 
(I prefer "he likes" to "best bits" because "best" is not well defined). 
And my Debian systems include some packages not distributed through the 
Debian packaging system (though they come from the creators directly, not 
via some other distro).

Except when a particular distro is missing a particular package, I think 
this "best bits" approach create more work then benefit for the everyday 
Linux user. A principal strength of ANY modern Linux distro is its 
packaging system, which does a lot of the work for you of handling 
dependencies, simplifying security (and other) upgrades, and providing a 
coherent framework for the boot/init process, filesystem organization, 
application configuration, and the like.

For the most common apps, the distros don't really differ all that much 
anyway. For highly specialized apps, you will need from time to time to go 
outside your distro's packaging system. (This is especially true for 
non-rpm distros like Slackware and Debian, since some developers package 
their stuff only as RPMs.)


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
