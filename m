From: Om. <om.turyx@gmail.com>
Subject: Re: /dev/mem contains physical memory addresses?
Date: Fri, 7 Jul 2006 10:07:10 +0530
Message-ID: <6b4e42d10607062137w3071dd4ckfc9386cbe3a17b89@mail.gmail.com>
References: <292693080607060236n5c279815x3fe5d493ea3a587e@mail.gmail.com>
	 <1152179099.3084.24.camel@laptopd505.fenrus.org>
	 <81dd41e20607061051t45e372a9n4586988e971ae367@mail.gmail.com>
	 <1152209267.3084.78.camel@laptopd505.fenrus.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1152209267.3084.78.camel@laptopd505.fenrus.org>
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Arjan van de Ven <arjan@infradead.org>
Cc: George Zhim <georgezhim@gmail.com>, Daniel Rodrick <daniel.rodrick@gmail.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> On Thu, 2006-07-06 at 19:51 +0200, George Zhim wrote:
> > Hi!
> >
> > On 7/6/06, Arjan van de Ven <arjan@infradead.org> wrote:
> > > PHYSICAL. if you want virutal you need to use /dev/kmem.
How about peripheral memory mapped to some addresses? Assuming I have
a PCI device and a on board flash PROM, would I be able to see them in
/proc/mem

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

