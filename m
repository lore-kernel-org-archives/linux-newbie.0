From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: howto configuring kernel and modules.conf for automatic loading
 of ide-scsi
Date: Mon, 26 Jan 2004 00:08:29 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401252359410.9280@ppg_penguin>
References: <20040125041110.22704715.agri@desnol.ru> <5.1.0.14.1.20040124202304.01f31308@celine>
 <20040125140656.023f0ced.agri@desnol.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040125140656.023f0ced.agri@desnol.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Agri <agri@desnol.ru>
Cc: linux-newbie@vger.kernel.org

On Sun, 25 Jan 2004, Agri wrote:

> thanks for answers, but....
> the only thing i get: there is no way to configure loading of ide-scsi "ON DEMAND".
> Am i right?
>

Following are from my modules.conf.

First, make sure there is a path pointing to the directory where the
actual modules are found (maybe not necessary), such as

path[scsi]=/lib/modules/`uname -r`/kernel/drivers/scsi

The following let me use /dev/scd0 to access the CD for reading, and sg
(I guess) for writing from cdrecord:

alias scsi_hostadapter ide-scsi
alias scd0 sr_mod # load sr_mod upon access of scd0
pre-install sg modprobe ide-scsi # load ide-scsi before sg
pre-install sr_mod modprobe ide-scsi
pre-install ide-scsi modprobe scsi_mod

You'll probably need to rerun depmod after changing modules.conf.
Of course, unless your distro runs a cron job to unload unused modules,
once they've been loaded they stay loaded.

HTH,

Ken
-- 
This is a job for Riviera Kid!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
