From: Heimo Claasen <hammer@revobild.net>
Subject: Re: switching window managers
Date: 21 Mar 2003
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303210525.h2L5PXtV017456@pyxis.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

That's it indeed, Yawar Amin:

> startx [/usr/bin/]<wm_name> -- :0
                             ^^^^^^^
It doesn't even need a specific file with yet another command name.
But please explain the syntax.

Attempts without the arguments underlined would not open X -
complaining about missing "display:", or would at best load only the
window manager[s] explicitly defined for/in the X setup and not any
other one which might be present and eligible in the "system".

And if bash (batch) syntax would be a bit easier to learn, it could be
feasible to set up a small script to choose between window managers.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2003-03-20
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
