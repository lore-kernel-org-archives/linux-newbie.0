From: Axel Siebenwirth <axel@hh59.org>
Subject: Re: .so, .a and .o-files
Date: Thu, 15 Aug 2002 19:31:11 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020815173111.GC28935@prester.freenet.de>
References: <20020815153420.GA10981@prester.freenet.de> <5.1.0.14.1.20020815083919.02181c50@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20020815083919.02181c50@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi Ray!

On Thu, 15 Aug 2002, Ray Olszewski wrote:

> Depends on how you link. Modern linking is done dynamically (only one copy 
> of the library is loaded into memory and shared by all apps that use it), 
> using .so libraries. Older linking was done statically (each app loaded its 
> own personal copy of the library into memory), using .a libraries.

Does this mean what I think? that when an executable is linked statically
all the libraries are in the executable? So none of the required libraries
are required when executing?

Is there a difference between statically linking object files to a library
and statically linking libraries to an executable?
I'm really sorry about such fundamental questions but I want to get
clarity about all that.

Thank you very much and my best regards,
Axel Siebenwirth
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
