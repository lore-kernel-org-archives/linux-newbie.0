From: Ray Olszewski <ray@comarre.com>
Subject: Re: Permission puzzler: world writable directory
Date: Fri, 29 Nov 2002 08:26:27 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021129081825.02130e00@celine>
References: <200211291603.gATG37r01212@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211291603.gATG37r01212@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:03 AM 11/29/02 -0500, Haines Brown wrote:
>I use an e-mail alias list: ~/.aliases/NARL.aliases. My individual
>aliases work OK (I'm using it for this message),

Is this perhaps the source of the troublesome bogus linux-newbie address 
that almost always shows up in your messages to the list? If it is, PLEASE 
change this practice ... you are being very inconsiderate, inconveniencing 
the very people you want to get help from.

>but I'm having
>trouble using an alias list, or at least this NARL.aliases list.
>
>I now get the error message:
>
>    ----- The following addresses had permanent fatal errors -----
>    :include:/home/brownh/aliases/NARL.aliases
>     (expanded from: NARL)
>
>    ----- Transcript of session follows -----
>    550 5.2.4 :include:/home/brownh/aliases/NARL.aliases...
>      Cannot open /home/brownh/aliases/NARL.aliases:
>      World writable directory
>
>I believe I know the source of the problem, but would appreciate an
>explanation and a possible work-around.

This is a security-related message; your MTA (sendmail?) will not use 
aliases from a world-writable directory because if it did, it could be 
tricked into using incorrect ones (incorrect from the account owner's 
perspective, forged by another user on the system).

Check the status of the directory with "ls -l /home/brown/aliases" and 
(probably) chmod it from mode 777 (this is just a guess) to mode 755 (this 
will work, assuming brownh owns the directory). That should deal with your 
problem here (or you may also have to chmod the actual NARL.aliases file as 
well ... oh, and I am assuming that NARL.aliases is a file, not a directory 
... if that's wrong, adapt this guidence to fit your circumstances).

All the stuff you discuss below probably has nothing to do with your problem.

>User "brownh" uses rmail under emacs. However, for an OT reason,
>user brownh can't log in to his own account, but must access to it via
>an xterm in another account, in which is run the command su - brownh,
>and then emacs.
>
>Is this complicated procedure preventing the NARL.aliases file from
>being read? I've played with permissions for it and its directory,
>including any write permission at all from both directory and file,
>but to no avail. I have not yet tried running emacs with # emacs -u
>brownh, however.




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
