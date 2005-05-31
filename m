From: "Sudhir Barwal" <sudhir@guj.nic.in>
Subject: Re: Most Vulnerable Protocol
Date: Tue, 31 May 2005 13:21:44 +0530
Message-ID: <002d01c565b5$98482cc0$0a32a8c0@sudhir1>
References: <008501c564d8$15857af0$0a32a8c0@sudhir1> <1117436352.823.18.camel@beastie.kruemel.home>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newsletter <newsletter@guengel.ch>
Cc: linux-newbie@vger.kernel.org

Thanks Rafael for the reply,

I waited for sometime so that I can reply to everyone at once.

I fully agree with your view that end points are vulnerable rathere than
protocol.
Actually what I mean was that which is the protocol having most no of
vulnerabilities?
(I suppose TCP). To manage my traffic passing from router I want to enable
snmp on
my cisco 3845 router, so whether it is safe to open that or not.
I'm giving public community with RO access.
I have put the iptable firewall before that.

Thanks.

Sudhir


----- Original Message ----- 
From: "newsletter" <newsletter@guengel.ch>
To: "Sudhir Barwal" <sudhir@guj.nic.in>
Cc: <linux-newbie@vger.kernel.org>
Sent: Monday, May 30, 2005 12:29 PM
Subject: Re: Most Vulnerable Protocol


> Hi Sudhir
>
> My first guess was, every protocol that is not encrypted is vulnerable
> to the most basic attacks, e.g. password sniffing.
>
> However, on a second look, what does "a vulnerable protocol" mean? As
> stated, if passwords and other sensitive data is not encrypted, it is
> for sure not secure. But there are other issues that also influences the
> security of network services: Is the receiving end vulnerable to buffer
> overflows for example. Take a web server, the protocol, http, is clear
> text, so all you need is a telnet client an you can talk to every web
> server. Does this make the protocol vulnerable? Well, to a certain
> degree yes, but it is more concerning how the web server reacts on
> malformed packets. Same goes for snmp.
>
> In my opinion, it's not the protocol that's vulnerable, the sending and
> receiving ends are.
>
> So with this in mind, have a look at:
> * http://www.rfc-editor.org
> * http://www.sans.org
> * http://www.cert.org
> * http://www.securityfocus.org/
>
> regards
> rafi
>
> On Mon, 2005-05-30 at 10:56 +0530, Sudhir Barwal wrote:
> > Hi everybody,
> >      I'm sorry if it is of the topic, but I though this is the right
place
> > to ask this.
> > I want to know that which is the most vulnerable protocol. I mean which
is
> > the
> > protocol in which lot of vulnerabilities are there and can be hacked
easily.
> > Why this question arises because somebody told me that SNMP is the most
> > vulnerable protocol.  After that I google but could not find
satisfactory
> > link.
> > Any link, views are appericated in this regard.
> >
> > Thanks.
> >
> > Sudhir Barwal
> >

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
