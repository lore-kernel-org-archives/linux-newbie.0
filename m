From: "Jesper Juhl" <jesper.juhl@gmail.com>
Subject: Re: query related to different architectures
Date: Sun, 20 May 2007 14:04:42 +0200
Message-ID: <9a8748490705200504geafb037m5d1cc113112fbabb@mail.gmail.com>
References: <7783925d0703200528l70b534b6r69abfcba32f3a41a@mail.gmail.com>
	 <8bd0f97a0703200715k3179750dy744a237bba9773b7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Nx83f4ALKyfQZIbIpEGRjeR6ZDxJhIOO+Ga3leMrO18hHcsh0JF22QZiUJc4RfPZHf8FEWgQDyXJUYFIp1cCYqFEYQbRqvyK4dnzGf8XulBhSgBxKJWDB4Tq4HfSWB171GJI+RWGM5lI1Gxvy7kk9Xw1ELyfOADp9uBvPu5KABc=
In-Reply-To: <8bd0f97a0703200715k3179750dy744a237bba9773b7@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Mike Frysinger <vapier.adi@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On 20/03/07, Mike Frysinger <vapier.adi@gmail.com> wrote:
> On 3/20/07, Rick Brown <rick.brown.3@gmail.com> wrote:
> > Secondly, when we talk of 32/64 bit processor, we are talking about
> > the data bus width, right? The same holds when we talk about Operating
> > systems, right? So the size of address bus does not matter?
>
> it usually refers to the native size of the cpu ... 64bit processors
> work normally on registers that are 64bits in size while 32bit
> processors work normally on registers that are 32bits in size
> -mike
>

I agree that that's usually what people understand by 32/64 bit
processors, but the whole thing is loosing meaning.
AMD64/EM64T processors also have 128bit registers for the MMX/SSE
stuff, and what about the x87 stuff, that uses 80bit registers, and
when talking about how much memory the processor can address the
Opteron has 40-bit physical and 48-bit virtual addressing and if I
remember correct EM64T processors support only 36bit addresses.
So it's all a little blurry...

-- 
Jesper Juhl <jesper.juhl@gmail.com>
Don't top-post  http://www.catb.org/~esr/jargon/html/T/top-post.html
Plain text mails only, please      http://www.expita.com/nomime.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
