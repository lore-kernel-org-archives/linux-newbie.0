From: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: x86_64_defconfig and i386_defconfig: What is the difference?
Date: Tue, 09 Sep 2014 16:06:07 +0200
Message-ID: <540F094F.3040904@gmail.com>
References: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=eq6Ab2tGESwjf19uaM3GxjFEPYH60Z5ioOSUVLLYlsI=;
        b=xjtmLDCQo39Ramjw+aa+C9AxKGpJ9b6gQsZawqUGpXd/GBKmPs9RoyG3z2z/Mr7/5f
         rvQL6SbR1l1hu8QBQo3cNDyWy/spSRCNuRrgzld5BbjdIh0HawUIaGFvxdBzLcN/uUn+
         Z/j9dzOJOzWKA2uOS6Bcg7MXFGZcEBxfHMcyR0lvauYHcRJ00mm9VSR7pnQU3BbnCMGP
         Q0jb1ADfJ2fHHJewI62+NTYpRh6fq1jSInDyUnIpJUbA0almnJy64syGJJH2h/71CcEA
         S7lx83FRHEcmXDC8fd6RUwbRn/AI2mkcybWhhA834vtXNgVEuokSXstzsKk4echdZcXp
         bttg==
In-Reply-To: <a06a49ac87e44c0d89d88514d7a28678@DM2PR05MB671.namprd05.prod.outlook.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajatjain@juniper.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@kernelnewbies.org>



On 09/09/14 09:58, Rajat Jain wrote:
> Hi,
> 
> Can someone tell me if the i386 one is to be used when we want to build for a 32bit machine and the x86_64 is to be used for 64 bit machine?

You can build the kernel with any architecture for any architecture.
This is called cross-compiling. The homepage [0] should explain you how
to do that.

Cheers,
Matthias

[0] http://kernelnewbies.org/FAQ/KernelCrossCompilation

> 
> Thanks,
> 
> Rajat
> 
> _______________________________________________
> Kernelnewbies mailing list
> Kernelnewbies@kernelnewbies.org
> http://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
