From: "Tom Beer" <mailings@analogon.com>
Subject: Re: error: failed dependencies -----> rpmlib
Date: Fri, 19 Apr 2002 16:12:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <009b01c1e7ac$3d698040$0901a8c0@system>
References: <4.3.2.7.0.20020419091135.011a3f00@lox2.loxinfo.co.th>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, Shaggy Im-erbtham <shaggy@loxinfo.co.th>

Hi,


Which version of rpm are you using?
A generally good resource finding
rpm's is rpmfind.com and rpmfind.net.

Greets Tom


> I was attempting to install a package (specifically ltsp_core from
> www.ltsp.org)
> on RedHat 6.2 with the following
>
> rpm -ivh ltsp_core-3.0.0-1.i386.rpm
>
> and got this error
>
> error: failed dependencies
> rpmlib (PayloadFilesHavePrefix) <= 4.0.0 needed by ltsp_core-3.0.0-1
> rpmlib (CompressedFileNames) <= 3.0.4-1 needed by ltsp_core-3.0.0-1
>
>
> I assume I have an out-of-date "rpmlib" package, tried searching the net
> for it, but came up with nothing I could download and upgrade.
>
> Could anybody help?
>
> TIA
> Shaggy
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
