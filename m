From: Agri <agri@desnol.ru>
Subject: Re: howto configuring kernel and modules.conf for automatic loading
 of ide-scsi
Date: Mon, 26 Jan 2004 12:46:51 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040126124651.5c1aa170.agri@desnol.ru>
References: <20040125041110.22704715.agri@desnol.ru>
	<5.1.0.14.1.20040124202304.01f31308@celine>
	<20040125140656.023f0ced.agri@desnol.ru>
	<Pine.LNX.4.58.0401252359410.9280@ppg_penguin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0401252359410.9280@ppg_penguin>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Oh.... i did everything as you say many times before...
i get success only this time.
i have done a little investigation...
there is no need of
  pre-install sg modprobe ide-scsi # load ide-scsi before sg
  pre-install sr_mod modprobe ide-scsi
moreover these lines breaks loading after "rmmod -a"
lines from logs:
insmod: /lib/modules/2.4.23-rc1/kernel/drivers/cdrom/cdrom.o: pre-install sr_mod failed
insmod: /lib/modules/2.4.23-rc1/kernel/drivers/cdrom/cdrom.o: insmod block-major-11 failed

and line
  pre-install ide-scsi modprobe scsi_mod
breaks everything cause:
  modprobe: Can't locate module scsi_mod

now i'm more confused about modules, and about rmmod because it does not always
remove unused modules.....

thanx a lot for answer.

Agri

On Mon, 26 Jan 2004 00:08:29 +0000 (GMT)
Ken Moffat <ken@kenmoffat.uklinux.net> wrote:

> On Sun, 25 Jan 2004, Agri wrote:
> 
> > thanks for answers, but....
> > the only thing i get: there is no way to configure loading of ide-scsi "ON DEMAND".
> > Am i right?
> >
> 
> Following are from my modules.conf.
> 
> First, make sure there is a path pointing to the directory where the
> actual modules are found (maybe not necessary), such as
> 
> path[scsi]=/lib/modules/`uname -r`/kernel/drivers/scsi
> 
> The following let me use /dev/scd0 to access the CD for reading, and sg
> (I guess) for writing from cdrecord:
> 
> alias scsi_hostadapter ide-scsi
> alias scd0 sr_mod # load sr_mod upon access of scd0
> pre-install sg modprobe ide-scsi # load ide-scsi before sg
> pre-install sr_mod modprobe ide-scsi
> pre-install ide-scsi modprobe scsi_mod
> 
> You'll probably need to rerun depmod after changing modules.conf.
> Of course, unless your distro runs a cron job to unload unused modules,
> once they've been loaded they stay loaded.
> 
> HTH,
> 
> Ken
> -- 
> This is a job for Riviera Kid!
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
