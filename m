From: Staci <spiritlover666@yahoo.com>
Subject: Re: Self-starting NAIM??
Date: Mon, 20 May 2002 12:29:24 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020520192924.39588.qmail@web12803.mail.yahoo.com>
References: <0205201840331A.27213@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0205201840331A.27213@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


--- Richard Adams <pa3gcu@zeelandnet.nl> wrote:
> > I double-checked my process-list last night to
> make
> > sure.  Then I woke up this morning and it'd been
> > running for 304:06 minutes.  I ALWAYS shut it
> down,
> > this isn't me.
> I have absolutly no experiance with this program,
> however if a program
> restarts itself then 2 things come to mind, it is
> told to do so in 
> /etc/inittab with a respawn command or via crontab,
> altho, i doubt it would 
> be crontab.

Well, I just checked inittab and it's not there,
although I did figure out one other inconsistency
that'd been puzzling me. ;)
(namely, when a particular bad-happening occurred I
got locked out of all ttys except 6...turns out 6 is
..I guess the way I understand it is : 6 is a
text-console independent of X so when X goes crunch
BAD, 6 still works).
 
anyway!
How do I check crontab?  I've never used it, I've
never set a cron-job although I know what they are.

> I have "yet" to see a program that starts itself.

<heh> Well you have now. ;)

Thanks for the info....
sl

PS Bah, now you guys got me doin it!
At least for me, please send responses only to
linux-newbie@vger.kernel.org so I don't get duplicates
like I just sent Richard! :/


=====
**************************
In cyberspace nobody can hear you scream.

__________________________________________________
Do You Yahoo!?
LAUNCH - Your Yahoo! Music Experience
http://launch.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
