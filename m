From: Ray Olszewski <ray@comarre.com>
Subject: RE: Retrieving deleted files
Date: Wed, 07 Apr 2004 14:36:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040407141625.01f94748@celine>
References: <5.1.0.14.1.20040407132750.01efa2b0@celine> <GNEPLLCIIBHICCOGIAKPEEGLCJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPEEGLCJAA.eatley@wow-corp.com>
References: <5.1.0.14.1.20040407132750.01efa2b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Eve Atley <eatley@wow-corp.com>
Cc: linux-newbie@vger.kernel.org

At 05:06 PM 4/7/2004 -0400, Eve Atley wrote:

>Thanks so much for your help, Ray.
>
>I have tried the instructions at:
>http://recover.sourceforge.net/unix/
>(one of the first things I did try)
>...and I got a whole lot of garbage spit back to my screen; so much so, I
>had to quit.
>
>I am attempting to do something along these lines:
>
>         grep -a -B10000 -A0 "wowerpresumes" /dev/hdfb
>
>...and since I'm not sure what to put for B and A, I may be doing something
>wrong here. I don't recall how large the directory was 'before' things were
>deleted.

You do not need to know how large the directory was. This approach, as I 
read it (I've never actually used it myself), is limited to recovering text 
files. The trick is that you need to know something about the contents of 
some line of the file you want to recover. Then, you use grep to examine 
the raw partition (in this case, /dev/hdfb) as a single file (the -a switch 
tells grep to pretend the file is text), and it will turn up each instance 
of what you entered, reporting back  the  preceding "B" lines of text, the 
line itself, and "A" lines of following text.

Since you selected a very large value for B and 0 for A, you get a mess to 
the screen when you try this.

There is no general way to specify "right" values for A and B. You simply 
have to know something about the structure of the file. And since this 
approach will (I think) examine the filesystem linearly, a fragmented file 
will not be recoverable this way. Nor will a directory, which is really 
just a list of inode entries, which themselves can be scattered anywhere 
convenient on the filesystem. (And what I read about ext3 says the inode 
tables will be zero'd on deletion anyway.)

I did a bit more searching and still cannot find any undelete program 
tailored to ext3. I did find this one for ext2 -- 
http://www.data-recovery-software.net/Linux_Recovery.shtml -- that MIGHT be 
worth a look, since its description seems to indicate that it does not 
depend on the inode table to recover. And this one -- 
http://www.securiteam.com/tools/6R00T0K06S.html -- is not specific about 
what filesystems it will work on. The Debian package tct (Coroner's 
Toolkit) also includes a program called unrm, but I don't know if it is the 
same one.

Finally, my search turned up a couple of references to 
www.experts-exchange.com, a site that requires registration. You might want 
to check its resources.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
