From: Ray Olszewski <ray@comarre.com>
Subject: stripping flies (was: Re: .so, .a and .o-files)
Date: Thu, 15 Aug 2002 07:59:21 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020815075652.02191e30@celine>
References: <20020815131918.GA1033@diamond.ipht-jena.de>
 <20020815131918.GA1033@diamond.ipht-jena.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020815134445.GA1217@diamond.ipht-jena.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Axel Siebenwirth <axel@hh59.org>, linux-newbie@vger.kernel.org

I changed the Subject: line to refer to the question you actually asked.

At 03:44 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Me again.
>
>Whats the use of stripping object files of their symbols. Symbols reflect
>the functions in an object file, right?


Stripping makes the files smaller, which matters in some cases. The symbols 
are valuable in debugging problems but are not needed simply to execute the 
object code.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
