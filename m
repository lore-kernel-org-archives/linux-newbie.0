From: borasahin@justnic.com
Subject: Re: memory mapped IO on a machine with 4 GB of RAM?
Date: Mon, 25 Sep 2006 12:31:42 +0300
Message-ID: <200609251231.42202.borasahin@justnic.com>
References: <b115cb5f0609250107j79d820fbh806955ba9214542f@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0609250107j79d820fbh806955ba9214542f@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org
Cc: Rajat Jain <rajat.noida.india@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>


> I was wondering that if a machine has 4 GB of physical RAM, then how
> will the devices map their registers to memory?
>
> So if a device maps its registers in say memory address X, then will
> that particular physical memory become inaccessible to the system?

I think it should be true. It's inaccessible...

--
Bora SAHIN

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
