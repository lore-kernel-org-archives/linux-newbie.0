From: lawson_whitney@juno.com
Subject: Re: xwindows  login
Date: Thu, 26 Sep 2002 17:03:19 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020926.174526.134671024.1.lawson_whitney@juno.com>
References: <006501c26565$0bb74e60$08d9d6d2@heretic>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <006501c26565$0bb74e60$08d9d6d2@heretic>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: sagar@mihira.net
Cc: linux-newbie@vger.kernel.org

On Thu, 26 Sep 2002, Sagar N Chand wrote:

> I've recently installed Mandrake on my system.
> Everything is well and good. But by default it is going
> into xwindows for the login. I changed the runlevel to 3 in the
> etc\inittab file and now it is showing the login in the console
> mode only. Is there any other way to do this???
>
> regards,
> /sagar

Yes.  At runlevel 5, control-alt-F1 through F6 should bring you to a
text login, unless Mandrake has gone off the deep end since I messed
with it.  You know you can start X from runlevel 3 with startx or xinit,
right?  The user who starts X owns that session(s).  Another user could
start X on a different display (virtual console) with, say,

xinit -- 1:

That would typically run on tty8, reachable with control-alt-F8, instead
of tty7.

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
