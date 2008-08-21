From: "Welch, Martyn (GE EntSol, Intelligent Platforms)" <martyn.welch@gefanuc.com>
Subject: RE: PCI interrupt queries
Date: Thu, 21 Aug 2008 10:31:08 +0100
Message-ID: <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com> <48AB2E3C.2070600@keyaccess.nl> <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com>
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
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Rajat Jain wrote:
> Hello Rene,
>=20
> Thanks for the reply.
>=20
>> On 19-08-08 07:11, Rajat Jain wrote:
>>=20
>>> 1) My first question is WHO writes that IRQ value in the device
>>> configuration space? Is it hardwired on the card? Is it written by
>>> the PCI controller driver or some other kernel component? Or some
>>> other piece of software takes care of it?
>>=20
>> The thing hardwired on the card is the interrupt PIN(s) it
>> uses; A, B, C and/or D (one pin per device and thus per
>> config space). The thing that writes the LINE value into the
>> register is generally the BIOS; being motherboard specific it
>> knows which IRQ line it is that pin X (A, B, C or D) from
>> slot N is routed to and it writes those values back into the device.
>>=20
>=20
> OK. But who does it in an embedded environment (PPC for eg) where
> there=20
> is no POST software. The first piece of code that gets executed is
> U-boot and then the kernel. So who writes the LINE value into the
> config=20
> space?
>=20

U-boot does. There is a fairly standardised way to connect PCI interrupt
lines, especially for PCI slots where various cards can be plugged in:

A rotation on 1 is applied to the wiring of the interrupt lines between
each device/slot, order is dependant on the wiring of the device select
lines, I think chapter 6 of TLK[1] has some of the basics. These
rotations also need to be carried across PCI-to-PCI bridges. Hence the
third device on bus 0 should have: A->INT3; B->INT4; C->INT1; d->INT2.
INT[1-4] then map into a set of interrupt numbers, which are also highly
dependant on the hardware.

There is a lot of hardware where this doesn't hold true for onboard
devices (and probably even slots) and the mapping of the devices
interrupts with relation to their device select lines are provided by a
board specific table.

Martyn

[1] http://www.tldp.org/LDP/tlk/dd/pci.html

--=20
Martyn Welch MEng MPhil MIET
Principal Software Engineer

GE Fanuc Intelligent Platforms
Tove Valley Business Park, Towcester,
Northants, NN12 6PF, United Kingdom

Telephone: +44 (0) 1327 359444
Direct Dial: +44 (0) 1327 322748
Fax: +44 (0) 1327 322800
email: martyn.welch@gefanuc.com
web: www.gefanuc.com

GE Fanuc Intelligent Platforms Ltd, registered in England and Wales
(3828642) at 100 Barbirolli Square, Manchester, M2 3AB, VAT GB 729 849
476

GE Fanuc Intelligent Platforms Confidential and Proprietary. If you
have received this message in error please notify us immediately and
permanently remove it from your system and destroy any printed
hardcopies. =20

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

