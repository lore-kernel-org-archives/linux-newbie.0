From: Henrik Nordstrom <hno@marasystems.com>
Subject: Re: TCP_KEEPIDLE
Date: Sun, 14 Mar 2004 01:19:10 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403140117040.17900-100000@filer.marasystems.com>
References: <BAY1-F65ljWwY0VnkB400018cab@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAY1-F65ljWwY0VnkB400018cab@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Lyle Coder <x_coder@hotmail.com>
Cc: linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

On Sat, 13 Mar 2004, Lyle Coder wrote:

> Hi,
> I have a case where my server accepts connections from clients that 
> imporperly shit down, causing a large number of file descriptors to remain 
> in use by my server program (the kernel has not notified me that the remote 
> client is non existent anymore)
> 
> Can I use TCP_KEEPIDLE for this?

You can use SO_KEEPALIVE for this, and optionally tune how it behaves with
TCP_KEEPIDLE and friends or the similar global sysctl parameters..

   man 7 socket
   man 7 tcp

Regards
Henrik

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
