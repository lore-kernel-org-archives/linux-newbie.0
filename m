From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: Re: converting pdfs
Date: Wed, 14 Aug 2002 10:48:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D5A9808.7060802@jpl.nasa.gov>
References: <20020813.183924.-265271.6.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

Matthew Stapleton wrote:
> How should I convert a pdf into individual image files?  I do not care
> what format the output is ...jpg...gif...pbm...tif


Most linux distros come with a program called "convert". It's a program 
that is part of ImageMagick.

just type convert <file>.pdf <file>.[jpg,giv,png,tif]

very easy! :)


-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
