From: "Bryan Whitehead" <lists@tcob1.net>
Subject: Re: converting pdfs
Date: Wednesday, 14 Aug 2002 11:48:56 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020814_114856__b78c205e@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


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

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
