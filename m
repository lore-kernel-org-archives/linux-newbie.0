From: axel@pearbough.net
Subject: Re: DRI not working?
Date: Mon, 13 Jan 2003 00:14:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030112231429.GB1485@neon.pearbough.net>
References: <200301130932.42612.genright@paradise.net.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200301130932.42612.genright@paradise.net.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: glenn <genright@paradise.net.nz>
Cc: linux-newbie@vger.kernel.org

Hi glenn!

On Mon, 13 Jan 2003, glenn wrote:

> hi guys.
> Have been trying to improve the grapics performance on my new Mandrake 9 
> install, but have come accross a problem.
> 
> (WW) System lacks support for changing MTRRs

I guess you kernel is built with CONFIG_DRM_TDFX=y/m.
But do you also have CONFIG_MTRR=y ?

Seems to me that Memory Type Range Register kernel support is necessary...

Best regards,
Axel Siebenwirth
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
