From: Peter <heisspf@skyinet.net>
Subject: Re: dma turned off
Date: Fri, 12 Nov 2004 16:19:43 +0800
Message-ID: <20041112081943.33B1D480C6@heisspf>
References: <200411111658.28958.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Thu, 11 Nov 2004 16:58:28 +0100."
             <200411111658.28958.pa3gcu@zeelandnet.nl> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: linux <linux-newbie@vger.kernel.org>

On Thursday 11 November 2004 04:13, Peter H. wrote:
> Hi,
>
> Slackware 10
>
> When I switch to kernel 2.6.7 I get the following error message on bo=
ot:
>
> =A0* Warning: The dma on your hard drive is turned off. *
> =A0* This may really slow down the fsck process. *


pa3gcu@zeelandnet.nl said:
> I suggest you use www.google.com/linux and type in "2.6.7 DMA" (witho=
ut
> quotes), lots of hints there on 2.6.x kernels and DMA.

> I would go as far as saying its NOT you or your hardware at fault,man=
y have
> problems with DMA and friends at the minute. One draw back of using a=
n up to
> date kernel which has not been widely tested.=20

That's what I did before posting on the subject. That's why I asked whe=
re to=20
put hdparm -d 1 /dev/hda in /etc/rc.d since the error message comes ear=
ly on=20
booting and putting it into rc.local it will be executed at the end of =
boot. I=20
put it into rc.S and still get the error message:

 setting using_dma to 1 (on)
> >  HDIO_SET_DMA failed: Operation not permitted
> >  using_dma    =3D  0 (off)

=46urther when booted with 2.6.7 kppp takes again 22 seconds to come up=
 against=20
11 with 2.4.26. Therefore I resign from the idea of using kernel 2.6.7.

Signing off. Thanks everybody for the help, much appreciated.

Regards
--=20
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
