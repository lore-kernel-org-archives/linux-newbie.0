From: lawson_whitney@juno.com
Subject: Re: striking X server
Date: Sat, 2 Nov 2002 19:29:11 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021103.170821.134684296.0.lawson_whitney@juno.com>
References: <200211021744.gA2HiTPq017274@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211021744.gA2HiTPq017274@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

On 2 Nov 2002, Heimo Claasen wrote:

...
>
> AND X had run perfectly as usual at the last boot before.
>
> ?!?

Try something like

startx 2>&1 |tee ~/oops

and read on ~/oops what it used as a FontPath.
Maybe it has only

unix/:7101

or so and xfs is not running?
This is also a good way to see where it gets the XF86Config file in case
you want to get root to change it.
>
> (And note that the machine boots up well into command line mode as
> usual; all filesystemchecks therewith indicate "clean", etc.)
>
> :(((
>
> // Heimo Claasen //<revobild at revobild dot net>// Brussels 2002-11-02
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

Lawson
--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
