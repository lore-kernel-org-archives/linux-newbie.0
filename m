From: caszonyi@rdslink.ro
Subject: Re: Sendmail-8.10 / 8.12 diffs???
Date: Tue, 13 Jan 2004 00:17:05 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0401130015170.880@grinch.ro>
References: <20040112201859.GA784@lnx2.w8mch.ampr.org>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040112201859.GA784@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Hal MacArgle <haltec@kvinet.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 12 Jan 2004, Hal MacArgle wrote:

> Greetings: I can't seem to find an answer to this on the Web, so
> thought I'd try here.. Unfortunately all my Sendmail books don't
> cover the really up-to-date versions..
>
> I've been using Sendmail-8.11.6 for some time with the
> masquerade_envelope FEATURE so the "From_" line is correct on the
> envelope.. With 8.11.6, after building a new .cf file, I merely had
> to make an edited entry in that file adding the ISP domain to the
> "CM" and "DM" lines..
>
> 8.12.9 builds with the FEATURE but neither CM or DM is found.. I note
> that 8.12 creates two .cf files now instead of the original one,
> probably for security reasons I guess.. Neither include the CM or DM
> lines.. Of course the older .cf files will not work with the newer
> versions..
>
> What do others do; edit /etc/HOSTNAME as the ISP's domain name? Or,
> do most, merely not worry about the envelope address??
>
> Maybe there's a site that could explain some of this..
>
> Any suggestions or comments? TIA and Appreciate!!
>

theorethically you shuold not edit sendmail cf files. :-)
You should build mc files to suit your need and generate the cf from the
mc


--
"A mouse is a device used to point at
the xterm you want to type in".
Kim Alm on a.s.r.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
