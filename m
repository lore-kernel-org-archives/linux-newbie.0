From: Ray Olszewski <ray@comarre.com>
Subject: Re: setting up X under Slackware
Date: Thu, 15 Aug 2002 23:10:15 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020815230501.02105300@celine>
References: <20020816.004331.-204363.0.matthewstapleton@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020816.004331.-204363.0.matthewstapleton@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Matthew Stapleton <matthewstapleton@juno.com>, linux-newbie@vger.kernel.org

At 12:43 AM 8/16/02 -0400, Matthew Stapleton wrote:
>Hello all,
>
>I am having some difficulty setting up X windows in a Slackware system.
>Under Win95/98 my video card can handle 24bit resolution.  However when I
>try to tell the xf86config in Linux utility that this is the res. that I
>wish to use, it reports errors when I enter 'startx'.  Apparently it is
>trying to use the Generic VGA driver/library rather than the SVGA one.
>How can I make sure I have the SVGA drivers installed and that these are
>the ones I am using in the setup process?

To get a decent answer to your questions, you're going to have to tell us a 
bit more, such as ...

1. What version of Slackware?

2. What version of XFree86? (The handling of drivers changed radically 
between 3.x.x and 4.x.x.)

3. What errors get reported when startx runs?

4. What video card (make and model, and how much RAM)?

5. What monitor (or, more to the point, what characteristics -- size, 
vsync, hsync)?

6. What dot resolution (1024x768, 650x480, etc.) are you setting as the 
default? What alternates are you requesting?




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
