From: Ray Olszewski <ray@comarre.com>
Subject: Re: .so, .a and .o-files
Date: Thu, 15 Aug 2002 11:31:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020815112913.02122450@celine>
References: <5.1.0.14.1.20020815083919.02181c50@celine>
 <20020815153420.GA10981@prester.freenet.de>
 <5.1.0.14.1.20020815083919.02181c50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020815172540.GB28935@prester.freenet.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Axel Siebenwirth <axel@hh59.org>
Cc: linux-newbie@vger.kernel.org

At 07:25 PM 8/15/02 +0200, Axel Siebenwirth wrote:
>Hi Ray!
>
>What is the difference between the linking that gcc does i.e. to link many
>object files into an executable and  the linking that ld does?
>Is it really that gcc is just to link object files together to an executable
>and ld is there to link object files to an shared library?


gcc compiles; it does not link. It calls ld to link. ld  links multiple .o 
files into an executable that includes the hooks to use the shared-library 
functions. Then at runtime, ld.so does the runtime linking to the .so files.



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
