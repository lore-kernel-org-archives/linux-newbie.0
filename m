From: Ray Olszewski <ray@comarre.com>
Subject: Re: Corrupt .deb file.
Date: Tue, 10 Sep 2002 08:31:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020910082303.0229d700@celine>
References: <000f01c258a5$b0ec00a0$a830f7c2@gcb>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000f01c258a5$b0ec00a0$a830f7c2@gcb>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

"Possible"? Yes. *Likely*? No. Especially not such a core file as libc6, 
the one library that nearly every application program uses.

OTOH, the current version of this package is 2.2.5-14 (in Sid, which I use 
here, and probably in Woody too). And you don't way how either your CD or 
your DVD was made. Occasionally, the Debian online pachage system contains 
a bad backage. I've never seen this persist for more than a day ... but if 
you or someone else constructed an .iso at just the wrong time, you could 
have a bad package or two. Especially if you did it *before* Woody became 
Debian-stable (back when it was Debian-testing).

Assuming you have the target system set up with a connection to the 
Internet, you might do better to download the Debian install floppies and 
do an online installation (the installer on the CDs may even support this 
... I haven't used Debian CDs is a very long time so don't really know). 
This would get you the current versions of all the packages, including all 
security updates.

At 09:39 AM 9/10/02 +0100, geoff wrote:
>I have two separate copies of the Debian GNU/Linux "Woody" 3.0 distro.
>One is on CDROMs, the other is on a DVD-ROM.
>
>They both fail to install when the installation reaches
>libc6_2.2.5-6_i386.deb
>which is stated to be corrupt.
>
>Is it possible that a corrupt file is being distributed,  or must I look
>closer to home ?
>
>My other distros (Mandrake,  Red Hat, SuSE 8.0  and FreeBSD4.4 Unix) all
>install OK
>including the SuSE DVD version.
>
>Anyone else had a similar experience ?
>I particularly want to  test drive Debian and the .deb installation system.

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
