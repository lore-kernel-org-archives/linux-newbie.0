From: lawson_whitney@juno.com
Subject: Re: sudo, SUID and SGID
Date: Sun, 25 Aug 2002 03:54:03 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020825.040319.134671024.11.lawson_whitney@juno.com>
References: <200208241527.g7OFR8El003246@franklin.icok.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208241527.g7OFR8El003246@franklin.icok.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: wa5rrh@arrl.net
Cc: linux-newbie@vger.kernel.org

On Sat, 24 Aug 2002, Jim Reimer wrote:

> I'm not sure I'm clear as to when I should use sudo, and
> when I should use SUID and/or SGID.  It looks like I should
> use sudo when I want only a limited number of users to
> have access to a (normally root) program, and SUID/SGID
> when I want to let everybody have it.  Is that all there
> is to it?

You can use say group execute (g+x o-x) to control who may run a
setuid/setgid program, but basically, yes.
>
> If I want a script to run as root, I *must* use sudo?

The linux exec[vle] call will not run a script for a nonroot user as
root.  suidperl is a way around this if you write perl scripts.
>
> Another thing is that if SUID/SGID is appropriate, which
> is used?  Is it ever necessary to use both at the same time?

Maybe.  suid exec's as the owner of the executable file, whicn is
usually but not necessarily root.
>
> Thanks for enlightening me.
> -jdr-
>
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
