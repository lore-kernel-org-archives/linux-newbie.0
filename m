From: Ray Olszewski <ray@comarre.com>
Subject: Re: Help with Fedora Core 2 internet access
Date: Sun, 22 Aug 2004 08:05:15 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040822074801.0208ece0@celine>
References: <41282B37.8050102@pobox.com>
 <Pine.LNX.4.58.0408212252460.1802@debian-emach>
 <41282B37.8050102@pobox.com> <41282EA9.4040202@pobox.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41282EA9.4040202@pobox.com>
References: <41282B37.8050102@pobox.com>
 <Pine.LNX.4.58.0408212252460.1802@debian-emach>
 <41282B37.8050102@pobox.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Replying to both your messages together.

>At 10:12 PM 8/21/2004 -0700, Adam Boettiger wrote:
>James and Ray -
>
>Thanks for the help.
>
>I couldn't figure out how to install the linuxant.com solution, although 
>that looks like it would work.

Did you look at the instructions on the following URL?

http://www.linuxant.com/driverloader/wlan/install.php?PHPSESSID=c62f3bc5fc1f9c6e87f206b3c1967db5

"Method A" there offers specific (and, seemingly, very simple) instructions 
for rpm-based distros, which I assume Fedora is. Certainly the Debian 
instructions ("Method B") are crystal clear (I use Debian here, so can 
judge DEbian procedures a bit more readily than Fedora procedures).

But from reading on at this URL, I note that you have to go on to install a 
driver from the card vendor. This makes me think that linuxant's solution 
offers less than meets the eye, and you might do as well, whihe saving 
$19.95, to use the (free) ndis package at the Sourceforge site (which lists 
a Fedora package).


>In Google I narrowed it down to this but have no idea how to install it or 
>configure it.
>
>http://sourceforge.net/mailarchive/forum.php?thread_id=4767653&forum_id=38938

Not being a Fedora user, I cannot give you specific help on this. I can 
tell you that apt-get is the standard Debian (not Fedora) package 
installer, so unless RH has adapted it for use in Fedora, the suggested 
procedure is non-standard for that distro (which I would expect to be rpm 
based).

At 10:27 PM 8/21/2004 -0700, Adam Boettiger wrote:
>Eh, I guess it's still in Alpha or Beta...
>http://www.redhat.com/archives/fedora-list/2004-May/msg06271.html
>
>So hmmm.
>
>Do I now have to go out and buy a Fedora-friendly wireless card, even 
>though wireless comes preinstalled on the computer?

Did you look at the ndis package that I told you about (see my prior 
message for the URL)? My son just set up a wireless-G LAN at his apartment 
using it. He's still having a bit of trouble with it (involving some sort 
of sensitivity to the timing of when he initializes the interface during 
boot/init; I don't know the details), but basically it works.

>Aparently so.  If so, is there a list or recommendations somewhere for 
>Fedora Core 2 friendly 802.11x cards and drivers?

It would help if you replaced "x" with either "b" or "g". As far as I can 
tell, there are very few 802.11g cards (chipsets) with native support at 
this point, but a fair number of 802.11b cards (still only a few chipsets, 
though).

If you are not finding the sort of list you want in the usual Fedora 
support channels (and I infer from your other messages that you've been 
diligent about looking there), then you'd do best to replace "Fedora Core 2 
friendly" with the less demanding "Linux friendly" in your searching. By 
that standard, one of the URLs I already provided has a big list of 
cards/chipsets, along with information about which ones have been found to 
work with various of the native-mode (not ndis) drivers that do exist.


>Surely I am not the first person who has wanted to use linux on a WLAN via 
>cable modem access...

Hardly. I did it a couple of years ago, with a wireless-B card. At the 
time, though, we were careful to get one of the (then, very few) cards with 
native Linux support (via the wlan-ng package, which back then was pretty 
much the only game in town). Since I gathered that you were loking for 
wireless-G, not wireless-B, support, I didn't mention wlan-ng in my prior 
message. But if you can make do with the slower speed of 802.11b, then you 
might look at it (it's also at Sourceforge).






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
