From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: How to make Linux/SOlaris talk to Window
Date: Wed, 6 Nov 2002 22:51:34 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021106225134.E1142@neutrino.particles.org>
References: <046901c284ff$577d94d0$64fea8c0@pkrausxp> <20021106174708.52609.qmail@web40413.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021106174708.52609.qmail@web40413.mail.yahoo.com>; from cba20032002@yahoo.com on Wed, Nov 06, 2002 at 09:47:08AM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Ni <cba20032002@yahoo.com>
Cc: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Wed, Nov 06, 2002 at 09:47:08AM -0800, Mike Ni wrote:
> In addition to file system, is there any service or
> package would help the programmer to better manage the
> objects or application programming. (I know there is
> CORBA. What are out there in addition to CORBA?)

Yes. CORBA supports remote IPC and lots of different archs/languages. KDE
uses CORBA for IPC.

Another solution, might be Web Services (don't mean anything about .NET and
stuff I ever touch). Specifically, you can use SOAP and XML for remote 
commnunication between application built in different architectures. I'm
sure there is a free implementation of SOAP, but I can't come with a 
link right now.

'Web Services' is a fancy term, I dislike. I hope noone misunderstands
the above paragraph. :-)

Last but not least is sockets. Both Solaris and Linux support BSD sockets
(or a variant closed to the original implementation). Windows have an 
implementation of sockets, too, but I am fine knowing nothing about it. :-)

I'm afraid that in the latter case you'll have to duplicate a lot of
code.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
