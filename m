From: Lee Chin <leechinus@yahoo.com>
Subject: Re: Getting the IP address of a UDP client
Date: Fri, 3 Jan 2003 16:22:38 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104002238.87450.qmail@web14305.mail.yahoo.com>
References: <20030104021327.A4573@neutrino.particles.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030104021327.A4573@neutrino.particles.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Elias Athanasopoulos <eathan@otenet.gr>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

Hi,
This is a UDP server ... so I do not use accept, I
simply have a server loop that does a "recv" ...

So the server does a recvfrom and then a sendto on the
same file descriptor... 

When I try to do an accept, that system call fails
because it is not a TCP socket...

Thanks
Lee
--- Elias Athanasopoulos <eathan@otenet.gr> wrote:
> On Fri, Jan 03, 2003 at 11:03:20AM -0800, Lee Chin
> wrote:
> > I can use getpeername to get the IP address of a
> > client on a connected TCP socket, but when I have
> a
> > UDP client that just sent me a packet, how do I
> get
> > the IP address of that UDP client?
> 
> Forgive me if I have misunderstood you, but do you
> use accept() to create
> the new incoming connection? Then the second
> argument to accept() is
> a structure, which contains the information you
> want.
> 
> Have a look at the man page of accept(2).
> 
> Elias
> 
> -- 
> http://gnewtellium.sourceforge.net			MP3 is not a
> crime.	


__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
