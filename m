From: Amin <amin@siriusbb.com>
Subject: Re: problem with Real Tek RTL-8139, SMC EZ Card
Date: Fri, 7 Nov 2003 10:07:59 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031107100759.28ff0f0d.amin@siriusbb.com>
References: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
	<5.1.0.14.1.20031106100759.01fac768@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031106100759.01fac768@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 06 Nov 2003 10:23:15 -0800
Ray Olszewski <ray@comarre.com> wrote:

> BTW, the advice someone else posted was wrong in one detail. If modprobe is 
> not finding modules.dep, then attempting "/sbin/modprobe 8139too" is 
> pointless. Instead, try "/sbin/insmod 8139too", since insmod does NOT 
> handle dependency issues so will not look for modules.dep . It may fail too 
> (if, for example, the module itself is not present), but at least it will 
> fail for a different reason.

Ah, yes, sorry, I forgot about module dependencies.  I'm using RH8.0 with the shipping kernel, 2.4.18-14, and the same network card also.  Installing it was simply a matter of ``modprobe'', and then ``redhat-config-network'' (nice GUI network wizard).

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
