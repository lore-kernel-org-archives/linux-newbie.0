From: Shaggy Im-erbtham <shaggy@loxinfo.co.th>
Subject: Re: error: failed dependencies -----> rpmlib
Date: Sat, 20 Apr 2002 00:42:24 +0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4.3.2.7.0.20020420003958.026f16b0@lox2.loxinfo.co.th>
References: <4.3.2.7.0.20020419091135.011a3f00@lox2.loxinfo.co.th>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <009b01c1e7ac$3d698040$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Tom Beer <mailings@analogon.com>, linux-newbie@vger.kernel.org

Thanks, Tom.

My rpm version is 3.0.4.

Is this outdated or what? And would upgrading the rpm package also
automatically upgrade rpmlib???

I had trouble logging into rpmfind.net where I could probably find out.

Shaggy

At 16:12 19/4/02 +0200, Tom Beer wrote:
>Hi,
>
>
>Which version of rpm are you using?
>A generally good resource finding
>rpm's is rpmfind.com and rpmfind.net.
>
>Greets Tom
>
>
> > I was attempting to install a package (specifically ltsp_core from
> > www.ltsp.org)
> > on RedHat 6.2 with the following
> >
> > rpm -ivh ltsp_core-3.0.0-1.i386.rpm
> >
> > and got this error
> >
> > error: failed dependencies
> > rpmlib (PayloadFilesHavePrefix) <= 4.0.0 needed by ltsp_core-3.0.0-1
> > rpmlib (CompressedFileNames) <= 3.0.4-1 needed by ltsp_core-3.0.0-1
> >
> >
> > I assume I have an out-of-date "rpmlib" package, tried searching the net
> > for it, but came up with nothing I could download and upgrade.
> >
> > Could anybody help?
> >
> > TIA
> > Shaggy
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> >
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
