From: whitnl73@juno.com
Subject: Re: commport settings
Date: Mon, 30 Dec 2002 14:45:31 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021230.144829.134684296.0.whitnl73@juno.com>
References: <200212300521.gBU5LBq22018@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212300521.gBU5LBq22018@ev6.be.wanadoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 30 Dec 2002, Heimo Claasen wrote:

> Thanks, Lawson, for the detailed answers. BTW, I was searching all
> over the systems here to find the chat script (and I'm used to it using
> a DOS-chat all the time whdere precisely you set the modem's adrs and
> irq) but couldn't _find_ the corresponding thing here, e.g. in that
> Mdk-install: there is a chat script in it, but it does _not_ contain
> anything related to modem initiation etc., only the dialogue and
> messages when connected with the dial-in point already.

Well, modem init strings are pretty much unique to individual modems,
so a distro might not want to include one.  A wrong (or mIXed
case) command will cause most modems to behave in an unspecified manner,
often to hang.  Normally, the first thing you send from a chat script is
the init string, then the dial command.  A chat script can be a separate
file named in the connect parameter, or inline on the pppd command or
options file.  man chat is a good man page, and so is man pppd - it is a
bit long, but you can use pppd so many different ways.
>
> For instance, either on the DOS command line or in a chat.scr you
> would have base address (in your script indeed referred to as
> /dev/ttyS2) _and_ irq specified, besides of speed, crtscts, etc.

Yes, but that is DOS.  DOS doesn't really have any comm support, it is
up to the app to supply it, so it would have to know what to use for the
IRQ.
>
> What I do not understand in the example of your second, bash script
> is, where this one gets the variables "$6" and "$1" from, and the
> specifications for the "$DNS1" and "$DNS2". Where are these set ?

pppd sets them if you tell it "usepeerdns" - if the peer supplies them.
it calls the ip-up script with positional parameters - ahh, just scan
man pppd for the paragraph
/etc/ppp/ip-up
(you can scan man pages for strings like so:

/\/etc\/ppp\/ip-up

/ introduces the string, so to put it in the string, you must excape
it.)
>
> (REM, using the Waterloo TCP/IP arrangement in DOS - which is a port
> from *nix -, I get a bit confused with the fact that you have a
> permanent "ip-up" script.  In the very similar DOS sequence of routines,

Well, the variables get passed to it as parameters and environment
variables.

> with chat running first and then a packet driver loading [with latter
> using a configuration script which contains, e.g., name servers, packet
> volume etc.] the "ip-up.bat" script gets written anew each time a
> ppp-connection is done _by_ the driver and run from it. The WATTCP.CFG
> there contain both permanent parts and what is appende into it by
> ip-up.bat, like with resolve.conf in your example.)
>
> Well, I'll spend some more hours again to chase those scripts on the
> two different installs here (haven't got a Sclackware active at the
> moment). And it's always good to have examples of "weird" things as
> these show more different options and syntax idiosynchracies.
>
> On some of the points you made:
>
> > ... trying to probe what IRQ it uses is not that easy.
> Hmm, how come ? for at least fifteen years I use a little DOS utility
> wich spits out the list of existing commports _and_ the irq.s related to
> each. And there had been quite several of such little DOS helpers; a
> bit more difficult to find them these days.
>
read man setserial on autoconfig and auto_irq.

> > ...anything you don't specify to pppd on the command line or options file
> > will be left as is.

> There _is_ a "pppd.options" file but I couldn't find either there or in the
> "man" any hint on how to use it for precisely the issue at hand.

if you mean the IRQ, you can't.  pppd doesn't concern itself with port
address or IRQ, but leaves them to the OS (and setserial).

It is usually /etc/ppp/options.  They work essentially the same as
options on the command line; some a nonroot user cannot specify on the
command line.
>
> > What are pon and ifup?
> These are bash commands in Debian and Mandrake, resp., for starting
> ppp[n] from the console (I think it's "p-on pppN" in Slackware,  just
> to add a bit to the confusion); in a way, the correspondings to kppp
> which is used from X only.

ifconfig ppp0 up?  I put that in /etc/ppp/ip-up.
>
> // Heimo Claasen //<revobild at revobild dot net>// Brussels 2002-12-30
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net
>
Lawson
>

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
