From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: CD-ROM settings and hardware resources...
Date: Wed, 23 Oct 2002 15:49:36 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02102315493607.00497@unix.pa3gcu>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet> <1035315950.22123.76.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035315950.22123.76.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, Robert Couture <linux-net@tcob1.net>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Tuesday 22 October 2002 19:45, Bryan Simmons wrote:
> You missed the part where I said the only way to retrieve the files was
> in Windows and that I wanted to enable whatever error correction or
> multiple read settings that Windows has but while I'm in Linux.
>
> Any ideas?

It sounds to me like you dont have dma set for the cdrom.

man hdparm will explain howto turn it on.

If thats not it then please disregard this mail.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
