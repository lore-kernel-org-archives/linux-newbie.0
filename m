From: Lee Chin <leechinus@yahoo.com>
Subject: Re: Getting the IP address of a UDP client
Date: Fri, 3 Jan 2003 18:26:05 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104022605.22049.qmail@web14309.mail.yahoo.com>
References: <Pine.LNX.4.44.0301031930470.29107-100000@coffee.psychology.mcmaster.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0301031930470.29107-100000@coffee.psychology.mcmaster.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mark Hahn <hahn@physics.mcmaster.ca>
Cc: Elias Athanasopoulos <eathan@otenet.gr>, linux-newbie@vger.kernel.org

Hi Mark,
I am not using recvfrom... I simply use recv

In other words, I create the server UDP socket, listen
on a port then enter into a while loop just doing a
recv.  Now the thing is, many different clients are
sending packets to the server, and I need to reply to
each of them at a later time, so I need to get their
IP addresses and store it away so I can do a sendto at
a later time

Thanks
Lee
--- Mark Hahn <hahn@physics.mcmaster.ca> wrote:
> > This is a UDP server ... so I do not use accept, I
> > simply have a server loop that does a "recv" ...
> > 
> > So the server does a recvfrom and then a sendto on
> the
> 
> if you're using recvfrom, why aren't you simply
> providing 
> a buffer for the "from" argument (and appropriate
> fromlen).
> read the fine man page!
> 


__________________________________________________
Do you Yahoo!?
Yahoo! Mail Plus - Powerful. Affordable. Sign up now.
http://mailplus.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
