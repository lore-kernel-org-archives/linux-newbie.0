From: Ray Olszewski <ray@comarre.com>
Subject: Re: Trying to get GUI'ed
Date: Fri, 25 Oct 2002 12:28:04 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021025122241.02142590@celine>
References: <20021025.133927.134682184.2.lawson_whitney@juno.com>
 <20021025.133927.134682184.2.lawson_whitney@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210251914.g9PJER508163@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:14 PM 10/25/02 -0400, Haines Brown wrote:
>Please allow a naive question.
>
>When I boot, I arrive at a log in prompt. When I log in, I arrive at
>command prompt for the user.
>
>You explained how one might start X without a window manager, and I
>that might have some utility.
>
>But my question is, is there any difference in functionality between
>running xterm under X and the initial command prompt before starting
>X? Is there any difference in functionality between xterm and the
>command prompt before running X?
>
>I ask because I'm trying to understand why one would go to the trouble
>to edit ~/.xinitrc to boot to an xterm. Why not stay in the nice
>DOS-like world that exists before X if all one wants to do is to issue
>commands.


If you are running X and have an open xterm, you can run a GUI-based 
application from the xterm's command line (actually, you can run many, if 
you use the & tag to detach the processes from the terminal). This method 
(rather than using the menu-based start that a typical WM will provide) of 
starting an X-based app can be quite useful, for several reasons -- you get 
to use command-line switches and arguments (this capability is, at least 
for a few apps, very handy), you get to see STDERR and STDOUT output as the 
app runs (if you didn't detach, that is), and perhaps others I'm not 
thinking of right now.


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
