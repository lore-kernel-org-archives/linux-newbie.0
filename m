From: Ray Olszewski <ray@comarre.com>
Subject: Re: kswapd (?!) error
Date: Sat, 05 Oct 2002 08:23:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021005081422.02575d90@celine>
References: <02100508295303.00234@unix.pa3gcu>
 <200210050816.03883.g38@rdsbv.ro>
 <02100508295303.00234@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210051628.50770.g38@rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: g38@rdsbv.ro, linux-newbie@vger.kernel.org

OK. You want an opinion. It's only a guess, but I'd suspect a problem with 
your swap partition, since the failure described is a paging problem:

         > > Oct  5 04:45:04 k kernel: Unable to handle kernel paging 
request at
         > > virtual address 361dcf1b

Also, ftp transfers tend to fill up memory. With 256 MB of real RAM, and 
the process list you sent, an ftp transfer mat be the only thing that ever 
triggers use of swap space.

To explore this guess, try the following (assuming this is a problem that 
recurs):

         1. Run "top" in some way that will let you see its last output 
before a failure (maybe over a telnet or ssh connection). Then notice if 
this problem occurs when you are just starting to use swap.

         2. Disable your swap partition and see if the problem stops happening.

         3. If you do NOT have DMA enabled for your hard drive, try 
enabling it (with hdparm) and see if that helps. The problem may just be 
timing.

All this said, my guess is only that -- a guess. As I noted in another 
recent thread, a large ftp transfer is a good stress test for all parts of 
the system, so it will unearth any hardware problems you might have (in my 
case, most recently it unearthed a marginal power supply, as an example -- 
different failure mode, though).

At 04:28 PM 10/5/02 +0300, Petre Bandac wrote:
>petre@k:~$ uname -a
>Linux k 2.4.18-HTB #4 Wed Sep 25 02:47:50 EEST 2002 i686 unknown
>
>it is a Slackware 8.1 installed a few weeks ago
>
>I have 256 MB RAM and 200 MB swap space
>
>I stay away for the experimental kernels, as what I want from my system is
>stability.
>
>the uptime of the machine was at that time 4 days, 21:14:36. It is my home
>box, I run x-window on it (KDE), but at that time x-window wasn't running, so
>the only processes runing were those required by the system, plus apache plus
>http (below I'll list them). The only reason which comes to my mind is that
>at the time the crash occured I was doing a ftp upload on the machine @ ~200
>KB (yes, kilo Bytes). If it makes any difference, I'm connected through a
>LanCity cable modem.
>
>I shall look at the file you mentioned, richard, thank you, though I would
>like to have some opinions on what caused this error (one of the few "fatal"
>errors I have seen on linux machines yet).
[details deleted]


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
