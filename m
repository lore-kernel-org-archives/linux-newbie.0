From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Fri, 07 Jul 2006 07:36:59 +0200
Message-ID: <1152250619.3111.9.camel@laptopd505.fenrus.org>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
	 <1152179099.3084.24.camel@laptopd505.fenrus.org>
	 <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
	 <1152209267.3084.78.camel@laptopd505.fenrus.org>
	 <6b4e42d10607062145h613f183fsb8bc8fe471965466@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6b4e42d10607062145h613f183fsb8bc8fe471965466@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Om." <om.turyx@gmail.com>
Cc: George Zhim <georgezhim@gmail.com>, Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Fri, 2006-07-07 at 10:15 +0530, Om. wrote:
> On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> > On Thu, 2006-07-06 at 19:51 +0200, George Zhim wrote:
> > > Hi!
> > >
> > > On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> > > > PHYSICAL. if you want virutal you need to use /dev/kmem.
> How about peripheral memory mapped to some addresses? Assuming I have
> a PCI device and a on board flash PROM, would I be able to see them in
> /proc/(k)mem ? I feel not. Am I correct?

/dev/mem yes

HOWEVER, there is a much nicer way to mmap a PCI device's resources, and
that is sysfs.
/sys/bus/pci/devices/0000:00:02.0/resource0 
for example is the first resource of a PCI device on my system.
No need to muck about with the dangerous /dev/mem; this one is at least
well defined and portable across systems, including virtualization etc
etc


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
