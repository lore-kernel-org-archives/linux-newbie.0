From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 3 button optical mouse
Date: Tue, 30 Mar 2004 07:40:38 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403300840.38666.pa3gcu@zeelandnet.nl>
References: <20040329231925.GC12375@panix.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040329231925.GC12375@panix.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Rei Shinozuka <shino@panix.com>, Newbie Linux Users <linux-newbie@vger.kernel.org>

On Tuesday 30 March 2004 01:19, Rei Shinozuka wrote:
> is it possible to get a 3-button optical mouse to replace it? =A0all =
of
> the mice i can find have scroll wheels and i have no idea if they
> work with linux, and they seem like they would be uncomfortable as
> a 2nd mouse button. =A0advice?

If you simply want a 3 button optical no problem, just plug it in and r=
estart=20
gpm.

Wheel mouse work as well no problem, however you would need to reconfig=
ure=20
your system, possably using 'mouseconfig' depending on which system you=
 have=20
of course.
And secondly.
You would also be better of editing /etc/X11/XF86Config(-4) by hand, th=
en=20
needed text is;

Section "InputDevice"
        Identifier  "Mouse1"
        Driver      "mouse"
        Option       "Corepointer"
        Option      "Device" "/dev/psaux"
        Option      "Protocol" "IMPS/2"
        Option       "Buttons" "5"
        Option      "Emulate3Buttons" "off"
        Option      "ZAxisMapping" "4 5"
EndSection

That will make X use the scroll wheel.

--=20
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
