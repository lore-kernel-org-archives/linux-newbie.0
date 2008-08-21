From: "Welch, Martyn (GE EntSol, Intelligent Platforms)" <martyn.welch@gefanuc.com>
Subject: RE: PCI interrupt queries
Date: Thu, 21 Aug 2008 12:12:00 +0100
Message-ID: <1CADFA951940554D86FBD8B24BBFF3A001E73AB8@LONMLVEM08.e2k.ad.ge.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com> <48AB2E3C.2070600@keyaccess.nl> <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com> <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com> <48AD4D3C.3010703@keyaccess.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
In-Reply-To: <48AD4D3C.3010703@keyaccess.nl>
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
To: Rene Herman <rene.herman@keyaccess.nl>
Cc: Rajat Jain <Rajat.Jain@infogain.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Rene Herman wrote:
> On 21-08-08 11:31, Welch, Martyn (GE EntSol, Intelligent Platforms)
> wrote:=20
>=20
>> Rajat Jain wrote:
>=20
>>> OK. But who does it in an embedded environment (PPC for eg) where
>>> there is no POST software. The first piece of code that gets
>>> executed is U-boot and then the kernel. So who writes the LINE
>>> value into the config space?
>>=20
>> U-boot does. There is a fairly standardised way to connect PCI
>> interrupt lines, especially for PCI slots where various cards can be
>> plugged in:=20
>=20
> How peculiar, a boot loader doing hardware programming...

On the PowerPC architecture u-boot acts as the equivalent of BIOS and a
bootloader on the x86 architecture.

Martyn

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

