From: Ray Olszewski <ray@comarre.com>
Subject: Re: root password
Date: Sat, 02 Apr 2005 10:53:24 -0800
Message-ID: <5.1.0.14.1.20050402103749.01f72650@celine>
References: <200504011052.06961.eric@cisu.net>
 <5.1.0.14.1.20050330063201.02035bd0@celine>
 <200504011823.16115.Tobias.Hirning@gmx.de>
 <200504011052.06961.eric@cisu.net> <200504012003.16580.Tobias.Hirning@gmx.de>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504012003.16580.Tobias.Hirning@gmx.de>
References: <200504011052.06961.eric@cisu.net>
 <5.1.0.14.1.20050330063201.02035bd0@celine>
 <200504011823.16115.Tobias.Hirning@gmx.de>
 <200504011052.06961.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:03 PM 4/1/2005 +0200, Tobias Hirning wrote:
>Hi Ray!
>On Friday, 1. April 2005 18:52 Ray wrote:
> >> [...]
> > [..]
> > Get the shadow file and crack
>Yeah, I've done this on a big system and about 90% of the users used
>weak passwords.
> > [...]
> > Sniff the password from telnet/unsecure services
>Who is still using telnet? I wouldn't use telnet on a secure net
>either.
>Tobias

I don't, from these fragments, recognize what message you are replying to, 
Tobias. But your quoting makes it appear that the two suggestions you 
respond to are mine, and I just wanted to make it clear that they are not. 
Neither would have been responsive to the message that started this thread 
... a user who forgot his own root password looking for a workaround.

In a modern setting, neither of these suggestions is very useful ... only 
amazingly insecure systems would be vulnerable to either approach.

"Get the shadow file" is not a trivial step in the instructions (How to 
travel in time: 1. Purchase or construct a flux capacitor; 2. Install it in 
a DeLorean); normally it requires root access.  So anyone who can get this 
file has already figured out how to get root access, at least in a limited 
way. I am a bit surprised at your 90% claim; when I've done this (in my 
onetime role as a sysadmin), I found maybe 3-5% of users had weak passwords 
(by the standards of the cracking software of the time).

And while telnet continues to have very limited, specialized uses (for some 
embedded systems, it is the only service available), you are right that no 
host that pretends to be even minimally secure should be running a telnet 
daemon.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
