From: asterr <asterr@pobox.com>
Subject: Re: Kernel seems to be blocking messages
Date: Sat, 21 Feb 2004 12:22:53 +0900 (JST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.BSF.4.21.0402211221570.194-100000@hephaestus.sera.org>
References: <1077324339.11565.7.camel@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1077324339.11565.7.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paulo Jorge de Oliveira Cantante de Matos <pocm@netvisao.pt>
Cc: linux-admin@vger.kernel.org, linux-newbie@vger.kernel.org

I have seen this when iptables is running and pings are not permissioned.

On Sat, 21 Feb 2004, Paulo Jorge de Oliveira Cantante de Matos wrote:

> Hi all, 
> I have a server running 2.6.2-rc1, and I was happily installing
> vpopmail and reading the vpopmail gentoo guide (www.gentoo.org). Somehow
> (don't ask me
> why) every net connections seem to stop and get blocked. Now I cannot
> make any socket connection. For example: 
> 
> # ping localhost 
> PING descartes.geniousdomain (127.0.0.1) 56(84) bytes of data. 
> ping: sendmsg: Operation not permitted 
> ...
> 
> Any ideas on how to unblock the situation? 
> 
> Cheers,
> -- 
> 
> Paulo J. Matos : pocm [_at_] mega . ist . utl . pt
> Instituto Superior Tecnico - Lisbon
> Computer and Software Eng. - A.I.
>  - > http://mega.ist.utl.pt/~pocm
> ---
>         -> God had a deadline...
>                 So, he wrote it all in Lisp!
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-admin" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 
> 
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
