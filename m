From: Eric Bambach <eric@cisu.net>
Subject: Re: pppoe * rp-pppoe * pppd?????
Date: Sun, 27 Nov 2005 15:22:29 -0600
Message-ID: <200511271522.29128.eric@cisu.net>
References: <20051127200334.GA1427@lnx2.w8mch.ampr.org>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051127200334.GA1427@lnx2.w8mch.ampr.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Sunday 27 November 2005 02:03 pm, Hal MacArgle wrote:
> Greetings: I'm lost in a bewilderment of HOWTO's, Docs, FAQ's, etc
> about PPPOE and ADSL Modems.. The more I read the worse it gets.
> <grin>
>
> However, my one query for the list is:
>
> Using the Roaring Penguin PPPOE client, rp-pppoe; do I really need
> PPP support too?? Or does that client include PPP support.. No succes=
s
> yet I've got to eliminate some parameters..

Yes. As far as I know rp-ppoe are wrapper scripts that still use ppp as=
 a=20
backend.

> Both are legitimate packages in Slackware 10-l and I'll go ahead and
> try all the different ways but could use some possible comments..
>
> Cheers and TIA..

--=20
----------------------------------------
--EB

> All is fine except that I can reliably "oops" it simply by trying to =
read
> from /proc/apm (e.g. cat /proc/apm).
> oops output and ksymoops-2.3.4 output is attached.
> Is there anything else I can contribute?

The latitude and longtitude of the bios writers current position, and
a ballistic missile.

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0--Alan Cox LKML-Decembe=
r 08,2000=20

----------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
