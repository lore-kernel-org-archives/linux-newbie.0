From: Ray Olszewski <ray@comarre.com>
Subject: Re: starting X with different XF86Configs
Date: Mon, 19 Aug 2002 16:58:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020819165442.020fa290@celine>
References: <5.1.0.14.1.20020819153832.020ec500@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0208191830520.25454-100000@localhost.localdo
 main>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James & Tatiana Miller <jamtat@aaahawk.com>, Linux <linux-newbie@vger.kernel.org>

At 06:36 PM 8/19/02 -0500, James & Tatiana Miller wrote:
>Hello all:
>
>I've got a notebook that I will be hooking an external display to from
>time to time. Of course the external display has totally different
>settings than the notebook's native display (native display is limited to
>800x600 res, for example). For this reason, I'd like to be able to start X
>with one of 2 differing XF86Config files, depending on whether I'll be
>using the notebook's own monitor or the external one. I've got
>working XF86Config files for both the external and native displays.
>What I'm having some trouble with is figuring out how to invoke one or the
>other XF86Config file when I start X. Any suggestions on how to go about
>this?

Never needed to do this myself, but the man page for "XF86Config" says you 
can specify an alternate file with the "-xf86config" argument on the 
command line. The man page is a bit unclear as to what command it 
associates this aggument with, and you don't say how you are starting X 
anyway ... but I'd *try* passing it as a server argument to startx ("startx 
-- -xf86config appropriate_file_name") and seeing it that did the trick.

If that's not quite it, perhaps this is enough of a start that you can use 
the man system to track down the right way to pass this argument yourself.


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
