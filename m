From: Nagendra Singh Tomar <nagendra_tomar@adaptec.com>
Subject: Re: sending data on a socket followed by a close
Date: Thu, 28 Aug 2003 00:44:18 +0530 (IST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0308280041360.13969-100000@localhost.localdomain>
References: <20030827230125.5f3b3963.davem@redhat.com>
Reply-To: nagendra_tomar@adaptec.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030827230125.5f3b3963.davem@redhat.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lee Chin <leechin@mail.com>
Cc: "David S. Miller" <davem@redhat.com>, hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Receiver (in ur discussion) should be sending the RST not the sender.
But ur explaination seems to hint that the sender of data is the one 
sending RST. 

tomar

On Thu, 28 Aug 2003, David S. Miller wrote:

> On Wed, 27 Aug 2003 19:35:52 -0500
> "Lee Chin" <leechin@mail.com> wrote:
> 
> > At the end, after sending all my data, I "close" the socket.
> > 
> > However, the client sees a TCP RST packet and only receives partial
> data.
> > 
> > What am I doing wrong?  I though that the close would actually kill
> the socket after all the data has been sent
> 
> You cannot close() the socket until you have emptied all
> the data bytes on the read side of the socket(), if data
> remains on the read side when you close() a TCP RST packet
> is sent.
> -
> To unsubscribe from this list: send the line "unsubscribe linux-net" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
