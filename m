From: "Lyle Coder" <x_coder@hotmail.com>
Subject: TCP_KEEPIDLE
Date: Sat, 13 Mar 2004 16:54:26 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BAY1-F65ljWwY0VnkB400018cab@hotmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Hi,
I have a case where my server accepts connections from clients that 
imporperly shit down, causing a large number of file descriptors to remain 
in use by my server program (the kernel has not notified me that the remote 
client is non existent anymore)

If the client properly powers down etc, I do get the TCP FINs and hense I 
can clean up... but I want to guard against resources used by machines that 
were ubruptly powered down or had their cables yanked.

Can I use TCP_KEEPIDLE for this?

Thanks
Lyle

_________________________________________________________________
Fast. Reliable. Get MSN 9 Dial-up - 3 months for the price of 1! 
(Limited-time Offer) http://click.atdmt.com/AVE/go/onm00200361ave/direct/01/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
