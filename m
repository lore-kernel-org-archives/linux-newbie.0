From: Ray Olszewski <ray@comarre.com>
Subject: Re: 3rd install failed hardware setup
Date: Fri, 04 Feb 2005 08:21:56 -0800
Message-ID: <5.1.0.14.1.20050204075906.01f6fce8@celine>
References: <Pine.LNX.4.58.0502040829270.7624@localhost.localdomain>
Mime-Version: 1.0
In-Reply-To: <Pine.LNX.4.58.0502040829270.7624@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:50 AM 2/4/2005 -0600, James Miller wrote:
>This query refers to a Mepis (Debian variant) install I've done, as well
>as to the live-CD version of that distro, from which the installation
>runs. I'm setting up a computer for a friend who is not very
>computer-literate, but who also can't afford XP, so I wanted a fairly
>user-friendly distro, but something not too far removed from what I know
>better (Debian). The choice really was decided by the fact that, of those
>distros I tried on the target hardware (P3 500, 128MB RAM, 4GB HD--found
>in the garbage), Mepis was the only one that autoconfigured the Lucent
>winmodem the thing has. Because the machine was a bit tight on space, I
>added a second drive--1.2GB. Unfortunately the automated install Mepis
>runs does not allow for much in the way of partition tweaking: in fact,
>it's set up to only install to a single drive. So, I installed it to the
>4GB drive, planning on moving some large dir over to the second drive and
>creating a mount point and fstab entry for it. It took me a couple of
>install attempts to get that right. In both of my previous attempts, as
>well as during sessions run from the live-CD, the modem was working fine.
>On the third attempt, before actually booting into the newly-installed
>system, I found a suitably large directory to move over to the second
>drive--/usr/lib (640+ MB). I copied it's contents over to the second drive
>(as root cp -R /usr/lib/* /mnt/hdb2), renamed the original dir to
>/usr/slib on the main drive, created a new /usr/lib (using Konqueror as
>root) on the main drive, and edited /etc/fstab to mount the second drive
>at /usr/lib. On boot, it all seemed to go successfully. The drive mounts
>at the specified place, and files are accessible. But I was greeted on KDE
>startup with the message "/dev/dsp not found." I didn't see that on
>previous install attempts or on running from the live-CD. And when I tried
>to query the modem, it told me the modem cannot be opened. I'm trying to
>find out what went wrong.
>
>Could moving the directory /usr/lib to the second drive have caused this
>problem? Did I maybe screw up some permissions in copying? Any
>suggestions--short of another install--for fixing it if it does seem like
>this is where the problem lies?


First, "cp -R" is not the safest way to cp an important directory like 
/usr/lib . "cp -a" (or its equivalent, "cp -dpR") is much safer. It is 
possible you introduced some sort of ownership or permissions or symlink 
problem with your approach ...but I can't actually think of one that would 
affect the contents of /dev . That makes me wonder if the info about 
/dev/dsp is a red herring (/dev/dsp normally accesses the sound subsystem, 
not the modem ... but I am not familiar with the Lucent driver or its 
peculiarities).

All else I can suggest, really, is that you round up the usual suspects and 
see if they shed any light on the problem. Look at (and if you want help 
with the process, show us) the output of:

         more /etc/fstab
         df
         ls -l /dev/ds*
         ls -l /dev/modem*
         lsmod
                 (in particular, is lt_modem loaded?)

And can a lightweight command-line app (minicom is the usual one) access 
the modem?  That is, might this be a KDE problem (your cp approach *may* 
have interfered with its access to some needed library)?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
