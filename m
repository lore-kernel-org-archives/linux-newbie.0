From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: Re[2]: core file
Date: Thu, 11 Jul 2002 17:01:14 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020711150114.24478.qmail@web2.mailbox.hu>
References: <20020711145600.A1155@neutrino.particles.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020711145600.A1155@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Elias Athanasopoulos <eathan@otenet.gr>
Cc: Newbie <linux-newbie@vger.kernel.org>

Elias Athanasopoulos <eathan@otenet.gr> wrote

> > I am just curious in the next thing:
> > What could one start with a core file, which was created
> > when a program crashed.
> 
> % gdb ./foo ./core
> ...
> % (gdb) where
> 
> Assuming foo is the crashed app, the above will show you where it
> crashed. A stack backtrace (bt) is also useful.

Thanks a lot!
I will try it out!

BR,
Akos


--------------------------------------------------
http://www.mailbox.hu - Mert levelezni kell...

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
