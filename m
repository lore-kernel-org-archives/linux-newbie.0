From: Peter <pfheiss@philonline.com>
Subject: Re: At Loss with Mailing
Date: Wed, 7 May 2003 15:48:35 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200305071548.35741.pfheiss@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: Ray Olszewski <ray@comarre.com>

To: Ray Olszewski <ray@comarre.com>
cc: linux-newbie@vger.kernel.org
Subject: Re: At Loss with Mailing 
In-Reply-To: Your message of "Tue, 15 Apr 2003 08:28:02 MST." 
 <5.1.0.14.1.20030415080234.01e96380@celine>
References: <5.1.0.14.1.20030415080234.01e96380@celine> 
Mime-Version: 1.0
Content-Type: text/plain
-----
Hi Ray,

The situation of me being unable to send mail is becoming worse. You are right 
the problem is not philonline. When I called them they said they never had 
reverse look-up. Since a few month ago I had no problem with them anyhow.

Now I found that even with skyinet and another new ISP mail will not be sent. 
The problem appears when I have difficulties making a connection and when 
connected the flow of data is very slow if any at all meaning the lines are 
hopelessly congested. The problem is/was less with skyinet since they have 
better equipment.

One solution would be to sent all mail with kmail which I have set to smtp for 
sending mail instead of using sendmail (this one will go out with it) which 
would mean giving up my beloved mailer exmh.

Or does somebody know how to set exmh (nmh) to use smtp for sending mail?

Regards

Peter


ray@comarre.com said:

> The issue is unlikely to involve philonline and *mail* as such. Your
> system  uses its own MTA to connect directly to mine (or vger or
> whoever). It does  not use the philonline server to process the mail.

> I previously suggested that your problem appeared to be that
> philonline  does not respond to a reverse lookup of your IP address.
> Nothing you have  reported since then changes my opinion. Since you
> use a dial-up connection,  you get a different IP address each time
> you connect; the "erratic pattern"  may simply mean that some of these
> addresses resolve on reverse lookup but  others do not. Combine that
> variability with the fact that some receiving  MTAs require reverse
> lookups but others do not, and the resulting pattern  could well look
> "erratic" ... it would be especially hard to spot if, say,  vger
> itself did not run this check but its MX backup, zeus, did (pure
> speculation here; this is easier for you to check than me).

>  From the actual messages you report finding in the logs, I suppose
> the  problem might be with DNS at philonline. A way around that, at
> least for  testing, is to run BIND (named) on your host and bypass the
> philonline  nameservers entirely. This seems like a long-shot, though.

> I really have nothing else to suggest, Peter. If you try some of these
>  suggestions and have from them new results to interpret, please feel
> free  to write (or post, if you can) again. 





-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
