From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Sendmail-8.10 / 8.12 diffs???
Date: Tue, 13 Jan 2004 10:09:42 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040113150942.GB517@lnx2.w8mch.ampr.org>
References: <20040112201859.GA784@lnx2.w8mch.ampr.org> <Pine.LNX.4.53.0401130015170.880@grinch.ro>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.53.0401130015170.880@grinch.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 01-13, caszonyi@rdslink.ro wrote:
> On Mon, 12 Jan 2004, Hal MacArgle wrote:
> 
> > Greetings: I can't seem to find an answer to this on the Web, so
> > thought I'd try here.. Unfortunately all my Sendmail books don't
> > cover the really up-to-date versions..
> >
> > I've been using Sendmail-8.11.6 for some time with the
> > masquerade_envelope FEATURE so the "From_" line is correct on the
> > envelope.. With 8.11.6, after building a new .cf file, I merely had
> > to make an edited entry in that file adding the ISP domain to the
> > "CM" and "DM" lines..
> >
> > 8.12.9 builds with the FEATURE but neither CM or DM is found.. I note
> > that 8.12 creates two .cf files now instead of the original one,
> > probably for security reasons I guess.. Neither include the CM or DM
> > lines.. Of course the older .cf files will not work with the newer
> > versions..
> >
> > What do others do; edit /etc/HOSTNAME as the ISP's domain name? Or,
> > do most, merely not worry about the envelope address??
> >
> > Maybe there's a site that could explain some of this..
> >
> > Any suggestions or comments? TIA and Appreciate!!
> >

> 
> theorethically you shuold not edit sendmail cf files. :-)
> You should build mc files to suit your need and generate the cf from the
> mc

	But of course; but can you advise me how to enter the
masqueraded domain in the .mc file?? I sure can't find it. <grin>

Cheers,

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
