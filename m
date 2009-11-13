From: Drew <drew.kay@gmail.com>
Subject: Re: 32 bit processors / 64 bit processors
Date: Thu, 12 Nov 2009 19:37:10 -0800
Message-ID: <c268e4660911121937q3a5e85cfs2a2702889a797f3c@mail.gmail.com>
References: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type;
        bh=dCrMGuN0z6tjCfCtD75BbJXmt5CwBMOPdVyE2akN8BE=;
        b=s5ydIA2tdqUB6VtApD40MkGuWh5o5757crFrVfXNqd9/+4QbqlXvER4wWPhY4/inkk
         HNJEbBW2cWx29e4/eFwfkqbGcI2+jL0iawgFMEOdDdVsMBS/7JqDJmgrM7+Q8YiAYyKU
         vK0rFTiYIjfjtAcyNJiG/aj5HS8jJEm4wQHTw=
In-Reply-To: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

> Firstly, I'm trying to understand what exactly characterizes a
> procesor or an operating system as 32bit / 64 bit. I've read that it
> means the "native word size" of a machine. But what exactly is that?
> Register size? Address bus size? Anything else?

I've always used the virtual address space as the basis of whether a
chip is 32bit or 64bit. On the x86 PAE throws a wrinkle into that but
the system is IMO still 32bit.

> Secondly, I'm trying to understand what exactly does a sizeof(int)
> depend on when we say it is "platform specific". Is it dependent of
> compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
> processor being 32 / 64 bit?

Can't answer that one as I don't write a lot of code outside of PHP/Perl.

> Lastly, How are "sizes" of compiler / OS / processor inter related?
> Here is my understanding. A 32 bit processor can only be running a 32
> bit OS. A 64 bit processor may run a 32 or a 64 bit OS. A 32 bit
> compiler generates code only to be run on a 32 bit OS; ditto for 64
> bit. Is this right?

Yes and no. A 32bit OS can only run 32bit apps. On 64bit it depends.
The x86-64/amd64 running a 64bit OS can run 64 or 32bit apps with the
right libraries. The IA64(Itanium) does not have an option to run
32bit apps. Sparc is whole another ballgame altogether as they have
32bit, 64bit, and 64/32bit.


-- 
Drew

"Nothing in life is to be feared. It is only to be understood."
--Marie Curie
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
