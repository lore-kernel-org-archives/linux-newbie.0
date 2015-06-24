From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: Re: sock_hold and sock_put
Date: Wed, 24 Jun 2015 19:44:49 +0530
Message-ID: <CAGZFCEFQju581PDF3QpyX-s8vvdxPrZTwS85CP3rTu4wUfEHBg@mail.gmail.com>
References: <CAGZFCEHHXbnsSoBaTUdxqwoQ75hN5BTBXJMEXp0dkwQbFSEkRw@mail.gmail.com>
	<1435150000.4110.7.camel@edumazet-glaptop2.roam.corp.google.com>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=edFaKrXzBdv/NDvHBf/OixHDHlWVY/pySoVvujepv88=;
        b=UrGyT1NPpfxB4KZ2BVWc0Yyrf3kZjUvvGeNWIfZD3a8JMW6tPvdJWDpCMFzeleMHN1
         ObfhIWKdfHibYbIuboIXJJMEnaqhD1FLzHKEHYQoDMwfIM5fKXB2mIElVBNTlfk1jV7v
         id0DynKGfS4oA1XY7GJasvVlLfJ4H2+Hgs+BCtF0gDmNStrHQeShJvOYEIBreghKS6Bj
         61wNCGoWiwwSOhlV3ZAkF5ojzY64yDt02VPcTkfsMy07Xx2ZFPkmoqgBX2n5CRL7d2r7
         gD+ZQyotgEWp7uIEY0G9M++laM4KLv/JEV/b+Lk2FVY/1fChjKOeklxR1YZu0fcUCMM0
         gthg==
In-Reply-To: <1435150000.4110.7.camel@edumazet-glaptop2.roam.corp.google.com>
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Eric Dumazet <eric.dumazet@gmail.com>
Cc: netdev <netdev@vger.kernel.org>, linux-newbie <linux-newbie@vger.kernel.org>

On Wed, Jun 24, 2015 at 6:16 PM, Eric Dumazet <eric.dumazet@gmail.com> wrote:
> You misunderstood the comment.
>
> Comment only stated that sock_hold() must be used in contexts where
> caller owns a reference (and will eventually release it later with
> sock_put().
>
> There is nothing about having a lock here.

Thanks. I think, i did not put the question right.

I understood the comment perfectly. Suppose i need to use the
sock_hold in some callbacks ( say netdev_notifier chain callback)
function. How can i gurantee race won't happen at the point where i
call sock_hold().
 If i put the question  in another way - say kernel is doing a
sock_put() on a socket, and at the same time  the   netdev_callback
function( that i implemented ) is called on another core ( in smp
machine ). and the  callback is  holding (sock_hold()) on the same
sock.

Thanks,
Ratheesh
