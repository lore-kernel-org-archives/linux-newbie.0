From: Haines Brown <brownh@hartford-hwp.com>
Subject: Permission puzzler: world writable directory
Date: Fri, 29 Nov 2002 11:03:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211291603.gATG37r01212@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I use an e-mail alias list: ~/.aliases/NARL.aliases. My individual
aliases work OK (I'm using it for this message), but I'm having
trouble using an alias list, or at least this NARL.aliases list.

I now get the error message:

   ----- The following addresses had permanent fatal errors -----
   :include:/home/brownh/aliases/NARL.aliases
    (expanded from: NARL)

   ----- Transcript of session follows -----
   550 5.2.4 :include:/home/brownh/aliases/NARL.aliases...
     Cannot open /home/brownh/aliases/NARL.aliases:
     World writable directory

I believe I know the source of the problem, but would appreciate an
explanation and a possible work-around.

User "brownh" uses rmail under emacs. However, for an OT reason,
user brownh can't log in to his own account, but must access to it via
an xterm in another account, in which is run the command su - brownh,
and then emacs.

Is this complicated procedure preventing the NARL.aliases file from
being read? I've played with permissions for it and its directory,
including any write permission at all from both directory and file,
but to no avail. I have not yet tried running emacs with # emacs -u
brownh, however.

Haines Brown   
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
