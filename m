From: Ray Olszewski <ray@comarre.com>
Subject: Re: netdate vs. ntpdate
Date: Sun, 16 Jun 2002 15:57:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020616155253.020d9e70@celine>
References: <200206162140.g5GLeVu04345@g38.rdsbv.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200206162140.g5GLeVu04345@g38.rdsbv.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Petre Bandac <g38@rdsbv.ro>, linux-newbie@vger.kernel.org

ntpdate does have a man page, at least on Debian systems when the app 
itself if installed. OTOH, I'm unfamiliar with netdate; it's not listed in 
the standard Debian package system under that name.

In practice, we use ntpdate here, running both a server (which gets its 
updates from a more reliable off-site server) and clients (which get their 
updates from our server). Very reliable. I suspect that any time client 
that uses the ntp service will work fine for you, so the choice is a matter 
of convenience.

At 12:40 AM 6/17/02 +0300, Petre Bandac wrote:
>quoting man netdate:
>
>  Netdate  takes  a list of names of Internet hosts as argu-
>        ments, selects the one which supplies the best  time,  and
>        sets the system time accordingly.  The invoker must be the
>        super-user for the time to be set.
>
>while ntpdate doesn't have a man page (or at least on my box :-))
>
>question is if I want to keep my box's date accurate, which command should I
>use ? and what's the difference between them ?


--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
