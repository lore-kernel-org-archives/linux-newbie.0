From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: Need for a new spinlock API?
Date: Thu, 22 Mar 2007 09:51:47 +0100
Message-ID: <1174553507.1158.160.camel@laptopd505.fenrus.org>
References: <b115cb5f0703202053n1b8bfd4bo39cd046e04fb15a2@mail.gmail.com>
	 <1174462330.1158.113.camel@laptopd505.fenrus.org>
	 <623132dc0703211159n3781bfbdu6ffd43743a6fe377@mail.gmail.com>
	 <1174511009.1158.150.camel@laptopd505.fenrus.org>
	 <b115cb5f0703211812x6464f695ha1b3d4e2c58ba364@mail.gmail.com>
	 <677342AB6AE12D4DB59A9D473F40D74B028E0441@xmb-blr-416.apac.cisco.com>
	 <b115cb5f0703212133v4c8fa36cm528866fef3e3e8f9@mail.gmail.com>
	 <677342AB6AE12D4DB59A9D473F40D74B028E0442@xmb-blr-416.apac.cisco.com>
	 <b115cb5f0703212259i31baa281l5efc431d82cac8e7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b115cb5f0703212259i31baa281l5efc431d82cac8e7@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: "Ajay Singh (ajaysi)" <ajaysi@cisco.com>, anubhav rakshit <anubhavrocks@gmail.com>, kernel mail <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Thu, 2007-03-22 at 11:29 +0530, Rajat Jain wrote:
> > The lock contention is between the process or another instance of same
> > ISR on other processor(say uP1) which are waiting for that same spinlock
> > to be released. They will have to wait till old ISR instance finishes on
> > processor (say uP0).
> 
> No, by design there cannot be two instances of your ISR running on two
> seperate processes (since the interrupt is disabled on all processors
> untill the ISR returns).

but the USERCONTEXT on the other cpu ALSO uses this lock, right?
(Otherwise this entire discussion was moot already, that was your
initial premise)
-- 
if you want to mail me at work (you don't), use arjan (at) linux.intel.com
Test the interaction between Linux and your BIOS via http://www.linuxfirmwarekit.org

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
