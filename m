From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Alternate network connections
Date: Mon, 23 Jun 2003 08:41:21 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0306230837580.29223@reg_kipling>
References: <Pine.LNX.4.53.0306210129420.21796@reg_kipling>
 <200306221016.04676.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306221016.04676.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

On Sun, 22 Jun 2003, pa3gcu wrote:

> On Saturday 21 June 2003 02:40, Ken Moffat wrote:
> > Well, looks like I've finally got a kernel in my iBook which is going to
> > allow all the things I want but haven't had (principally, accessing the
> > rtc and ppp), so now I need to figure out how to manage the
> > connectivity.
>
> I've seen no reply to this mail here as yet so here goes.
>
> You would have been well advised to have mentioned which distro you are using,
> that way more system spesific information could have been given, anyway here
> goes.
>

 Sorry, in this case it's Yellow Dog Linux (2.0, I think)
>
> The ethernet device does not need to be downed to allow you to start ppp, all
> you need to do is delete your 'default route' via eth0 then start ppp.
>
> >
> > (b) connection to my home network via eth0
>
> Using the above does what you want.

 Thanks, that's what I was looking for.

>
> >
> > (c) modem connection via /dev/ppp0.
>
> There is a HOWTO for PPP its called PPP-HOWTO and is found on most systems in
> /usr/doc/*HOWTO* or /usr/share/doc/*HOWTO*
>

 Thanks for this pointer, I'd mislaid it.
> >
> > I can live with having to reboot to change from network to ppp or vice
> > versa, but I'm not at all familiar with any of this.  I'm not even sure
> > what I should search for on google to get pointers on how to do this.
> > Anybody got any advice, please ?
>
> There is abosolutly no need to reboot at anytime to do what you want.
>

 Agreed, but I thought it might be simpler, the box is never booter for
more than two or three hours at a time.

Thanks again.

Ken

-- 
You'll always find me out to lunch
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
