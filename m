From: Ray Olszewski <ray@comarre.com>
Subject: Re: user/e-mail name
Date: Sun, 07 Mar 2004 07:46:11 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040307072153.01ef1480@celine>
References: <Your message of "Fri, 05 Mar 2004 08:20:45 PST."  <5.1.0.14.1.20040305070344.01fc8e70@celine> <20040307014712.EDA4DD809@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040307014712.EDA4DD809@heisspf>
References: <Your message of "Fri, 05 Mar 2004 08:20:45 PST."  <5.1.0.14.1.20040305070344.01fc8e70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:47 AM 3/7/2004 +0800, Peter H. wrote:
[...]
>ray@comarre.com said:
> > Intrinsically, the "user name" and the "e-mail name" need have nothing in
> > common, on outgoing mail
>
>Then why do those stupid programs (exmh, pine, kmail) insist that my mail
>comes from peter and not from heisspf?
>
>Where do they pick-up that peter?

They get it from the userid you are logged in as, of course. Although, as I 
said before, there is no ***intrinsic*** connection between a user name and 
an e-mail name, in practice on Unix/Linux systems the two are usually 
related ... since to receive mail on that system, you need either a userid 
or an alias for the To: user name. So just about any Linux-based e-mail 
client will *default* to using the current userid for mail.

I don't recall offhand which Linux MUAs allow you to set the From: address 
(or specify a Reply-To: address) that is different from your current userid 
... but that is simply an application issue that is up to the individual 
program writer. But see below for more.

>I am using postfix now, before sendmail. In /etc/postfix/main.cf it says
>clearly: myhostname = heisspf
>
>Only sylpheed does it right. The suggestion of Peter Gantner to put
>"sendmail-path=/usr/bin/sendmail -t -f my.realemail@isp.net" into .pinerc
>changed nothing.

Well, I did about 5 minutes of Googling on pine, and I found a reference 
that suggested this entry in .pinerc --

         customized-hdrs=From: Foo Foo <foofoo@foofoo.org>

The reference URL is 
http://www.die.net/doc/linux/HOWTO/mini/Pine-Exchange/example.html . I 
can't personally vouch for it, though. THe example does not indicate if it 
can be used to add a Reply-To: header.

The man page for elm (found at the same site as above) says that it uses an 
environmant variable "REPLYTO", so I infer it supports a Reply-To: header, 
and "USER", which is described unclearly but may affect the From: header.

FInally, the man page for exmh includes this vague reference:

"Aliases  User Interface.  A browser for your MH aliases lets you define
        new aliases and insert aliases into mail messages."

You might want to look into this option to see if it does what you desire.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
