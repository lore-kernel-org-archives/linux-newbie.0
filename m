From: James Miller <jamtat@mailsnare.net>
Subject: Re: Help with Fedora Core 2 internet access
Date: Sun, 22 Aug 2004 18:47:30 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0408221825260.1802@debian-emach>
References: <Pine.LNX.4.58.0408212252460.1802@debian-emach> <41282B37.8050102@pobox.com>
 <41282EA9.4040202@pobox.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41282EA9.4040202@pobox.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 21 Aug 2004, Adam Boettiger wrote:

> Eh, I guess it's still in Alpha or Beta...
> http://www.redhat.com/archives/fedora-list/2004-May/msg06271.html
>
> So hmmm.

The earlier sourceforge post you supplied a url for seemed to be a
module/driver that can be installed to a Fedora system using their package
management system (yum is one of them that works alot like Debian's
apt-get: you type the name of the prog you want to install using the
package manager's frontend - or from the cli - and it downloads and
installs the software plus dependencies).  Looks like maybe there are 2
packages to install, judging from that post.  I can just give a rough
outline of how that works, based on the assumption that it works similarly
to Debian's package management system (which I use).  But that is not
going to do you any good if you can't get on the 'net and connect to a
package repository, now is it?

> Do I now have to go out and buy a Fedora-friendly wireless card,
> even though wireless comes preinstalled on the computer?

Be prepared for it coming down to that, yes.  I'm no seasoned Linux
veteran (been using it full time for more or less hobbyist purposes for
the last 3 years or so), but getting wireless working has proved a real
challenge for me.  Research on the 'net has indicated to me that it's
challenged those alot more adept than me as well.  Like I said, if you're
new to Linux and install a distro and it just happens to have detected and
set up your wireless NIC, you are one of the blessed few.  On the linuxant
solution Ray pointed to, I have the following to relate.  I have a young
budding Linux guru friend who tried to get a modem driver/module from them
working and finally just gave up.  It basically requires compiling a
module - not an easy thing to do indpendently of a complete kernel
recompile.  I know others who are at about my level of inexpertise who
have tried this and failed as well.  Prepare for headaches, or pray for
great luck.  Wireless gurus onlist: I would be delighted for you to prove
me wrong on this - please do so at your liesure.

> Aparently so.  If so, is there a list or recommendations
> somewhere for Fedora Core 2 friendly 802.11x cards and drivers?

The list Ray mentioned is the best around, so you should consult it to see
what might and might not be expected to work.  I have formulated the
following rule to follow, should I ever try tackling wireless networking
again: break down and buy a Cisco Aironet.  They're one of the most
expensive wireless cards you can get, but they are among the best
supported under Linux: I think the modules supporting them are already in
the Linux kernel.

> Surely I am not the first person who has wanted to use linux on a
> WLAN via cable modem access...

Certainly not the first.  Only time will tell if you're among the
manically obsessive-compulsive few who actually get it to work.  Or maybe
you'll be among those happier to part with your cash (by buying a new
card) than to go through the headaches of trying to make what you have
work.  Or maybe you'll just ditch Linux in disgust: I've certainly been
tempted myself to do that.  I happen to be more dusgusted at M$ than I
could ever be at Linux though (the BSD'ers' joke is true of me: I don't
use Linux because I love Unix, I use it because I hate M$).

Best of luck, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
