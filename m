From: Haines Brown <brownh@hartford-hwp.com>
Subject: RH8.0: binding DEL to Remove
Date: Tue, 3 Dec 2002 20:54:50 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212040154.gB41soa04613@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


In installing RedHat 8.0, I can bind the DEL key to Remove (delete
current character and move right) rather than BACKSPACE (delete with a
left move of cursor) in emacs and elsewhere, but I've a real problem
with gnome-terminal.

Showkey indicates that my DEL key code is 111, and keycode tells me it
is bound to "Remove" by default. That's what I want. But
gnome-terminal apparently overrides the default. When I enter its Edit
Profile, Compatibility page, by default it has bound the DEL key to
ASCII-DEL (same as BACKSPACE). It offers two other options, either to
bind it to Escape Sequence or to Control-H.

Would a statement in ~/.Xdefaults serve to override this set of
options? If so, would the statement be something like:

gnome-terminal.keycode 111: Delete

I'm only guessing here. Probably mixing apples and oranges.

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
