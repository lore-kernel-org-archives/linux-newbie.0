From: Ray Olszewski <ray@comarre.com>
Subject: RE: more X problems
Date: Wed, 13 Nov 2002 17:39:48 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021113173543.0212a830@celine>
References: <3DD39583.7CEF55E3@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0211131911530.21708-100000@localhost.localdo
 main>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:34 PM 11/13/02 -0600, James Miller wrote:
>Wow. The confusion just multiplied exponentially. I've heard talk of
>differing xservers for different video cards, but this is the first time
>I've had to confront it in practice. I'm still not quite sure what it
>means and what I must do. I'll have to let that sink in for a bit.
>
>I took a look in the /pasture directory for Slack 8.1 and it comtains a
>further subdirectory called /XFree86-3.3.6-servers . I'm guessing I need
>to look within that sub directory? I've already installed XFree86 4.2.0. 
>I'm not
>sure how, or if, two different XFree86 releases work together. Probably
>I'll have to ditch 4.2.0 to use my video card, no?

Very possibly. There was an architecture change in X between 3.x.x and 
4.x.x . 4.x.x uses a single executable, with server (video card) selected 
in the config file. X 3.x.x was actually a set of a dozen or so related 
executables, each a server for a specific set of video cards (or chipsets); 
you actually ran the specific X server needed by your hardware.

It may be that support for your card was abandoned in the move to XFree86 
4.x.x. There are cardlist files somewhere at www.xfree86.org that might let 
you see if XFree96 3.3.6 (the last 3-series version, I believe) supports 
your hardware.


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
