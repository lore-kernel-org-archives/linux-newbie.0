From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: devfs
Date: Tue, 3 Feb 2004 15:26:02 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0402031515530.24791@ppg_penguin>
References: <401F1A29.80107@kevino.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <401F1A29.80107@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: mike <mike@kevino.org>
Cc: linux-newbie@vger.kernel.org

On Mon, 2 Feb 2004, mike wrote:

> Hello all,
> I was reading the thread subject=(error message interpretation
> help?) and the reference to "devfs". I have a stock installation of
> MDK9.2 and my understanding is that "devfs" is in the kernel or
> (module maybe?) by default.
> I should say right off the bat that I am a major newbie so bare with
> me. I've heard complaints about "devfs" before, for one thing the
> naming convention I noticed on my "df" output alittle long and hard
> to read for instance.
>
> Filesystem            Size  Used Avail Use% Mounted on
> /dev/ide/host0/bus0/target0/lun0/part5
>                        380M  115M  246M  32% /
>
> Someone told me that was because I had "devfs" I did some reading
> and I think I can change that part on my system with
> /etc/devfsd.conf but my question is do I really need "devfs" and if
> not how can I remove it or disable it, and do I need to replace it
> with something else?
>
>

Based on past experience with mdk8.2, which used devfs and worked
extremely badly for me, I'd recommend doing without.  However, that's a
lot easier said than done.  You'll need to create static devices, and
you won't be able to do this while devfs is blocking access to the real
underlying /dev, which means booting from a recovery CD as well as
knowing which devices you need, and which groups should own them.

I also take the view that most people don't change their underlying
hardware and peripherals very often, so for me manually adding a device
when I add a usb printer is par for the course.  If you don't want that
level of involvement and you don't have any problems with it, keep it.

Funnily enough, based on an email a little while ago on lkml about udev,
I thought Mandrake had already moved away from devfs.  [ udev
reimplements some of what devfs does, with 2.6 kernels, but its still at
an early stage and certainly not intended as a drop-in replacement. ]

Ken
-- 
Brighton tops UK Jedi league
http://www.theregister.co.uk/content/28/35186.html

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
