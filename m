From: "David S. Miller" <davem@redhat.com>
Subject: Re: sending data on a socket followed by a close
Date: Wed, 27 Aug 2003 23:01:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030827230125.5f3b3963.davem@redhat.com>
References: <20030828003552.78024.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030828003552.78024.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lee Chin <leechin@mail.com>
Cc: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

On Wed, 27 Aug 2003 19:35:52 -0500
"Lee Chin" <leechin@mail.com> wrote:

> At the end, after sending all my data, I "close" the socket.
> 
> However, the client sees a TCP RST packet and only receives partial data.
> 
> What am I doing wrong?  I though that the close would actually kill the socket after all the data has been sent

You cannot close() the socket until you have emptied all
the data bytes on the read side of the socket(), if data
remains on the read side when you close() a TCP RST packet
is sent.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
