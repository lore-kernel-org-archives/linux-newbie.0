From: lawson_whitney@juno.com
Subject: Re: Trouble with serial ports
Date: Tue, 15 Oct 2002 10:09:10 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021015.101312.134681288.0.lawson_whitney@juno.com>
References: <CPIMSSMTPU0581Np7vX00000137@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CPIMSSMTPU0581Np7vX00000137@cpimssmtpu05.email.msn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: arwbackup@worldnet.att.net
Cc: linux-newbie@vger.kernel.org

On Mon, 14 Oct 2002, Alan Womack wrote:

> OK, made a loop back cable.  Works great on the windows box, fast and accurate.
>
> On the linux box it's INCREDIBLY slow, makes 300 baud look blazing.  Take like 2 hours to print the whole dmesg:
>
> cat dmesg (I have it saved to a file) >/dev/ttyS01
>
> on second terminal
>
> od -v /dev/ttyS01
>
> nothing is dropped, but it is SLOW SLOW SLOW
>
HUH?  Are you reading it back from the same port you wrote it to?
What does that have to do with the cable?  You can set a serial port to
echo the input, but it just seems odd.


One other thing:  if you connect 2 serial ports, and write to one at one
speed and read from the other at a different speed, you will get either
_Nothing_ or garbage.  You can see or set the speed with
stty -F <device>
but the app can and probably will change it when it opens the port.

Lawson
---oops---



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
