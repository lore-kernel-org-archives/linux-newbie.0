From: Ray Olszewski <ray@comarre.com>
Subject: Re: At Loss with Mailing
Date: Wed, 07 May 2003 07:45:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030507073022.01f3e020@celine>
References: <200305071548.35741.pfheiss@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200305071548.35741.pfheiss@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Riley's response may be right. Really, the technical parts of your 
description are too vague to permit anything more than a guess about what's 
up and his guess is as good as any.

At 03:48 PM 5/7/2003 +0800, Peter wrote:

>The situation of me being unable to send mail is becoming worse. You are 
>right
>the problem is not philonline. When I called them they said they never had
>reverse look-up. Since a few month ago I had no problem with them anyhow.
>
>Now I found that even with skyinet and another new ISP mail will not be sent.
>The problem appears when I have difficulties making a connection and when
>connected the flow of data is very slow if any at all meaning the lines are
>hopelessly congested. The problem is/was less with skyinet since they have
>better equipment.

What does "difficulties maning a connection" mean? Really, the only ways to 
diagnose e-mail problems are:

         1. If you get an actual refusal to connect to your SMTP client, it 
will probably be logged by the client.
         2. Use telnet (I described how in an eariler message) to connect 
to a problem SMTP server and interact with it by hand. See what you see.

If your ISPs are actually blocking outgoing connections to port 25 (except 
to their own SMTP relay hosts, as RIley speculates), the second test will 
result in your being entirely unable to connect, NOT connecting slowly. And 
it will fail for ALL sites, not just some.

So ... since mail sent to this list, and to me, *directly* from your server 
gets here intact (the Received: headers on the copies that got here says 
that's how you sent them), I infer that at least philonline is NOT blocking 
your outgoing SMTP. If mail arrives here when you connect by way of other 
ISPs, then they too are NOT blocking SMTP connections. In that case, there 
is simply no way to tell you what is going on with the failed connections 
unless you do one of the two checks I outline above.

>One solution would be to sent all mail with kmail which I have set to smtp 
>for
>sending mail instead of using sendmail (this one will go out with it) which
>would mean giving up my beloved mailer exmh.
>
>Or does somebody know how to set exmh (nmh) to use smtp for sending mail?

By "using smtp", I assume you mean here that the client is told to use an 
SMTP server that is not on the same host (in practice, your ISP's relay). 
MTAs like sendmail (I'm basing this on actual experience with exim, but 
sendmail should have equivalent functionality) can be configured to use a 
"smarthost relay" for sending mail, and you can use this capability to have 
sendmail use your ISP's SMTP relays. I don't know the details of this setup 
for sendmail, so perhaps someone else here who actually uses such a setup 
can supply them to you.

>Regards
>
>Peter
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
