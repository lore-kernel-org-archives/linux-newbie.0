From: Heimo Claasen <hammer@revobild.net>
Subject: Re: round of questions regarding modem
Date: 09 Jun 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306090244.h592i0j4025999@ev6.be.wanadoo.com>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Firstly, you need not
> disable Com 2 in the system BIOS
- oumpf, how's that done there ? -, but just leave the BIOS settings
what they are (re serial ports, AFAIK the BIOS just looks and registers
what's there); real _settings_ are done with the jumpers.

Hmm, somewhat cumbersome to use setserial to find out what the actual
settings of the jumpers are. If you can run DOS, there's number of
small utilities (take IRQCHECK which you can find at my place) which
immediately tell - no need even to reboot, you can change jumper
settings live, and if you do it cautiously you can even take out and
re-seat the comm-card (question of getting at the dang jumpers.)

Once you got jumpers for port and IRQ right to what you want them to be,
"setserial" will indeed be needed for any combination which is _not_
COM1-IRQ4 or COM2-IRQ3.  (These latter, I found out to my hard surprise,
are hardwired to the kernels.  Nothing to do, as far as I could find out,
with the capability or not to check for ISA devices.)
Place a pertinent "setserial" command line _early_ into one of the
startup batches.

Another hitch: this latter step will _not_ be sufficient to make the
Mandrake system find/activate the modem - not even with "linuxconfig"
or similar... but the setup in "kppp" will indeed do it. (And _after_
having run that, even the Mdk-specific console command "ifup pppN" will
work; heaven knows why, I never got some insight on this in an earlier
thread here in this list on this and had to try out with _many_ errors.)

So that would confirm your heuristic approach indeed -
> perhaps if I simply (1) configured the modem to a specific port and (2)
> told kppp that the device was at that port I would be done.

But you have to decide on _setting_ which IRQ too. More on that to follow.

BTW, a Debian sytem would indeed have enough with this... but only with
running in console mode - g(nome)ppp wouldn't connect the modem there,
you'd have to open a console terminal to start it. (Heaven is asked for
an answer again. And don't ask _me_ about the myriad of "permission"
questions raised if "a user", and not "root", wanted to start a ppp
connection. Arghhh.)

At the root of the problem is indeed not the setting of the port address
but that of the irq number (and eventually resulting interrupt conflicts
which are quite difficult to find out about - there's _no_ reliable error
notification of _any_ sort in those cases but just everything else which
would eat your time and nerves to find out to be a dead-end.) Therefore,
choosing a liable IRQ-no. is decisive.

There, and astonishingly, a mixture of PCI- and ISA-devices is quite well
digested by most systems/distros. (Possibly because the distribution
of IRQs on the PCI bus is more flexible; I see your example for the
soundcard quite often, most of them "want" IRQ 5 and then get another one
and are content with it.)
Looking in /proc/(io-ports, interrupt[s] ?  - forgot the _correct_
syntax, looking _this_ up would take anolther more long minutes) may give
a hint to the _presently_ used ones.
Some are "untouchables" and will show up as that (0, 1, or 14 and 15,
IIRR) but astonishingly - again - one _can_ share unused ones, e.g. 2
and 9 (which are often "cascaded" in the BIOS or even hardwired as such,
and usually for the first parallel/printer port) between _physically_
unused devices at a given moment.  Chances are good that the modem - with
use for dial-in connections - is needed when a printer (mostly on Irq 2,
7, or 9) is not switched on.

(Someone knowledgeable about this ? I found, by trial and error, that
"the system" quite well reserves an IRQ for the printer[s] but is tolerant
about using that IRQ, _if_ that printer is not "on", for a temporary modem
connection; possibly because Linux printing just would not _employ_ IRQs
but "polls" ?  Anyway it _works_ like that, and with both ISA and PCI
multiport comm-cards...  Thanks, Heaven.)

A REMark on Mandrake "9.1" (haven't used it yet, latest here is 8.2) -
that one is boasted with a "minimum install below 70 MB" and thus,
_should_ be appropriate for "unmodern" machines.
   (Heaven, please pardon me that I run all my mailing with a
   laughable non-system which takes just a bit more than 3 MB only.)
In my - certainly limited - experience Mandrake hitherto was the "distro"
which did cope comparably well with hardware detection; and at least up to
"8.2" (and I think that was the last version before "9.0") did this quite
well with all sorts of ISA devices, other distros needing much more
"manual" work to have them recognize such gadgets.
So question: Is that capacitxy there gone too ?
(Ouff, no need to "upgrade" that one then ever again.)

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-06-08
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
