From: Terje Eggestad <terje.eggestad@scali.com>
Subject: Re: debate on 700 threads vs asynchronous code
Date: 27 Jan 2003 10:48:22 +0100
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <1043660902.21075.11.camel@pc-16.office.scali.no>
References: <20030123231913.26663.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
In-Reply-To: <20030123231913.26663.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Chin <leechin@mail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

Apart from the argument already given on other replies, you should
keep in mind that you probably need to give priority to doing receive.
THat include your clients, but if you don't you run into the risk of
significantly limiting your bandwidth since the send queues around your
system fill up. 

Try doing that with threads. 


Actually I would recommend the approach c)

c)  Write an asynchronous system with only 2 or three threads where I
manage the connections and keep the state of each connection in a data
structure.  


On fre, 2003-01-24 at 00:19, Lee Chin wrote:
> Hi
> I am discussing with a few people on different approaches to solving a scale problem I am having, and have gotten vastly different views
> 
> In a nutshell, as far as this debate is concerned, I can say I am writing a web server.
> 
> Now, to cater to 700 clients, I can
> a) launch 700 threads that each block on I/O to disk and to the client (in reading and writing on the socket)
> 
> OR
> 
> b) Write an asycnhrounous system with only 2 or three threads where I manage the connections and stack (via setcontext swapcontext etc), which is progromatically a little harder
> 
> Which way will yeild me better performance, considerng both approaches are implemented optimally?
> 
> Thanks
> Lee
-- 
_________________________________________________________________________

Terje Eggestad                  mailto:terje.eggestad@scali.no
Scali Scalable Linux Systems    http://www.scali.com

Olaf Helsets Vei 6              tel:    +47 22 62 89 61 (OFFICE)
P.O.Box 150, Oppsal                     +47 975 31 574  (MOBILE)
N-0619 Oslo                     fax:    +47 22 62 89 51
NORWAY            
_________________________________________________________________________
