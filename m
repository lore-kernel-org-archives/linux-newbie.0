From: Ray Olszewski <ray@comarre.com>
Subject: Re: At Loss with Mailing
Date: Wed, 09 Apr 2003 09:49:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030409092804.01e9d818@celine>
References: <Your message of "Mon, 07 Apr 2003 20:50:17 MST."  <5.1.0.14.1.20030407203323.020407e0@celine>
 <5.1.0.14.1.20030407203323.020407e0@celine>
 <Your message of  "Mon, 07 Apr 2003 10:03:10 MST." <5.1.0.14.1.20030407094724.01e9bd88@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200304090647.h396lnV05069@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

At 02:47 PM 4/9/2003 +0800, Peter wrote:
>Thanks Ray! Sorry, I can't figure out what is FQN. I tried to ask Philonline,
>however, there line is always busy.

FQN= Fully Qualified Name, orm more plainly, a name that includes both a 
hostname and a domain name (e.g., vger is a hostname, vger.kernel.org is an 
FQN). The term FQDN (Fully Qualified DOmain Name) is also used for this.

>One more thing I want to repeat, sending mail only fails to institutional
>addresses like vger.kernel.org, readhat.com, dw-world.de. Mails to private
>individuals go through like this one now to you.

Oh ... only *some* e-mail fails. I missed this in your prior messages (I 
guess that's wha you meant by "certain e-mail addresses"). That's very 
different. Had I caught it, I would have asked immediately for an example 
of a successful message. Conveniently, your message to me is such an example.

As to why it happens ... well, looking at the headers on the copy you sent 
directly to me (I never saw a copy from the list, so I assume it did not go 
through) is instructive. The relevant Received: header is --

Received: from [202.95.239.164] (helo=philonline.com)
         by celine.comarre.com with esmtp (Exim 3.35 #1 (Debian))
         id 1939KV-0000ur-00

Compare this to an analogous header from a list message:

Received: from ppp67.pool3.mnl.skyinet.net ([202.78.106.67]:1408 "EHLO
         philonline.com") by vger.kernel.org with ESMTP id <S263250AbTDCDjX>;
         Wed, 2 Apr 2003 22:39:23 -0500

Note that the successful one has an FQN associated with the address, while 
the unsuccessful one does not (the HELO or EHLO part does not count). This 
suggests to me that you can send mail successfully to sites that do not 
authenticate source IP addresses but not to ones that do. The problem 
arises because your ISP (philonline.com, I mean) does not provide 
reverse-lookup information for your IP address:

autovcr@waverly:~$ host 202.95.239.164
202.95.239.164 does not exist, try again

If all of this is correct, there is no fix possible at your end, and the 
problem has nothing to do with Linux, and authentication by reverse lookup 
is *very* widespread. BY not providing reverse lookup, philonline.com is, 
in practice, forcing you to use its smarthost relay for outgoing mail.

I've left the remainder of your message to me below intact, since it 
apparently didn't make it to the list, but I have nothing substantive to 
say about it. If it matters to any *future* posting you make, though ... in 
the ping part, what is "Peter"? What host are you actyually trying to ping 
there?

>  Below is what I get with telnet and ping which did not work, yet I could
>connect to the Internet.
>
>  telnet vger.kernel.org 25
>Trying 209.116.70.75...
>Connected to vger.kernel.org.
>Escape character is '^]'.
>220 vger.kernel.org ZMailer Server 2.99.56-pre4 #1 ESMTP+IDENT ready at 
>Wed, 9
>Apr 2003 01:23:28 -0400
>
>  telnet dw-world.de 25
>Trying 194.55.30.46...
>Connected to dw-world.de.
>Escape character is '^]'.
>Connection closed by foreign host.
>
>[pfheiss@/ peter]$ telnet redhat.com 25
>Trying 66.187.232.56...
>
>  ping -c 10 Peter
>PING philonline.com (202.95.238.2) from 202.95.239.184 : 56(84) bytes of data.
> >From philonline.com (202.95.238.2) icmp_seq=1 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=2 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=3 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=4 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=5 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=6 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=7 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=8 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=9 Destination Port Unreachable
> >From philonline.com (202.95.238.2) icmp_seq=10 Destination Port Unreachable
>
>--- philonline.com ping statistics ---
>10 packets transmitted, 0 received, +10 errors, 100% loss, time 9017ms
>, pipe 2
>
>
>Regards
>
>--
>Peter


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
