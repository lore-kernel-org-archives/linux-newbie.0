From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Polaroid BurnMAX24 CD-RW
Date: Wed, 22 May 2002 17:33:28 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0205221731540.28967-100000@pppg_penguin.linux.bogus>
References: <5.1.0.14.1.20020521124101.020fcec0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020521124101.020fcec0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Tue, 21 May 2002, Ray Olszewski wrote:

> 
> BTW, Ken, I have IDE-CD compiled in my 2.4.17 kernel, and I can access my 
> CD-R/W just fine. I do need to include an append= line in lilo.conf telling 
> the IDE stuff to ignore hdd, so the SCSI-IDE modules can later grab it. I 
> don't know if Mark's use of ignore in modules.conf completely substitutes 
> for this, or if his method only works when ide-cd is a module.
> 

 Thanks, Ray. I always find the interactions between ide and
scsi-emulation confusing.

Ken
-- 
Listen to others, even to the dull and ignorant;
     for you too may be a Manager some day.
-- from the BFOH Desidoreplicator.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
