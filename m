From: Ray Olszewski <ray@comarre.com>
Subject: Re: Su & Security
Date: Sat, 21 Dec 2002 08:57:34 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021221084621.020b1910@celine>
References: <200212210924.gBL9OYm05183@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212210924.gBL9OYm05183@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

I don't quite understand your questions, Peter. "su" is an application used 
to change userid, usually (but not always) from an ordinary userid to 
superuser. So I have to guess a bit in responding, below, about what you 
are actually asking.

At 05:24 PM 12/21/02 +0800, Peter wrote:
>Season Greetings
>
>Is it a security risk when connected/ing to the Internet if
>
>a) a terminal is open under su

Do you just mean that a console (or xterm or eterm) is open by the root 
userid? It would be unusual for this by itself to be a security risk.

>b) an application like gtkdial must be opened as su to connect

Dialers normally need to run suid to access the modem device. (There are 
alternatives to this, though -- on my systems, all /dev/ttyS* devices are 
in group "dialout" and mode 660, so a dialer app need not be suid.) Unless 
the app itself has a security problem (and while gtkdial itself is probably 
pretty much secure, I have no idea what apps you might think are "like" 
gtkdial), this should be no problem.

>c) an application like kppp needs the root password to be accessible

I can't figure out what you mean by "accessible" here (or, once again, what 
apps "like" covers), so I can't really answer this one. The natural risk to 
think of is that you might, for some reason, store the root password in a 
plaintext file somewhere on the system ... but I can't imagine your not 
seeing the security in risk in doing that without help from this list.


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
