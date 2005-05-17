From: Ray Olszewski <ray@comarre.com>
Subject: Re: Reverse DNS
Date: Mon, 16 May 2005 22:01:48 -0700
Message-ID: <42897ABC.4030506@comarre.com>
References: <200505170217.j4H2HKo6000609@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505170217.j4H2HKo6000609@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

I added the mailing list back in with this reply.

Peter wrote:
> ray@comarre.com said:
> 
>>3. But perhaps the problem is that you are not actually sending your  mail
>>from the above IP address? Looking at the headers for the message  you sent
>>here, it came from an MTA at 203.87.189.146 . Let's look at that address ...
> 
> 
>>	ray@kuryakin:~$ host 203.87.189.146
>>	203.87.189.146 does not exist, try again
> 
> 
>>So there is the problem; the *actual* IP address of your broadband
>>connection lacks a reverse-DNS entry.
> 
> 
> Yes I send the mail via the broadband ISP. Now, cat /etc/resolv.conf I get:
> 
> nameserver 203.87.128.3
> search meridiantelekoms.com
> 
> then I get:
> 
> heisspf@~:$ host 203.87.128.3
> 3.128.87.203.in-addr.arpa domain name pointer dns1.meridiantelekoms.com.
> 
> heisspf@~:$ host dns1.meridiantelekoms.com
> dns1.meridiantelekoms.com has address 203.87.128.3
> 
> So there is a reverse DNS.

Foe the nameserver there is, but that is irrelevent to your problem.
> 
> Where does that "actual" ISP 203.87.189.146 in my mail then come from?
> 

Every e-mail has, in addition to the headers you see (like To: and 
From:), a bunch of other headers that most MUAs do not display. In 
particular, there will be a series of Received: headers that report the 
path of SMTP relays that the message took to get from the sender to the 
recipient. All MUAs I've used offer the option of displaying these 
headers, but there is really no standard for how to do that, so I cannot 
tell you how your MUA (whatever it is) can be set to show them.

In the case of the message you sent to me, it contained this final 
Received: header --

Received: from [203.87.189.146] (helo=skyinet.net)	by celine.comarre.com 
with esmtp (Exim 3.35 #1 (Debian))	id 1DXrdx-0004FF-00	for 
<ray@comarre.com>; Mon, 16 May 20

This tells me that your MTA runs on a machine that appears to the 
Internet to have the IP address 203.87.189.146 ... whether it itself has 
that address or is behind a router that SNATs it to that address is 
something I cannot determine. But for the AOL purposes, it does not 
matter. What matters is that when you send a messge to someone@aol.com, 
the AOL MTA sees the message as coming from an MTA at 203.87.189.146 and 
tries to reverse-lookup that address ... which, as I indicated before, I 
cannot do, so AOL probably cannot do it either.

> ray@comarre.com said:
> 
>>This lookup failure  suggests a degree of sloppiness at your ISP that would
>>have me looking  elsewhere for a service provider.
> 
> 
> Meridiantelekoms has set-up and operates the broadband connection, therefore, 
> I can't possibly change them. In the meantime I have informed them of the 
> problem.

At least here in the USA, most communities have more than one broadband 
supplier. Were I to face your problem, I would at least consider 
changing who I got my broadband service from ... especially if requests 
to fix the problem were ignored.

> ray@comarre.com said:
> 
>>In the meantime -- does your ISP provide a mail forwarder? Most do. If  so,
>>setting up your MTA to send mail through that forwarder would  probably
>>satisfy AOL's requirements.
> 
> 
> As I said skyinet.net my former ISP delivered mail to AOL properly via the 
> modem connection. Now I am still sending and receiving mail using skyinet 
> through meridaintelekoms. Therefore I conclude meridian acts as a mail 
> forwarder. Would that need a special setting-up?
> 
> Thanks & regards

A mail forwarder is an MTA that your MTA uses to send all messages. That 
is, you set it up to send all outgoing mail to (for example) 
mail.myisp.com . For this to work, mail.myisp.com needs to know that it 
is supposed to forward (relay) messages for you, and the details of how, 
even whether, you can use it that way are entirely under the control of 
your ISP.

I do recall your mentioning previously (some months back) that you were 
somehow using skyinet through your broadband connection, but if you ever 
told us the details, I've forgotten them. Do note that if the message 
you sent to me is an example of what you are referring to, it doesn't 
really use skyinet to send the mail ... your on-LAN MTA is sending the 
mail directing to the destination MTA, but is just displaying 
<heisspf@skyinet.net> as the From: address. That approach won't solve 
your AOL problem.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
