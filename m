From: lawson_whitney@juno.com
Subject: Re: Trying to get GUI'ed
Date: Wed, 23 Oct 2002 20:19:19 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021023.214300.134682184.1.lawson_whitney@juno.com>
References: <5.1.0.14.1.20021023130903.02121660@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021023130903.02121660@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

On Wed, 23 Oct 2002, Ray Olszewski wrote:

> I've never tried it myself, but I seem to recall that Lawson Whitney (are
> you there, Lawson? acn you comment helpfully?) has in the past run his
> xserver "bare metal", without even a basic Window Manager. I don't know how
> versatile he found that setup.
>
At the time the only X application I cared about was Wine, which uses
its own builtin window manager if you don't tell it (with the --managed
option) not to.  A naked xterm looks a little strange, and you can't
move it except by killing it and starting another with different
geometry from the command line (yes, you can start X applications
from a console, as long as the DISPLAY environment variable is set
(xinit or g/k/xdm do this for their children, but you can set it in a
shell startup file if you like).

I have more memory now, and icewm doesn't take too much.

Lawson
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
