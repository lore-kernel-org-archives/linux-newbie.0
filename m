From: Petre Bandac <g38@rdsbv.ro>
Subject: Re: kswapd (?!) error
Date: Sat, 5 Oct 2002 19:04:09 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210051904.09629.g38@rdsbv.ro>
References: <02100508295303.00234@unix.pa3gcu> <5.1.0.14.1.20021005081422.02575d90@celine>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021005081422.02575d90@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 05 October 2002 18:23, Ray Olszewski wrote:
> OK. You want an opinion. It's only a guess, but I'd suspect a problem with
>
> your swap partition, since the failure described is a paging problem:
>          > > Oct  5 04:45:04 k kernel: Unable to handle kernel paging
>
> request at
>
>          > > virtual address 361dcf1b
>
> Also, ftp transfers tend to fill up memory. With 256 MB of real RAM, and
> the process list you sent, an ftp transfer mat be the only thing that ever
> triggers use of swap space.
>
> To explore this guess, try the following (assuming this is a problem that
> recurs):
>
>          1. Run "top" in some way that will let you see its last output
> before a failure (maybe over a telnet or ssh connection). Then notice if
> this problem occurs when you are just starting to use swap.
>
>          2. Disable your swap partition and see if the problem stops
> happening.
>
>          3. If you do NOT have DMA enabled for your hard drive, try
> enabling it (with hdparm) and see if that helps. The problem may just be
> timing.

root@k:~# hdparm /dev/hda

/dev/hda:
 multcount    =  0 (off)
 IO_support   =  0 (default 16-bit)
 unmaskirq    =  0 (off)
 using_dma    =  1 (on)
 keepsettings =  0 (off)
 readonly     =  0 (off)
 readahead    =  8 (on)
 geometry     = 2482/255/63, sectors = 39876480, start = 0


I'll try another ftp transfer - see if things happen the same

thanks,

petre

> All this said, my guess is only that -- a guess. As I noted in another
> recent thread, a large ftp transfer is a good stress test for all parts of
> the system, so it will unearth any hardware problems you might have (in my
> case, most recently it unearthed a marginal power supply, as an example --
> different failure mode, though).
>
> At 04:28 PM 10/5/02 +0300, Petre Bandac wrote:
> >petre@k:~$ uname -a
> >Linux k 2.4.18-HTB #4 Wed Sep 25 02:47:50 EEST 2002 i686 unknown
> >
> >it is a Slackware 8.1 installed a few weeks ago
> >
> >I have 256 MB RAM and 200 MB swap space
> >
> >I stay away for the experimental kernels, as what I want from my system is
> >stability.
> >
> >the uptime of the machine was at that time 4 days, 21:14:36. It is my home
> >box, I run x-window on it (KDE), but at that time x-window wasn't running,
> > so the only processes runing were those required by the system, plus
> > apache plus http (below I'll list them). The only reason which comes to
> > my mind is that at the time the crash occured I was doing a ftp upload on
> > the machine @ ~200 KB (yes, kilo Bytes). If it makes any difference, I'm
> > connected through a LanCity cable modem.
> >
> >I shall look at the file you mentioned, richard, thank you, though I would
> >like to have some opinions on what caused this error (one of the few
> > "fatal" errors I have seen on linux machines yet).
>
> [details deleted]

-- 
 18:59:19 up 10:52,  2 users,  load average: 0.08, 0.06, 0.01

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
