From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Thu, 06 Jul 2006 20:07:47 +0200
Message-ID: <1152209267.3084.78.camel@laptopd505.fenrus.org>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
	 <1152179099.3084.24.camel@laptopd505.fenrus.org>
	 <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: George Zhim <georgezhim@gmail.com>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Thu, 2006-07-06 at 19:51 +0200, George Zhim wrote:
> Hi!
> 
> On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> > PHYSICAL. if you want virutal you need to use /dev/kmem.
> 
> isn't /dev/kmem some sort of core file with structures resembling core files ?

no that's /proc/kcore

> how does that relate to virtual memory (isn't virtual memory unique
> per process) ?

it's the kernels view of its virtual memory




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
