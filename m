From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Image conversion
Date: 29 Nov 2002 13:07:44 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1038575263.5234.48.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Good afternoon.

Does anyone know of a tool for performing a colour channel swap
operation on a load of graphic images (currently jpeg but I can convert
to a different format if needed).

Basically, I have a large number of images (800+) that will be a video
sequence, but due to an error in the image creation (before I got to
them) the Red and Blue channels are swapped so the image comes out all
funny colours.

Ideally I need a command line that'll do it. I've looked at ImageMagick,
but I can't see an obvious way of decomposing the image to rgb, swapping
r and b, then recombining them.

I also tried Gimp. By messing around with layers I was able to get
something that approached correct. I guess I don't know what I need to
look for in the manual.

Any thoughts, anyone?


Paul.

-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
