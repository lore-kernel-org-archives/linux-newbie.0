From: "George Zhim" <georgezhim@gmail.com>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Thu, 6 Jul 2006 19:51:12 +0200
Message-ID: <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
	 <1152179099.3084.24.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1152179099.3084.24.camel@laptopd505.fenrus.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: arjan@infradead.org
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi!

On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> PHYSICAL. if you want virutal you need to use /dev/kmem.

isn't /dev/kmem some sort of core file with structures resembling core files ?
how does that relate to virtual memory (isn't virtual memory unique
per process) ?


(btw is there any documentation regarding /dev/kmem ? couldn't really find...)

thanks,
George.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
