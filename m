From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re: Video playback on osk with linux-2.6.18
Date: Sat, 21 Jun 2008 11:49:14 +0800
Message-ID: <804dabb00806202049i13b7031ej7ee7f5857bea23cf@mail.gmail.com>
References: <a1d91fa0806181223h19bb9f9dxb67300bfea953de9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-omap-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=3aurD0VMu5e8Ecfat5PzhSl3XMW+Bt293AiTNWmw0kU=;
        b=D7gYbfh8sYsOocBl5tuM9LYu8pWsOr7K2MASQx4BNH9XmsJKXy6CliZ9hED+kSjOhD
         vMoRONXc4cRBzNUFgHgCMutbdf3ctZ4Z4ncsktDtMsTgXZkpcP7cHCkKOdnBWjLx3mGM
         RcVtP92l2YuCSO//ZfOn/SOSuIebXMTqSItIE=
In-Reply-To: <a1d91fa0806181223h19bb9f9dxb67300bfea953de9@mail.gmail.com>
Content-Disposition: inline
Sender: linux-omap-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: mohammed shareef <mdshareef@gmail.com>
Cc: omap <linux-omap@vger.kernel.org>, linux-newbie@vger.kernel.org

Wow....looks like a exciting gadget to play with....

On Thu, Jun 19, 2008 at 3:23 AM, mohammed shareef <mdshareef@gmail.com> wrote:
> Dear All,
>
> I have an OSK-Omap5912 with linux-2.6.18 running on it. i want to add
> video playback support to it. Has someone done this before? could you
> suggest some ways to do it? thank you.
>
> regards,
> Mohammed


First:

From www.omap.com===>under "Design and Support" and "Sample" u can
possibly find the technical document, and program samples and
libraries to program the device.   Or enter the part number in the
search box and find.

or this site:

http://omap.spectrumdigital.com/osk5912/ ==> here u can find all the
hardware datasheet, software/hardware userguide - all specific to
osk5912.

http://omap.spectrumdigital.com/osk5912/bsp/index.html ==> codes samples here.

2nd:

There is a mailing list for this, subscribe here (and this one looks
quite active...not sure how it compared with the one at
linux-omap@vger.   Similarly, for Linux Kernel Newbies, the mailing
list at kernelnewbies@nl.linux.org is much more active than that of
linux-newbie@vger.

http://linux.omap.com/mailman/listinfo/linux-omap-open-source

and in particular, this email has a small program sample to control the device:

http://linux.omap.com/pipermail/linux-omap-open-source/2006-January/006205.html

3rd:

In the kernel source drivers/video/omap directory - not sure how
useful, but datasheet from above should source be the best.

-- 
Regards,
Peter Teoh
