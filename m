From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: nVidia lockups
Date: Sat, 27 Jul 2002 09:36:39 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02072709363903.00307@unix.pa3gcu>
References: <Pine.LNX.4.21.0207270933380.30515-100000@Consulate.UFP.CX>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0207270933380.30515-100000@Consulate.UFP.CX>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Saturday 27 July 2002 08:57, Riley Williams wrote:
> Hi Haines.

Hi All, i did not know Riley was watching here as well, Hi Riley.

I have not snipped this mail, i figured the point would be lost if i did.
So sorry for its lengh.

I have a  Nvida card, i tryed the driver in question, i had problems with 2 
things, VMWARE and BTTV (V4L using a wintv card bt878 chipset), both
would  lock up the machine solid.
So i simply use the 'nv' driver from xfree and all works like a charm.
Another thing which was not mentioned was a kernel version where the
problems are/were occuring, i use 2.2.19 and/or 2.2.20.

I could not agree with Riley more, he has stated the problem at hand very 
well IMHO.

>
> > A thread is running on comp.os.linux regarding a problem of system
> > hang (no keyboard; no mouse; system clock stops) perhaps every other
> > week or so.
> >
> > Three people so far have contributed to this recent thread which has
> > just begun, and the common element seems to be one of the nVidia
> > graphics cards, although otherwise the system differs.
> >
> > Although perhaps OT, could I ask if there are others on this list
> > who have the same kind of hang and if they rely on the nVidia?
>
> There have been a wide variety of problems reported on systems using
> nVidea video cards. I don't use such cards myself, so have no direct
> experience of them. However, from reading the messages I've seen that
> refer to this problem, the following appear to be the relevant factors:
>
>  1. The nVidea drivers are apparently binary-only drivers, if the
>     various threads I've seen are correct. As stated above, none
>     of my systems use nVidea cards so I have no direct experience
>     to confirm this one way or the other.
>
>  2. Most binary-only drivers are compiled for a particular set of
>     kernel options, and are unusable with almost any change to the
>     kernel options. This basically means that it is near enough
>     impossible to make any change to one's setup without causing
>     problems if one is using any binary-only driver whatsoever.
>
> Because of the number of problems hidden in various binary-only drivers,
> the kernel developers are usually unable to make constructive use of any
> fault reports from systems using binary-only drivers, and are pretty
> much forced to respond with "Send this bug report to the authors of the
> XXXX module as it's a binary-only module that we can do nothing with."
>
> Also, if the report relates to a system using two or more different
> binary-only modules from different authors, then even that isn't
> appropriate as the authors of the different binary-only modules will
> just blame each other's modules for the problem.
>
> Incidentally, the binary-only module with the biggest bug-ridden
> reputation is VMWARE and its reputation is such that the developers
> just ignore any bug report where it appears.
>
> Best wishes from Riley.
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
