From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: su fails
Date: Tue, 15 Jul 2003 18:38:58 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprsc1u8ichmmv6x@smtp.arrakis.es>
References: <3F133105.7010309@bcgreen.com> <5.1.0.14.1.20030714080202.01ef9e68@celine> <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es> <200307142023.43039.pa3gcu@zeelandnet.nl> <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com> <5.1.0.14.1.20030715074706.01faa538@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030715074706.01faa538@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

>>> It sounds to me like you've been rooted, and somebody installed
>>> a trojan.  I'd do a full hunt for signs of a rootkit. When in
>>> doubt (especially if there are ony a few people on your system),
>>> I'd just load a new OS and migrate the user data over to it.
>
> I don't want to sound like Pollyanna, but interpreting your initial 
> trouble report as evidence of a breakin seems to me like an enormous 
> leap.
>> I thought reinstalling shadow had put everything right, but there are 
>> still hiccups. For example, although I can now su again --that is, it 
>> now recognises the password-- if I give the wrong password I still get 
>> just 'sorry'.
>
> I presume you mean "Sorry."

I do indeed.

> Do you recall if you used to get a response more like the one Richard and 
> I posted here?

I can't remember. In a similar situation Slackware 7.1 does give a longer 
response.

>> Lilo failed to load again and I have had to reinstall it.
>
> Without details of your setup, this one is impossible to diagnose. But 
> why would a rootkit mess with the bootloader?

I'll leave that one till I've had a chance to try it again.
>
>> And I get a very strange message in my user .xsession-errors file. It 
>> says:
>> 'stderr is not a tty - where are you?'
>
> Context, please. Is that the full line? How do you normally run X? What 
> userid?
This one bugs me a bit. That's the complete message. It turns up twice 
(repeated) in the .xsession-errors file in my home directory. X is started 
by xdm from rc.4. It starts with a login screen and I log in as normal 
user. I use the Window Maker window manager.

>
>> GRC reports most ports as stealthed and 113 IDENT and 5000 UPnP as 
>> closed.
>
> Does it report ANY ports as open?
No

What does "netstat -ln" report?
Nothing that looks suspicious to me, but I'll study the manual first of 
all.
One more thing: as normal user I also found I couldn't mount floppies or 
cds (in spite of the 'user' option in fstab) Reinstalling the util-linux 
packet has put that right. I think I put one very large foot in the works, 
nothing more sinister. No-one else has physical access to the system
Thanks for your help,
Andrew 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
