From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: ntp - how?
Date: Fri, 2 Aug 2002 15:31:57 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02080215315702.02607@unix.pa3gcu>
References: <3D36DDA3.FA0F073C@gmx.net> <3D45AD28.7623B094@gelm.net> <3D4A59E1.DAFE9F79@gelm.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D4A59E1.DAFE9F79@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

On Friday 02 August 2002 10:07, Chuck Gelm wrote:
> Howdy, Y'all:
>
>  I stuck trying to run ntpd.  I don't see any updates
> when I run 'ntpq -p'.  When I run 'ntpdate host',
> all of the hosts I've tried return
> "[date] : no server suitable for synchronization found"
> What is wrong?

I dont know who is stuck the most, me or you, i dont know which program you 
mean, as in the header you imply ntp which is Network Time Protocol, and in 
the mail itself you imply ntpq.

Just what do you want to achive, ? i may have missed a mail somewhere and be 
missing the point, so i will ask;
What do you want to do, use ntp to set your systemtime from a timeserver ont 
he net, or do you want to run nntp newsservices.?

A simple command for setting time is;
netdate timeserver_domainname
Or;
rdate -s timeserver_domainname

>
> Regards, Chuck

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
