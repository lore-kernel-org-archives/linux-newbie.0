From: Ray Olszewski <ray@comarre.com>
Subject: Re: user/e-mail name
Date: Fri, 05 Mar 2004 08:20:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040305070344.01fc8e70@celine>
References: <Your message of "Thu, 04 Mar 2004 14:04:44 +0100."  <200403041404.44306.pa3gcu@zeelandnet.nl> <20040305072325.C940AD7FD@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040305072325.C940AD7FD@heisspf>
References: <Your message of "Thu, 04 Mar 2004 14:04:44 +0100."  <200403041404.44306.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:23 PM 3/5/2004 +0800, Peter H. wrote:

>pa3gcu@zeelandnet.nl said:
> > It will only work if you have an account or an alias on your providers site
> > for heisspf.
>I do not have an account with my provider and get my mail directly even using
>different ISPs.

Peter -- this addendum to your report is a bit confusing.. How *do* you get 
your mail? That is, what do you mean by "directly"? I've been assuming (as 
have, I imagine, others) that you get your mail through an ISP (or, as you 
now remind us, several ISPs) using POP to download it (or, conceivably, IMAP).

In that case, you *do* need an account, or an alias to an account, in the 
e-mail name you use at each ISP ... even if it is not an account you use, 
or can use, to log in. More exactly, if you use the e-mail address 
"myname@myisp.com" and you wish to receive responses sent to that address, 
then the server "myisp.com" or its associated MX server needs to be able to 
process mail addressed to "myname" ... which, in the context of servicing 
POP clients, means it needs an account name associated with the name 
"myname". {Doesn't your POP client need to provide a userid and password to 
get mail?)

If you really get your mail in the way *I* would call "directly" -- that 
is, by running your own SMTP server that other MTAs connect to (as I do 
here) -- than any problems you are having involve your own setup, not your 
ISP's. To get help with it, you are going to need to tell us its details. 
But I doubt you meant "direct" in this sense ... I'd bet you use POP.

I am sorry that exmh apparently does not know how to provide a Reply-To: 
header, as you seem to say below. (Neither does my MUA, BTW, so it's not 
that unusual a limitation.) But use of that header really is the 
standards-based way to deal with the problem you seem to be reporting. 
Anything else is a workaround.

Intrinsically, the "user name" and the "e-mail name" need have nothing in 
common, on outgoing mail ... From: header spoofing in SPAM is the obvious 
illustration of this ... though some MTA authentication schemes (e.g., POP 
before SMTP) may limit the choice of e-mail name. For receiving e-mail, 
though, the receiving MTA at the endpoint of the SMTP connection must know 
what to do with the message, which typically means it is addressed either 
to a userid present on the system or to an alias associated with a userid 
present on the system. And on Linux systems (in contrast to, say, Windows 
systems), even the POP clients and MUAs will normally (are there *any* 
exceptions to this?) count on there being a userid or alias entry for each 
"e-mail name" they process incoming mail for.

And one technical distinction -- we have here been discussing the From: 
header in the visible message. At the SMTP level, that is just unprocessed 
text and can say anything that your e-mail client will put there. It is 
distinct from the From (no colon) header, which is part of the actual SMTP 
exchange ... the "MAIL From:" SMTP command ... though typically MUAs will 
make the two match. ISP authentication schemes, discussed above, typically 
affect the From header, not necessarily the From: header.

I hope that is a more satisfactory answer than what you got in the past. I 
am quite surprised that you did not get one when you asked before ... 
assuming you asked here on this list.


> >> Now I add "From: heisspf@skyinet"
>
>pa3gcu@zeelandnet.nl said:
> > I presume that is a typo on your part Peter as it is NOT a valid email
> > address. I have tryed a test mail (or was it 2) cant remember to
> > heisspf@skyinet.net and they have not come back, (as yet).
>
>
>Surly a typo I left out the .net.
>Both mails arrived.
>
>The suggestion of Richard using Reply-to: is not accepted with exmh.
>
>I remember now several years ago I had asked the same question what the user
>name has to do with the e-mail name and did not get a satisfactory answer. I
>then just changed my user name to my my e-mail address name and whenever I
>changed my ISP I could keep the same name except last year the ISP did not
>accept then pfheiss and I changed to heisspf and had to change my user 
>name as
>well. That was all in Red Hat.
>Now in slackware I thought I had gotten away from this, apparently not. So on
>with From: in the header.
>
>Since the mail program sylpheed nicely incorporates with exmh I could use it
>for sending mail. In sylpheed (Hal from HalTech listen) one can set-up 
>several
>accounts with different user names and same ISP or different ISPs and can
>easily select which one to use to send mail with. The computer user name 
>never
>shows up and the mail arrives with the From: always the account one has 
>chosen.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
