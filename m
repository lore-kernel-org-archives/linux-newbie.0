From: "Lee Chin" <leechin@mail.com>
Subject: Re: is sendto and recvfrom thread safe?
Date: Thu, 21 Aug 2003 15:02:26 -0500
Sender: linux-net-owner@vger.kernel.org
Message-ID: <20030821200226.59291.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Stephen Hemminger <shemminger@osdl.org>
Cc: Mark Hahn <hahn@physics.mcmaster.ca>, linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

This sort  of helps... my question is with respect to UDP sockets, for sendto and recvfrom, can I concurrently have two threads at the same time write (sendto) on a same file descriptor?  How about readfrom and sendt on the same file descriptor at the same time?

Thanks
Lee
----- Original Message -----
From: Stephen Hemminger <shemminger@osdl.org>
Date: Thu, 21 Aug 2003 09:16:49 -0700
To: "Lee Chin" <leechin@mail.com>
Subject: Re: is sendto and recvfrom thread safe?

> On Thu, 21 Aug 2003 01:06:45 -0500
> "Lee Chin" <leechin@mail.com> wrote:
> 
> > Hi,
> > If I have a global socket file descriptor, can I call sendto and recvfrom on that file descriptor concurrently with out using semaphores around the call to sendto and recvfrom?
> > 
> > What about for TCP sockets?
> > 
> > Thanks
> > Lee
> 
> It depends on your definition of thread safe.
> Sendto and recvfrom are for UDP which is a datagram protocol; therefore
> each call sends and receives a separate data unit.  The application protocol
> has to be atomic to work with UDP anyway. Your application has to deal
> with out of order, and dropped packets.
> 
> If you use TCP sockets with threaded applications you better do application
> level locking per socket and have enough information in your protocol to describe
> the length of each operation.  TCP is a byte stream, and with multiple threads sending
> it is possible to "mix the streams".  Multiple threads reading will get out of
> order data.
> 
> This is true of all OS's that I know about that support threads 
> (Windows, Solaris, Linux, ...).

-- 
__________________________________________________________
Sign-up for your own personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

CareerBuilder.com has over 400,000 jobs. Be smarter about your job search
http://corp.mail.com/careers

