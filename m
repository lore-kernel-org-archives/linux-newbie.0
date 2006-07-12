From: James Miller <jamtat@mailsnare.net>
Subject: transfer OS from failing HD questions
Date: Wed, 12 Jul 2006 12:38:59 -0500 (CDT)
Message-ID: <Pine.LNX.4.64.0607121200000.5348@localhost.localdomain>
References: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000501c6a1f0$a79153a0$6900a8c0@ANCHORMAN>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Here's a question I see as alot more newbie-oriented than memory 
functions, (m)allocs and the like. I recently had strong indications that 
my HD was failing in my Ubuntu (Debian variant: or is Debian now an Ubuntu 
variant?) machine. Pondering over what to do about saving data from that 
machine and having to do the minimal amount of reinstallation, I came up 
with the following, seemingly quite precarious plan: I would get a new HD, 
do a fresh install of Ubuntu to it, then stick the old drive in as slave, 
boot from a rescue CD, and copy the entire contents of the old drive to 
the new one, replacing any files on the new one that have the same name as 
those on the old one. Both the new install and the installation on the old 
HD were the same Ubuntu release, btw. Yes, it looks like a real 
kludge--not pretty, and maybe not even effective. It took a really long 
time. The new Ubuntu install was over in about 20 minutes--the smoothest 
part of the undertaking. Transferring the 70 GB of data from the old drive 
to the new one took many hours. I was getting pretty poor drive access 
rates for one thing, maybe due to the fact that the old drive is on its 
way out. Then, I would occasionally get I/O errors on the old drive where 
a file couldn't transfer. The more of those I got, the more sure I was 
that this approach wouldn't work in the end. But when I finally finished 
copying over everything, guess what? The system booted right up. It looked 
and acted just like the system did when the old HD was functioning 
properly. I have yet to run into any system glitches, but I've only been 
running it for a couple of days now. On to my questions.

1) What sort of problems might I expect to crop up as I continue to use 
this system? Doubtless some binaries or other types of system files were 
among the ones that wouldn't transfer because of I/O errors. 2) What other 
approach might I have taken to essentially preserve the existing 
installation (both configuration and data) on a new HD?

Input will be appreciated.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
