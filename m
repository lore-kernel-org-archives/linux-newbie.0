From: Ray Olszewski <ray@comarre.com>
Subject: Re: Problem installing avi libraries
Date: Sun, 23 Feb 2003 07:25:55 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030223070857.021f9250@celine>
References: <20030223133039.GA27756@teamfinders.org>
 <20030220171332.GA4937@teamfinders.org>
 <Pine.LNX.4.21.0302210955390.4563-100000@hestia>
 <20030223133039.GA27756@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1046009561.1389.21.camel@smeagle>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 09:12 AM 2/23/03 -0500, Peter Howell wrote:
>I've been trying to install the avifiles to allow me to turn my linux
>box into a vcr.  Unfortunately, by naivety is getting me in trouble.
>Here is what I've done, in what I hope is sufficient detail
>
>Downloaded avifile-0.53.5.tar.gz and binaries-010122.zip.
[details deleted]

The current version of avifile is 0.7.32 (20030219), available for download 
at http://avifile.sourceforge.net/ .

The version you are trying to compile is so old that only luck would make 
it compatible with the current g++ compiler and its libraries. (The 
cross-compiler check result is just fine, BTW ... it merely confirms that 
you are compiling the source for the same architecture, presumably i86, 
that you are compiling it on.) A quick glance at the error listing is not 
enough to let me spot the problem, except to note that all the individual 
errors reported are the same in character ... the compiler objecting to 
attempts to cast a variable from a type to the same type ... why the 
compiler treats that as an error is not immediately apparent to me, to be 
honest.

One other general comment: the move from g++-2.95 to g++-3.02 is causing 
headaches everywhere, and I don't know which of them your RH system uses 
(to find out, start with "ls -l /usr/bin/c++" and keep folloing symlinks 
until you get to a real name). The newest version of avifile is written to 
work with g++-3.02 and its headers and libraries 
(libstdc++-5.something_or_other).

I'd suggest you try again with the current source, and report any problems 
you have with it, either here or on the avifile mailing list 
(avifile@prak.org; join it at the sourceforge site listed above).





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
