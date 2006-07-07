From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Fri, 07 Jul 2006 08:03:41 +0200
Message-ID: <1152252222.3111.14.camel@laptopd505.fenrus.org>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
	 <1152179099.3084.24.camel@laptopd505.fenrus.org>
	 <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
	 <1152209267.3084.78.camel@laptopd505.fenrus.org>
	 <6b4e42d10607062145h613f183fsb8bc8fe471965466@mail.gmail.com>
	 <1152250619.3111.9.camel@laptopd505.fenrus.org>
	 <292693080607062258j33884f8cw2845780dec305237@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <292693080607062258j33884f8cw2845780dec305237@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: "Om." <om.turyx@gmail.com>, George Zhim <georgezhim@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Fri, 2006-07-07 at 11:28 +0530, Daniel Rodrick wrote:
> > > How about peripheral memory mapped to some addresses? Assuming I have
> > > a PCI device and a on board flash PROM, would I be able to see them in
> > > /proc/(k)mem ? I feel not. Am I correct?
> >
> > /dev/mem yes
> >
> > HOWEVER, there is a much nicer way to mmap a PCI device's resources, and
> > that is sysfs.
> > /sys/bus/pci/devices/0000:00:02.0/resource0
> > for example is the first resource of a PCI device on my system.
> > No need to muck about with the dangerous /dev/mem; this one is at least
> > well defined and portable across systems, including virtualization etc
> > etc
> 
> So you mean to say that if I have a device whose registers are are
> memory mapped to say physical addresses "0x20020000 - 0x20020010".
> Then the file /sys/bus/pci/devices/0000:00:02.0/resource0 will contain
> thsi memory range as its contents?

well assuming the device is 00:02.0 on the bus (obviously you need to
find the right device) and that it's the first resource of the device,
then yes. (and you have to mmap it, not "read"/"write")

lspci -v  is your friend in finding out which resource and which device
it is...


Greetings,
   Arjan van de Ven


--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

