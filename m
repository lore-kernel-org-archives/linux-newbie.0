From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: linux kernel: irq 11: nobody cared!
Date: Tue, 20 Jul 2004 21:52:53 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407202138320.27512@ppg_penguin.kenmoffat.uklinux.net>
References: <200407201939.30300.Mr.MailingList@ntlworld.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200407201939.30300.Mr.MailingList@ntlworld.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: Mr MailingList <Mr.MailingList@ntlworld.com>
Cc: linux-newbie@vger.kernel.org

On Tue, 20 Jul 2004, Mr MailingList wrote:

>
> Hi have a very irritating problem and so far I have been unable to fi=
nd a
> solution to it.
>
> I have supermicro P3TDDE mob with VIA Apollo 266 chipset and SuSe 9.1=
 with
> kernel 2.6.5-7.95-smp. The problem is that if I leave the PC unattend=
ed i.e
> there is no keyboard or mouse IO activity for about 20 minutes those =
input
> devices get disabled. The keyboard and mouse is connected the PC via =
Belkin
> KVM USB switch. Looking through the message file I found that the fol=
lowing
> recodes being logged each time it happens (see below). So far the onl=
y remedy
> is to telnet to the machine and reboot it. I suspect that the problem=
 must
> the combination of 2.6 kernel and the hardware. I did not have this p=
roblem
> with kernel 2.4 or I don't have this problem when I dual boot to XP. =
I have
> another supermicro mob (on the same Belkin KVM switch), P6DBE - BX ba=
sed,
> running the same kernel and that PC does not have this problem. I can=
 leave
> it for hours and nothing happens. I wonder if it's possible somehow t=
o
> reenable the IRQ11. As I said the problem is very irritating since ev=
ery time
> I go to make myself a coffee I have to turned blasted PC off.
>
> Thanks - Tom
>
> Jun 24 07:18:51 linux kernel: irq 11: nobody cared!
> Jun 24 07:18:51 linux kernel: Call Trace:
> Jun 24 07:18:51 linux kernel:  [__report_bad_irq+36/144]

 A quick search on google suggests there are/were a lot of these,
possibly related to the IRQ handler rather than the individual drivers.

 Possible workarounds, in increasing order of pain, might include
booting with whatever the option is to disable apic, using a non-smp
kernel (if you only have one cpu, of course), trying a newer kernel fro=
m
SuSe if there is one, or trying a newer kernel from kernel.org.  This
looks the sort of thing where you might need to try the latest 2.6.8-rc
or even -mm (if it isn't fixed in 2.6.7).  These aren't normally
recommended, particularly for production boxes, but I guess it isn't in
production if you telnet to it.

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
