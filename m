From: Peter <bato_mainit@ispx.com.ph>
Subject: Re: Epiphany Browser Fails
Date: Mon, 24 Oct 2005 14:26:48 +0800
Message-ID: <20051024142648.7ce56aee@localhost>
References: <20051022104721.2ae3957d@localhost>
	<6.2.3.4.0.20051021210529.0454d528@no.incoming.mail>
	<4359DCD9.8030406@comarre.com>
	<20051023151151.55cb200f@localhost>
	<435BF491.1070506@comarre.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <435BF491.1070506@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Thanks Ray and Laurence,

The 2 libraries I made symblinks are  libgtkembedmoz.so and libgtksuperwin.so.
There was a third I thought and can't find.
I made the links in /usr/lib and did a ldconfig afterwards.

ldd  /usr/lib/mozilla-1.7.11/mozilla-bin | grep found
        libmozjs.so => not found

However mozilla starts w/o problem and this library can be found:

locate libmozjs.so
/usr/lib/mozilla-1.7.11/libmozjs.so
/usr/lib/netscape/libmozjs.so

Slackware does not have epiphany it comes with dropline-gnome and the upgrade
was made from  the original slack box. Yes they must be sloppy. After the
previous upgrade all the media programs did not run anymore until I found
moving in ld.so.conf /usr/local/lib from the top to the bottom of the list
solved the problem. So much for my tinkering. And recently providing the wrong
module for the ethernet card, another bad slack classic.

If I do ldd /usr/bin/epiphany it does, not find, only libgtkembedmoz.so. Then
if I make a symblink ldd reports it does, not find, now libgtksuperwin.so
which is not present on the ldd run w/o symblink to libgtkembedmoz.so.

I will check later on the websites you provided.

As for the other browser I use I really did not mention dillo which is my main
stay browser.

Regards

Peter 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
