From: Beolach <beolach@comcast.net>
Subject: Re: unicode under Linux question
Date: Tue, 30 Mar 2004 01:43:46 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40693342.4030204@comcast.net>
References: <Pine.LNX.4.58.0403291339210.1036@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0403291339210.1036@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

James Miller wrote:
> I don't know if this list is the right place to ask questions about using
> unicode fonts under Linux.  But maybe it's at least a place to start.

You can always ask.  You just might not get answered.  I just skimmed
through the Unicode-HOWTO in TLDP, which is unfortunetly over 3 years
out of date, but it does have some mailing lists (hopefully still
active) dedicated to Unicode under Linux.  You might want to try asking
on one of those mailing-lists for further info.
<http://www.tldp.org/HOWTO/Unicode-HOWTO-7.html#ss7.1>

> So, here goes.  I may be needing to use some unicode fonts (i.e., input
> unicode), and so have been doing a bit of research on the web.  I think
> the overall effect of that is that I'm getting more confused, rather than
> more enlightened.  Maybe getting some input from more experienced Linux
> users here can help clear the fog.  Here's what I think I understand, in
> general terms, about unicode input: the operating system handles it, and
> there should be a way of "telling" the OS that a unicode font is desired.
> I guess it shifts its mapping of keyboard keys somehow when so "told."
> Under other, less versatile operating systems, I think the keyboard
> mapping can be changed like this by using a certain key sequence - e.g.,
> left ctrl-shift.  Is there some counterpart like this under more versatile
> operating systems like Linux?  This, at present, appears to me the main
> issue I need to work out, since I know that alot of "higher level"
> applications that run under Linux (e.g., open office) can handle unicode
> fonts - at least they can display them.  But in order to input them, as I
> understand it, requires some keyboard implementation at the operating
> system level.  Corrections, comments and pointers welcome.
>
> Thanks, James
>

Well, as I understand it, you're half right.  In Linux, there are four
types of keyboard input: scancode (aka raw), keycode (aka mediumraw),
ASCII (xlate), and utf-8 (Unicode).  When you are working from a normal
Linux console, you would usually be in either ASCII or utf-8 mode.  In
these modes, the kernel does exactly what you describe, mapping the
key-presses to the either the appropriate ASCII code or Unicode font
character.  Today, most Unicode fonts have the keymap builtin, so when
the kernel loads that font, it knows which characters to map each key to.

But when you are working in X (as you would be with OO), or some console
programs, the kernel's keyboard driver is put into scancode (raw) mode,
which means the keyboard scancodes are transmitted directly to the
user-space application without any translation or mapping at all, and
the application does it's own mapping.  When you are running OO, I'm not
entirely sure what actually does the key mapping, the X server or OO -
my guess is the X server.  I believe at this point both X & OO should be
Unicode compatible, so hopefully you won't have to do any special
configuration to use Unicode, but I don't have much experience myself,
so I'm not 100% positive.

More info:
Keyboard-and-Console HOWTO - Describes how the keyboard works:
<http://www.tldp.org/HOWTO/Keyboard-and-Console-HOWTO.html>

Unicode HOWTO - Describes how to use Unicode with Linux:
<http://www.tldp.org/HOWTO/Unicode-HOWTO.html>

Hope this helps,
Conway S. Smith

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.3 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFAaTNCGL3AU+cCPDERAv54AJ96BEDr9ROfgorvigf5EFsJMlue1ACg4yPI
rKbP2waJY6hRX/QlWtR2Zc0=
=/cNQ
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
