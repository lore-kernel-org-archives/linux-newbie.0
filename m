From: Ray Olszewski <ray@comarre.com>
Subject: Re: /dev/random, /dev/urandom
Date: Wed, 08 Jan 2003 13:22:54 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030108131706.02135ec0@celine>
References: <avi1hh$hai$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <avi1hh$hai$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:27 PM 1/8/03 -0500, Jamie Risk wrote:
>I'm compiling OpenSSH, and to access /dev/random, and /dev/urandom, the
>configure script needs to be run as root.
>
>What sort of trauma am I in for if I make those device permissions read
>accessible by everyone?

Nothing serious that I can think of (though I suppose a malicious user 
might "use up" the system's entropy). The man page for "random" recommends 
mode 644 for both devices. Standard Debian installs make them world readable.


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
