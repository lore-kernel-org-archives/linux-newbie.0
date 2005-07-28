From: "Deepak Kumar Gupta, Noida" <dkumar@hcltech.com>
Subject: Query on physical mode support for IPI for i386
Date: Thu, 28 Jul 2005 23:00:53 +0530
Message-ID: <40CC5CC7CDACC048B1299C57025E330C661D17@HSDLNTD1110010.noida.hcltech.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
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
To: mingo@redhat.com, alan@redhat.com
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi All

I am working on Intel IA32 platform on linux kernel 2.6.8. Primarily I
am looking at Inter Processor Interrupts (IPI) on APIC. As per my
understanding Linux supports Logical mode of IPI. I want to change it to
physical mode (please don't ask why ??). Can anybody tell me what all
things I need to change ?

More explanation of problem:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Intel architecture's APIC functionality supports IPI also, which are
useful in SMP. For IPI functionality each processor's local APIC
provides ICR register (Interrupt command register) and this is the basic
register for controlling IPI mechanism.

Setting destination mode field of ICR register can change the mode from
physical to logical. As per my understanding Linux IPI mechanism work
under logical mode only. There is no support for physical mode (however
ppl may argue that it is not needed.. I agree.. But due to some reason I
need it..)

Search Till now and queries:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=20
Till this point of time I can figure out following changes : -
	1. Need to change function __prepare_ICR
(arch/asm-i386/kernel/smp.c) in case of destination shorthand is not
used that is value of shortcut is 0.
	2. Need to pass physical APIC_ID in __prepare_ICR2() function
calls.
		- Here I am not sure how to get physical APIC_ID for the
destination processor ? Is there any standard function available for
this ?
	3. Also If I change according to 2 then I think I need to change
the code in kernel where Linux handles logical mode (that is look for
DFR and LDR registers)
		- I am not able to figure out the location of the code
in kernel. Can anybody let me know the location of code ?=20

Also if somebody can suggest me what else needs to be change then it
would be great help for me ? Any pointer in this regard will be useful.

Finally correct me if somewhere my understanding is not correct OR I
have mentioned something wrong.

TIA

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Deepak Kumar Gupta
Project Leader
System Software Group
HCL Technologies Limited
Noida UP

Contributing to the World by creating indispensable value !

System Software CoE @ HCLT-Noida
http://www.hcltechnologies.com
Ph. : +91-120-2510701/702 Ext : 3159
FAX : +91-120-2510713=20
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=20


--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

