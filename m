From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Getting the IP address of a UDP client
Date: Sat, 4 Jan 2003 02:13:27 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030104021327.A4573@neutrino.particles.org>
References: <20030103190320.45393.qmail@web14302.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030103190320.45393.qmail@web14302.mail.yahoo.com>; from leechinus@yahoo.com on Fri, Jan 03, 2003 at 11:03:20AM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechinus@yahoo.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org

On Fri, Jan 03, 2003 at 11:03:20AM -0800, Lee Chin wrote:
> I can use getpeername to get the IP address of a
> client on a connected TCP socket, but when I have a
> UDP client that just sent me a packet, how do I get
> the IP address of that UDP client?

Forgive me if I have misunderstood you, but do you use accept() to create
the new incoming connection? Then the second argument to accept() is
a structure, which contains the information you want.

Have a look at the man page of accept(2).

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
