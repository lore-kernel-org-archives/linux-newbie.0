From: Ray Olszewski <ray@comarre.com>
Subject: Re: PPP in Slackware
Date: Tue, 01 Apr 2003 08:56:10 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030401084558.01e9c2a0@celine>
References: <200304010847.h318lvW02484@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304010847.h318lvW02484@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

See below.

At 04:47 PM 4/1/2003 +0800, Peter wrote:
>Thanks Ray,
>
>I am aware of kppp as well as of gnome-ppp with both I can connect only to 
>one
>ISP in SW8.0. If I try to connect to the second ISP I get
>
>tail messages:
>
>Apr  1 10:33:19 philonline pppd[476]: pppd 2.4.1 started by pfheiss, uid 500
>Apr  1 10:33:19 philonline pppd[476]: Using interface ppp0
>Apr  1 10:33:19 philonline pppd[476]: Connect: ppp0 <--> /dev/ttyS0
>Apr  1 10:33:31 philonline pppd[476]: Remote message: Request Denied
>Apr  1 10:33:32 philonline pppd[476]: Connection terminated.
>Apr  1 10:33:32 philonline pppd[476]: Exit
>
>tail syslog:
>
>1 10:33:31 philonline pppd[476]: PAP authentication failed
>
>If I do a pppsetup for the second ISP I then can connect to this one, 
>however,
>not anymore to the first one and get the same messages.
>
>I deleted all the files created with pppsetup in /etc/ppp edited pap- and
>chap-secrets, the same, no conncetion to either the first or the second ISP,
>same above messages using either kppp or gnome-ppp
>
>Where is the dog buried?

Somewhere in your back yard, no doubt. But really, Peter, how do you expect 
a helpful answer with so little information?

For the unsucessful attempt, you characterize it only as"If I try to 
connect to the second ISP". How? With what configuration file? What do the 
messages from a *successful* connection look like to compare this to? Is 
the syslog entry you provide the *only* one? Is the "failed" ISP even using 
PAP?

Just to be clear ... if this were some familiar idiosyncracy of Slackware 
8.0, I expect a Slackware user on this list would already have answered 
your question. And if you are lucky, someone may yet do so.

But the silence (aside from Richard's more general response) up till now 
leads me to think this is a problem that involves some peculiarity of your 
setup. To troubleshoot that, we need a good description of what you are 
attempting ... the questions I asked in the prior paragraph *illustrate* 
the kinds of info we need, but they are not an *exhaustive* list, so please 
don't treat them as one. Instead, think what you would want to know about 
this problem if someone were asking you for help, and use that to compose a 
report to us.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
