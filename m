From: Ray Olszewski <ray@comarre.com>
Subject: Re: Large FTP transfers
Date: Sat, 28 Sep 2002 08:01:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020928075131.02675d00@celine>
References: <200209281757.06861.adam@luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209281757.06861.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

At 05:57 PM 9/28/02 +0930, Adam Luchjenbroers wrote:
>What parts of system does an FTP transfer of a large file (eg .ISOs) 
>affect. I
>am getting hard-lockups while trying to D\L the file.
>
>Where might the problem be?
>
>Mandrake 8.1
>Kernel 2.4.19
>KDE 3.0.2
>
>Athlon 900MHz
>nVidia GeForce 4 Ti4200 128MB
>512MB Corsair DDR333
>Soltek SL-75DRV5 (Via KT333 Chipset, identified as KT266)
>Seagate 40GB HDD

Over the years, I've had systems fail during large ftp transfers, though my 
symptom is usually a spontaneous reboot rather than a "hard-lockup" (by 
which, I assume, you mean the Linux system that is receiving the file 
ceases to respond in any way ... no X, no consoles, no telnet of ssh 
response, and no response to pings ... requiring a power-down or a 
hard-reset reboot). The cause invariably proved to be marginal hardware (in 
fact, this is so predictable that I use large ftp transfers as part of my 
stress testing of new systems ... that plus my being a cheapskate probably 
explains why I see this problem so often). A large ftp transfer "affects" 
about every part of the system there is.

Among the things this test has turned up for me are:

         1. An inadequate heatsink/fan combination (an ftp transfer puts a 
lot of work on typical CPUs, unearthing any overheating risk it may face).
         2. Flaky memory (the ftp transfer will cache into RAM, taking you 
to 100% RAM use far more quickly than everyday operation will)
         3. A bad power supply (don't know why an ftp transfer turned this 
one up).
         4. Problems with my swap partition (not sure what; possibly speed 
problems on the drive itself, or maybe a problem with DMA).

I'd imagine it could also turn up problems with the NIC or with the 
filesystem partition, but I haven't actually experienced either.


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
