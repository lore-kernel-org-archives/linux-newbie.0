From: Ray Olszewski <ray@comarre.com>
Subject: Re: Unknown User/Alias 'Marc'
Date: Mon, 19 Aug 2002 07:48:35 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020819074533.0225dc50@celine>
References: <20020816.094311.134670320.14.lawson_whitney@juno.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <OE73lmmlQ080Gxw8Zw500012266@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Arthur Othieno <a_othieno@hotmail.com>, linux-newbie@vger.kernel.org

At 08:03 PM 8/16/02 +0100, Arthur Othieno wrote:
>Hello all. After a few weeks of lurking on the list I can finally turn to
>you
>for some quick advice. The other night as I was looking through my sendmail
>aliases file (/etc/aliases), I noticed a perculiar line at the end of it
>that read:
>
>--begin--
># Person who should get root's mail
>#root:                        marc
>--end--
>
>All I want to know is who is this user/alias marc?
[rest deleted]

A (non-existant) example of a user. The line begins with a #, making it a 
comment line, not a functioning line.


>A quick look at the
>/etc/passwd, shadow, group, gshadow... didn't turn up any results, which
>puzzles me. Funny thing is I get mail as root fine! I am running RedHat 7.3
>(Valhalla), Sendmail 8.11.6. The only ports open on the machine are 25/tcp
>(Sendmail) and 6000/tcp (X11). No UDP ports open. And I don't connect to the
>internet with this machine, it's just a dummy machine that sits there
>waiting
>for all things experimentation that may come my way ;-) I have attached a
>copy of the /etc/aliases file for anyone to look at just in case.

I didn't see an attachment. Anyway, attaching small files like this is one 
is a bad idea -- if we need to see them, it's easier (less work for most of 
us) if you put them in the body of your message.

>Thank you
>for your time...




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
