From: chuck gelm <chuck@gelm.net>
Subject: Re: Linux 0.99.15 (historycal question)
Date: Mon, 22 Mar 2004 16:45:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <405F5E8E.8050607@gelm.net>
References: <Pine.LNX.4.53.0403212309440.705@grinch.ro> <Pine.LNX.4.53.0403212309440.705@grinch.ro> <5.1.0.14.1.20040322085546.01f07548@celine> <Pine.LNX.4.53.0403222216130.583@grinch.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0403222216130.583@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Calin Szonyi <caszonyi@rdslink.ro>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

<snip>

>I found a site http://linux.ka.nu/ which has slackware 1.1.2 and i thought
>to give it a try on my 486 machine. The problem is that i have a 6.4GB
>hard drive :-)
>  
>
If you are simply trying to run linux on an 80486 why not try
a current kernel.  I ran kernel 2.2.19 on an 80486dx33 with
32 MB of RAM and a 40 Gigabyte Maxtor.  BIOS would
recognize 2.1 GB through Maxtor's EZ-DISK utility.  Linux
recognizes the rest of the 38 GB as it boots.  I am now
running kernel 2.4.22 (Slackware9.1) on this 80486dx33.
It is my firewall and router. 

HTH, Chuck

>>In any case, what will limit you is, most likely, not Linux itself, but
>>either LILO or fdisk. Old versions of LILO will be subject to the
>>1024-cylinder limit, requiring that you place a small /dev/hda1 partition
>>on the drive and use it as /boot .
>>
>>    
>>
>
>I booted the kernel from slackware 1.1.2 distribution (linux 0.99.15) and
>it says that my harddrive has too many heads (255) ;-) but that's on a
>40GB maxtor :-))
>
>Thanks again
>
>
>
>--
>"A mouse is a device used to point at
>the xterm you want to type in".
>Kim Alm on a.s.r.
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
