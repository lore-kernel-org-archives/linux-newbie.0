From: James Miller <jamtat@mailsnare.net>
Subject: Re: getting a valid display under Debian
Date: Tue, 11 Nov 2003 18:50:41 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0311111846120.3176@homenet>
References: <5.1.0.14.1.20031111121913.01fa3d58@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20031111121913.01fa3d58@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: 
Cc: Linux-Newbie list <linux-newbie@vger.kernel.org>

On Tue, 11 Nov 2003, Ray Olszewski wrote:

> Last thought ... the X 4.x.x did, I believe, drop support for some older
> hardware. You might be getting snagged by that (with respect to the video
> card). I don't *think* this applies to S3Virge, but I'd have to check at
> xfree86.org to be certain, and you can check there as easily as I can.
>
From www.xfree86.org:
------------------------------------------------------------------
3.3.6:
Support (accelerated) for the S3 911, 924, 801, 805, 928, 864, 868, 964,
968, Trio32, Trio64, Trio64V+, Trio64UV+, Aurora64V+, Trio64V2, and
PLATO/PX is provided by the XF86_S3 server and the XF86_SVGA server with
the s3_svga driver. Support (accelerated) for the ViRGE, ViRGE/VX,
ViRGE/DX, ViRGE/GX, ViRGE/GX2, ViRGE/MX, ViRGE/MX+ is provided by the
XF86_S3V server. Support (accelerated) for the ViRGE chipsets, as well as
the Trio3D and Trio3D/2X, is provided by the XF86_SVGA server with the s3v
driver. Support (accelerated) for the Savage3D, Savage3D/MV, Savage4, and
Savage2000, is provided by the XF86_SVGA server with the s3_savage driver
on some OSes (Linux, *BSD).

4.3.0:
Support (accelerated) for the 964 (revisions 0 and 1), 968, Trio32,
Trio64, Trio64, Trio64V+, Trio64UV+, Aurora64V+, Trio64V2, and PLATO/PX is
provided by the "s3" driver (however, only models using the IBM RGB 524,
Texas Instruments 3025, or an internal TrioDAC RAMDAC chip are supported).
Support (accelerated) for the ViRGE, ViRGE/VX, ViRGE/DX, ViRGE/GX,
ViRGE/GX2, ViRGE/MX, ViRGE/MX+, Trio3D and Trio3D/2X is provided by the
"s3virge" driver. Support (accelerated) for the Savage3D, Savage3D/MV,
Savage4, Savage2000, and SuperSavage, is provided by the "savage" driver.
Support for the other S3 chipsets has not yet been ported.

Summary:
All hardware supported in 3.3.6 is also supported in 4.3.0 except for the
911, 924, 801, 805, 928, 864, and 868, and versions of the 964 and 968
that do not use the RAMDAC chips listed above. The SuperSavage chipset is
supported only in 4.3.0.
---------------------------------------------------------------------

My card is the S3 ViRGE/VX 86C988.  I interpret the above to mean that my
card should be supported under the version of xfree86 that's on my system,
don't you?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
