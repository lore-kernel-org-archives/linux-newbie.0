From: Chris <smarta55@comcast.net>
Subject: Re: How do I see all my partitions?
Date: Mon, 23 Dec 2002 20:43:58 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.0.20021223204021.00b61df8@mail.comcast.net>
References: <5.1.0.14.0.20021222212347.00bb77e8@mail.comcast.net>
 <5.1.0.14.1.20021218091629.02111760@celine>
 <20021218104722.GA3850@neon.pearbough.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021222185608.020b29b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Yep, I meant "not" not "now."  It was a tpyo.

As far as compiling a kernel goes, I don't believe I'm ready for that.  I'm 
still at the
point of staring at the PC for 20 minutes, and banging away on the keyboard 
for another
20 minutes, trying to accomplish something, before giving up and looking in 
my "dummies" book.

Thanks for your help,
Chris

At 07:04 PM Sunday 12/22/2002, Ray Olszewski wrote:
>At 09:26 PM 12/22/02 -0500, Chris wrote:
>>OK...now that I can see all my partitions, how do I mount an NTFS
>>partition?
>>When I try, I receive the error "fs now supported by kernel."
>
>I suspect it says "not" rather than "now". (Sorry to seem picky, and the 
>mistake is easy to spot here, but in troubleshooting, details matter, and 
>a seemling harmless mistake in reporting error messages can lead to the 
>wrong diagnosis.)
>
>And I'm assuming your try consists of a command like "mount -t ntfs 
>/dev/hdXX /mnt/some_mount_point", with suitable choices for XX and 
>some_mount_point .If not, plase tell us the exact command you enter and 
>the exact error you get.
>
>>I'm running Red Hat 8.0 (sorry, no idea what the kernel version is - how
>>do I find this info?).
>
>"uname -a" normally reports it.
>
>>Can the kernel be patched to support NTFS?
>
>Probably ... though it does depend on the kernel version, RH8 is unlikely 
>to use an old kernel by default. Recent kernels support read-only access 
>to NTFS filesystems. If yours has the ntfs.o moule compiled, you can add 
>it with "insmod ntfs" or (better) "modprobe ntfs". If it doesn't come with 
>that module, you'll need to compile or get a kernel that does have it 
>(either the module or actuallt compiled into the kernel).
>
>
>--
>-------------------------------------------"Never tell me the odds!"--------
>Ray Olszewski                                   -- Han Solo
>Palo Alto, California, USA                        ray@comarre.com
>-------------------------------------------------------------------------------
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
