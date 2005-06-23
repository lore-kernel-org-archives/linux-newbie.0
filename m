From: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Subject: Re: 200 GB linux showing 120 GB - Pls help
Date: Thu, 23 Jun 2005 07:33:40 +0300
Message-ID: <4a618d08050622213362bfadc1@mail.gmail.com>
References: <BAY10-DAV271D801F01A044063E4E02CEEA0@phx.gbl>
Reply-To: Arturas Moskvinas <arturas.moskvinas@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAY10-DAV271D801F01A044063E4E02CEEA0@phx.gbl>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sandeep Shetty <nsandeepshetty@hotmail.com>
Cc: linux-newbie@vger.kernel.org

> Hi,
> I've installed a 200 GB hard disk in Linux 2.4.7(Redhat 7.2 necessary for a project) and it shows only 120 GB. Can anybody help me?     If there is any setting to be enabled.

I had similar problem...

Update your kernel to at least to 2.4.18 (later is better), I think in
this version of linux started to use 48bit to address disk space, so
all your disk space will "show up".

Arturas Moskvinas
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
