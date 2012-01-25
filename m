From: "Anatoly Sivov" <mm05@mail.ru>
Subject: Re: user defined functions
Date: Wed, 25 Jan 2012 21:37:31 +0400
Message-ID: <op.v8nhwt04fzo5me@stalin>
References: <CAGZFCEFFn0ggkciB2XoQXNGFJBs-U-mhaqzRNaCZoYjar8G1qw@mail.gmail.com> <CAGZFCEGcSx7hrc0wEubWY=q8x-kqOKwnira4ninOR-fw8Nd5iQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail;
	h=In-Reply-To:Message-ID:From:Content-Transfer-Encoding:MIME-Version:Date:References:Subject:To:Content-Type; bh=dQg/Jl8wMFxYwLTR9BOSumS31MWHgNPrUdtd+yBJqSA=;
	b=vKLR5k8BUWEtChd5Ba9P6dpfaUqqNN1hC+Rjm+DjSWLAAFHTmRdHt1wfQX82NgyglRRO3NUYQNDjHOx4ocbxmpUaHqQYvvaTnRHdu3MjBEcRzXSW/WMbgcHhVqcywjKk;
In-Reply-To: <CAGZFCEGcSx7hrc0wEubWY=q8x-kqOKwnira4ninOR-fw8Nd5iQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: linux-newbie <linux-newbie@vger.kernel.org>, ratheesh kannoth <ratheesh.ksz@gmail.com>


> HI all,
>
> I would like to find out all user defined  functions in an elf  
> executable.
>
> i compiled my c++ program using  g++  and created the elf executable.
>

Not sure what you want. Hope, readelf -s will help you.
Also read this article:  
http://www.linuxforums.org/articles/understanding-elf-using-readelf-and-objdump_125.html
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
