From: Ray Olszewski <ray@comarre.com>
Subject: Re: ssh error message
Date: Thu, 12 Sep 2002 19:56:12 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020912194655.022ca9c0@celine>
References: <200209130241.g8D2ewt01925@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209130241.g8D2ewt01925@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 10:40 AM 9/13/02 +0800, Peter wrote:
>[...]
>ray@comarre.com said:
> > As to the packages (what you call "programs")
>
>That's what we called them before the PCs were around, ;-).

Not really. At least I didn't, either then or now.

I was attempting to distinguish an actual program, such as sshd (that is, 
either an executable binary or source code that can be either compiled or 
interpreted), from a package that contained that program, maybe an 
associated init script, a man page and other documentation, possibly sample 
config files, and whatever else the packager thought worth including(or the 
packaging system requires).

The distinction was meaningful back in mainframe days, and it remains 
meaningful today. Packages often contain programs, but they are not the 
same thing as programs.

In the context of troubleshooting your problem, drawing the distinction was 
cogent, since the problem was that you were mistaken about which package 
actually contained the program you wanted to run.


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
