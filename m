From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: howto configuring kernel and modules.conf for automatic loading
 of ide-scsi
Date: Mon, 26 Jan 2004 15:50:42 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401261544371.12103@ppg_penguin>
References: <20040125041110.22704715.agri@desnol.ru> <5.1.0.14.1.20040124202304.01f31308@celine>
 <20040125140656.023f0ced.agri@desnol.ru> <Pine.LNX.4.58.0401252359410.9280@ppg_penguin>
 <20040126124651.5c1aa170.agri@desnol.ru>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040126124651.5c1aa170.agri@desnol.ru>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Agri <agri@desnol.ru>
Cc: linux-newbie@vger.kernel.org

On Mon, 26 Jan 2004, Agri wrote:

> Oh.... i did everything as you say many times before...
> i get success only this time.
> i have done a little investigation...
> there is no need of
>   pre-install sg modprobe ide-scsi # load ide-scsi before sg
>   pre-install sr_mod modprobe ide-scsi
> moreover these lines breaks loading after "rmmod -a"

Ok,

 if you don't need them, don't use them!  At one time they appeared to
be necessary for me (although I was also doing some other stuff for my
ide zip drive, which I cut out of the example).  I've never
intentionally used rmmod for these things, so it doesn't surprise me
that I can break it :)  Maybe you need to tell rmmod to remove each of
these modules, not just the 'top level'.  Module loading has always been
one of the harder things to find accurate information for.

Ken
-- 
This is a job for Riviera Kid!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
