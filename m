From: "Peter H." <heisspf@skyinet.net>
Subject: Re: user/e-mail name
Date: Sun, 07 Mar 2004 09:47:12 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040307014712.EDA4DD809@heisspf>
References: <5.1.0.14.1.20040305070344.01fc8e70@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 05 Mar 2004 08:20:45 PST." 
 <5.1.0.14.1.20040305070344.01fc8e70@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thanks Ray,

ray@comarre.com said:
> using.. How *do* you get  your mail? That is, what do you mean by "directly"?
> I've been assuming (as  have, I imagine, others) that you get your mail
> through an ISP (or, as you  now remind us, several ISPs) using POP

May be my confusing answer on how I receive my mail was in answer to Richards 
question which I apparently misunderstood thinking he meant that I receive my 
mail through a web mailer like operamail.com.

ray@comarre.com said:
> Doesn't your POP client need to provide a userid and password to get mail?

Yes it does. However, I can use other ISPs than the one I have an account with 
to fetch my mail.

ray@comarre.com said:
> Intrinsically, the "user name" and the "e-mail name" need have nothing in
> common, on outgoing mail

Then why do those stupid programs (exmh, pine, kmail) insist that my mail 
comes from peter and not from heisspf?

Where do they pick-up that peter?

I am using postfix now, before sendmail. In /etc/postfix/main.cf it says 
clearly: myhostname = heisspf

Only sylpheed does it right. The suggestion of Peter Gantner to put 
"sendmail-path=/usr/bin/sendmail -t -f my.realemail@isp.net" into .pinerc 
changed nothing.

ray@comarre.com said:
> I hope that is a more satisfactory answer than what you got in the past. I
> am quite surprised that you did not get one when you asked before ...
> assuming you asked here on this list.

Yes it is and was except I seem to be too dumb to get it done right.

Regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
