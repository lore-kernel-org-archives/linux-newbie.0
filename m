From: Paulo Jorge de Oliveira Cantante de Matos <pocm@netvisao.pt>
Subject: Re: Kernel seems to be blocking messages
Date: Sun, 22 Feb 2004 10:57:36 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1077447455.8691.9.camel@localhost>
References: <Pine.BSF.4.21.0402211221570.194-100000@hephaestus.sera.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.BSF.4.21.0402211221570.194-100000@hephaestus.sera.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: asterr <asterr@pobox.com>
Cc: linux-admin@vger.kernel.org, linux-newbie@vger.kernel.org

Hi,

You're right. The problem was the iptables configuration. I've done:
iptables -F
iptables -X

Then to share internet with my clients I've done:
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

however, it seems that it is not working, eth0 is my net connection.
This should work, right? Maybe I'm doing something wrong in my clients
config.

Cheers,

Paulo Matos


On Sat, 2004-02-21 at 03:22, asterr wrote:
> I have seen this when iptables is running and pings are not permissioned.
> 
> On Sat, 21 Feb 2004, Paulo Jorge de Oliveira Cantante de Matos wrote:
> 
> > Hi all, 
> > I have a server running 2.6.2-rc1, and I was happily installing
> > vpopmail and reading the vpopmail gentoo guide (www.gentoo.org). Somehow
> > (don't ask me
> > why) every net connections seem to stop and get blocked. Now I cannot
> > make any socket connection. For example: 
> > 
> > # ping localhost 
> > PING descartes.geniousdomain (127.0.0.1) 56(84) bytes of data. 
> > ping: sendmsg: Operation not permitted 
> > ...
> > 
> > Any ideas on how to unblock the situation? 
> > 
> > Cheers,
> > -- 
> > 
> > Paulo J. Matos : pocm [_at_] mega . ist . utl . pt
> > Instituto Superior Tecnico - Lisbon
> > Computer and Software Eng. - A.I.
> >  - > http://mega.ist.utl.pt/~pocm
> > ---
> >         -> God had a deadline...
> >                 So, he wrote it all in Lisp!
> > 
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > 
> > 
> > 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-- 

Paulo J. Matos : pocm [_at_] mega . ist . utl . pt
Instituto Superior Tecnico - Lisbon
Computer and Software Eng. - A.I.
 - > http://mega.ist.utl.pt/~pocm
---
        -> God had a deadline...
                So, he wrote it all in Lisp!

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
