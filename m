From: Ray Olszewski <ray@comarre.com>
Subject: Re: How do I see all my partitions?
Date: Sun, 22 Dec 2002 19:04:13 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021222185608.020b29b0@celine>
References: <5.1.0.14.1.20021218091629.02111760@celine>
 <20021218104722.GA3850@neon.pearbough.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
 <5.1.0.14.0.20021217222210.00b5fdd8@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20021222212347.00bb77e8@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:26 PM 12/22/02 -0500, Chris wrote:
>OK...now that I can see all my partitions, how do I mount an NTFS
>partition?
>When I try, I receive the error "fs now supported by kernel."

I suspect it says "not" rather than "now". (Sorry to seem picky, and the 
mistake is easy to spot here, but in troubleshooting, details matter, and a 
seemling harmless mistake in reporting error messages can lead to the wrong 
diagnosis.)

And I'm assuming your try consists of a command like "mount -t ntfs 
/dev/hdXX /mnt/some_mount_point", with suitable choices for XX and 
some_mount_point .If not, plase tell us the exact command you enter and the 
exact error you get.

>I'm running Red Hat 8.0 (sorry, no idea what the kernel version is - how
>do I find this info?).

"uname -a" normally reports it.

>Can the kernel be patched to support NTFS?

Probably ... though it does depend on the kernel version, RH8 is unlikely 
to use an old kernel by default. Recent kernels support read-only access to 
NTFS filesystems. If yours has the ntfs.o moule compiled, you can add it 
with "insmod ntfs" or (better) "modprobe ntfs". If it doesn't come with 
that module, you'll need to compile or get a kernel that does have it 
(either the module or actuallt compiled into the kernel).


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
