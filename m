From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: partitioning drive
Date: Tue, 23 Mar 2004 23:03:14 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403232303.14481.pa3gcu@zeelandnet.nl>
References: <20040323180912.GC25879@panix.com> <5.1.0.14.1.20040323133331.01fdbaa0@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040323133331.01fdbaa0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Tuesday 23 March 2004 22:48, Ray Olszewski wrote:
> At 10:10 PM 3/23/2004 +0100, pa3gcu wrote:\
> [...]
>
> You need to brush up on your arithmetic, Richard.
>
>          2004 - 1970 != 24
>          2004 - 1970 = 34

AH!, well i did say i was 53 ;-), i am not going to say it wa say typo, i 
simply did not do my sums correctly, thanks for the point out.

> I first used a Unix system around 1981 myself. There were some (PDP-11s, I
> think ... for me, just whatever was at the other end of the terminal's
> serial line)  at Stanford, where I was doing graduate work.
>
> And at about the same time, I had a friend at Tymshare who did development
> work on Unix systems, implementing some ideas of Doug Englebart's under the
> name Augment.
>
> So 20 years of Unix experience is, while no doubt rare, not implausible.

I dont think i said it was not, i think i said if one has that sort of 
experiance why ask such questions. ;-)

>
> BTW, on the partitioning question .. I find I prefer to partition my boot
> drives, at least the big ones we use these days, into four partitions:
>
>          hda1 = /boot, a small partition
>          hda2 = /, usually around 10 GB
>          hda3 = swap, size varies
>          hda4 = /home, whatever is left
>
> Set up this way, it means I can do a complete Linux reinstall without
> worrying about accidental overwriting of anything on the /home partition
> (since I don't mount it until after the system is installed on /). It also
> simplifies recovery after a crash, in that I can "cheat" and just fsck
> hda2, or I can run hda2 as ext2 and hda4 as a journaling filesystem.
>
> But all that is just personal preference ... there is no single right
> answer to the partitioning question.

I go for the one big partition thesdays with reiserfs, my 120Gb disks are 
slpit into +/- 40Gb, so i can install a new system and copy what i want 
afterwards.
One small problem with simply using say /home from an old install can cause 
hell when something like KDE changes things like it did from 3.0 to 3.2, i 
had many wired effects when i mounted my old /home dir.
 /boot well in thesdays of no problems with the 1023 cyls mark /boot is really 
a luxe and nothing more.

Anyway i must agree with you Ray, its a question of taste and really press 
home that in thesedays of big drives and reiserfs the need for other 
partitions becomes a point of discussion.

Now i am going to go and knock off those 10 years i just forgot about in my 
last mail, boy i wish i was 43 again..... At least i would have gotten my 
sums correct ;-(

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
