From: Bernd Petrovitsch <bernd@firmix.at>
Subject: RE: kernel porting query
Date: Fri, 16 Feb 2007 10:32:42 +0100
Message-ID: <1171618362.23981.10.camel@tara.firmix.at>
References: <7783925d0702151816r7df63816ld9c69b56bdb0a0b9@mail.gmail.com>
	 <677342AB6AE12D4DB59A9D473F40D74B028E0411@xmb-blr-416.apac.cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1423478AbXBPJc6@vger.kernel.org>
In-Reply-To: <677342AB6AE12D4DB59A9D473F40D74B028E0411@xmb-blr-416.apac.cisco.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Ajay Singh (ajaysi)" <ajaysi@cisco.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, Linux Kernel <linux-kernel@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Fri, 2007-02-16 at 07:46 +0530, Rick Brown wrote:

Your quoting style sucks. I fixed it by hand.
 
[...]
> > 1) Can any one please shed some light on precisely and exactly what are
> > differences in different boards for which we need to port linux?

> On Fri, 2007-02-16 at 09:48 +0530, Ajay Singh (ajaysi) wrote:
> The differences depends on the boards ... Mostly if they belong to the
> same family the differences could be mainly in the peripherials ...
> Interrupt mappings... Serial interface ... Memory sizes (if differnet
> boards have different memory sizes) ... Sometimes some devices may be
> moved to some other locations in the memory map (Look at memory map of
> your SoC on your board). 

You may have different boot loaders (or none at all).
You also may have different storage media like FlashRAM, IDE,
network, .... for boot loader/kernel/root filesystem. They may have
different sizes and it makes a "little" difference for your requirements
in the toolchain if you have 4MB or 1GB to boot your system from.

All that kind of information can be found in a BSP (board support
package).

	Bernd
-- 
Firmix Software GmbH                   http://www.firmix.at/
mobil: +43 664 4416156                 fax: +43 1 7890849-55
          Embedded Linux Development and Services
