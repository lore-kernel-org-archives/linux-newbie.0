From: Steven Ackerman <ackerman_steven@yahoo.com>
Subject: Re: Wireless Mouse/ USB selection
Date: Fri, 18 Jun 2004 17:58:13 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040619005813.67483.qmail@web14812.mail.yahoo.com>
References: <200406180719.43075.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200406180719.43075.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: pa3gcu@zeelandnet.nl
Cc: LinuxNewbie <linux-newbie@vger.kernel.org>

Please see inline comments:

--- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> > I have just installed Mandrake 9.1. I chose tty0
> > (com1?

> I am sure you mean /dev/ttyS0 not /dev/tty0

I guess so. Whatever it was doesn't really matter. It
wasn't right. I believe it was the linux equivelant of
Com port 1. You would probably know better than I.
> 
> > I have installed M9.1 previously and I believe
> that I chose
> > USB mouse during the installation.

Whatever it was that I chose the first time, when I
used the same installation media, worked. Sorry, I
can't remember what it was.
> 
> It depends on where your mouse is actualy connected
> too and quite possably 
> what type of mouse it is.

My mouse is not connected to anything. I believe it
uses radio waves. I do not know what recieves whatever
it is that it uses. The mouse came with the machine
which is a Sony Vaio PCV-V100G. Before everyone pukes,
as I did, please let me state. I have had this machine
with it's stupid vaio mouse working before. The mouse
says "Vaio" on it. It's wireless. Red light emanates
from the bottom of what would typically be the scroll
ball on the bottom of a "regular" mouse. I hope that
helps.

> 
> >
> > I need to change this and don't know how. I looked
> at
> > tldp.org and didn't find anything. It was somewhat
> > cumbersome using entirely the keyboard anyway.
> > Hopefully someone can help.
> 
> USB mice do not  normally connect to a seriel port,
> they connect to a USB 
> port, some USB mice can even be connected to a PS2
> port when a USB to PS2 
> plug is used.
> 
> Not knowing what type of mouse you have and or where
> it needs to be connected 
> one cannot really comment, on top of all that one
> needs to know which 
> protocol it uses as well because it all depends on
> where its connected.

Sorry. I didn't need to know all that when I installed
the first time. And I don't recall choosing an option
that fit my mouse. My mouse is not USB, but I thought
I chose it and had it working with that option. My
mouse is wireless. What protocol it uses, I have no
clue. I didn't even know a mouse would use a protocol.
Anyway. I hope this might clarify some things and let
you know where I'm at and what I do and don't know
about the problem. I did find the mouse.conf file and
notice the entry in there for tty0 ( I believe it was
/dev/tty0). But that doesn't help someone who doesn't
know what entry to put in it for their mouse. Hence
the message to the list.

Thanks. Let me know if there's something more I can
explain or do. If not, I'll keep looking for other
resources.

Thanks again.

-Steve
> 
> >
> > Steve
> 
> -- 
> If the Linux community is a bunch of thieves because
> they
> try to imitate windows programs, then the Windows
> community
> is built on organized crime.
> 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 
> 



		
__________________________________
Do you Yahoo!?
Read only the mail you want - Yahoo! Mail SpamGuard.
http://promotions.yahoo.com/new_mail 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
