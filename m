From: chuck gelm <chuck@gelm.net>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 17:35:17 -0400
Message-ID: <4255A795.9010901@gelm.net>
References: <d345eq$cuc$1@sea.gmane.org>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d345eq$cuc$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: smertens@mho.com
Cc: linux-newbie@vger.kernel.org

smertz wrote:
> I have a new computer I installed Linux on Red Hat Enterprise Linux ES 
> release 4 (Nahant), it has one of those all-in-one card readers on it. I 
> have made mountpoints as root as follows for my thumb, Compact flash and 
> secure digital drive.
> 
> mkdir /mnt/thumb
> mkdir /mnt/cf
> mkdir /mnt/sd
> 
> 
> Now when I tried to mount the Thumb (USB) drive I got an error # mount 
> /dev/sda2 /mnt/thumb
> mount: /dev/sda2 already mounted or /mnt/thumb busy.
> 
> 
> So what have I done wrong? I'm thinking sda2 is wrong, but don't know why?
> 
> df -h shows the following
> 
> [root localhost mnt]# df -h
> Filesystem            Size  Used Avail Use% Mounted on
> /dev/mapper/VolGroup00-LogVol00
>                      183G  2.9G  171G   2% /
> /dev/sda1              99M   19M   76M  20% /boot
> none                  247M     0  247M   0% /dev/shm
> [root localhost mnt]#
> 
> 
> Thanks.

Hi, smertz:

  If /dev/sda* is already being used, try /dev/sdb*.

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
