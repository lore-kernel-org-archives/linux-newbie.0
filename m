From: Ray Olszewski <ray@comarre.com>
Subject: Re: sendmail
Date: Sun, 15 Dec 2002 22:23:37 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021215220736.020ed0b0@celine>
References: <F4bxgg8DUDEne3Ndrpu0000ba5a@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4bxgg8DUDEne3Ndrpu0000ba5a@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I don't know that this is the best place to ask these questions, but it is 
at least a plausible place to start. I doubt any of what you need to know 
is SuSE specific. I'm afraid I do need a bit of clarification from you to 
be able to give you good answers. Details below.

At 04:59 AM 12/16/02 +0000, Veggies Unite! wrote:
>I hope that this is the correct place to e-mail this question - if
>not, I would appreciate being re-directed. I've set up SuSe 8.0 on a
>computer running through a router and a cable modem.

You understand, I trust, that the router will have to be set up to forward 
port 25 (SMTP) to the server. Linux routers do this easily, as do all the 
other NATing routers I've looked at in recent times. The details will 
depend on what router you have, of course.

>I have a
>static IP, and I have a domain name pointing to the IP via a
>Registrar that also handles a POP3 account.

The omitted detail here is the relationship of the POP3 account to the 
domain name. Specifially, if the comain is whosis.com, does mail to 
anyone@whosis.com get redirected (by way of an MX DNS entry, for example) 
to the Registrar's server (and thence to the POP3 account)? Or is the 
POP3account in the form of someuserid@someotherdomainname.com ? The first 
setup will interfere with incoming mail but the second will not.

>I've set up Majordomo on
>my computer and would like to configure sendmail as a mail server so
>that it will handle mailing lists aliases for Majordomo.

Aside from the details I've mentioned -- port forwarding and a possible 
MX-record conflict -- the sendmail part of this is a standard sendmail 
configuration. I'd expect SuSE to have an out-of-the-box setup procedure 
that handles this. If it doesn't ... what setup options does it give you?

>Also, I
>would need to run a POP server to allow me to receive mail from my
>server instead of the Registar.

Receive it where? Do you have one or more workstations independent of the 
server? If so, this too is standard ... just install any of the popular 
POP3 servers (I run popa3d on my Debian server; there are several choices, 
and SuSE may favor one of the others). Then have the clients look to the 
LAN address of the server (assuming they are on the same LAN). If you want 
to get mail fro the server to off-LAN clients, the setup is a bit more 
involved ... post a followup if that's what you meant.

>In order for the aliases for majordomo to work, do I have cancel my
>mail coming from the POP3 account via the Registrar?

I can't give you an answer here until you explain how the POP3 account 
relates to the domain name. If e-mail to either majordomo@whosis.com and to 
eachlisname@whosis.com does NOT get redirected to the POP3 account, then it 
should have no effect on the server's operation. If it does get redirected, 
then it migh still work, if you have the server collect the POP3 mail and 
use a glue program like procmail to distribute it to majordomo itself and 
to the various majordomo lists.

>Please let me know of any documentation on this or if you have
>specific advice on what I would need to do.

The packages you need to use themselves all come with the usual kinds of 
documentation (man pages, Info files, other odds and ends, and often their 
own Web sites), and if you are not familiar with the range of HowTos and 
similar resources at (for example) www.tldp.org, you shouuld make their 
acquaintance. Aside from that, the better approach is for you to describe 
particular problems you need help in solving.


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
