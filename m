From: joy <gracecott@sancharnet.in>
Subject: Re: 2.6.0 kernel compile overview
Date: Mon, 05 Jan 2004 22:51:23 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FF99D13.1050403@sancharnet.in>
References: <Pine.LNX.4.58.0401050850220.3345@localhost>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:

>A precocious 16 year old "Linux guru" friend (I taught him the basics
>about a year ago, now he knows about 3x more than I do) recently set up a
>new laptop for me with Gentoo and the 2.6.x kernel.  Despite the obvious
>genius displayed in this endeavor, he forgot (as adolescents are prone to
>do) to implement some fairly basic features in the kernel: namely the
>system speaker and wireless networking.  This leaves me the task of
>getting those things operational myself, which means recompiling the
>kernel.  I've not done much kernel compiling - once or twice, if memory
>serves - and all documentation I have refers to 2.4.x kernels and earlier.  
>I just did a quick 'net search and couldn't find anything specific on
>2.6.x kernel compiling.  At the same time, I have understood from the
>friend that 2.6.x kernel compiling differs somewhat.  So, can anyone
>direct me to any sources on 2.6.x kernel compiling?  I have an overall
>grasp of the earlier kernel compiling process, so I'm mainly interested in
>how compiling the newer kernel differs.  I generated a .config file for
>the current kernel using instructions provided by the friend in question,
>and of course have the kernel source on the system.  So, pointers to any
>overviewish documentation specific to 2.6.x kernel compiling would be
>appreciated, as would general remarks on how compiling differs with the
>2.6.x kernel from compiling earlier kernels.
>
>Thanks, James
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>
There isn't much of a difference actually, the only major difference (to 
us end users ;)
is that the compilation looks cleaner.
also, now there are fewer steps to follow (thank god)
1. make mrproper
2. make menuconfig
    here you can load the config file created and add the rest of the 
necessary options.
3. make
    this takes care of even generating the bzImage (hooray!)
4. make modules
5. make modules_install (which I had forgotten and asked on this list today)
so all you have to do is copy the image to your /boot, run lilo (after 
editing lilo.conf, obviously) and you are done!


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
