From: Kristof Provost <kristof@sigsegv.be>
Subject: Re: seq in tcp protocol
Date: Sat, 23 Mar 2013 14:31:18 +0100
Message-ID: <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
References: <20130322133008.GA1348@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20130322133008.GA1348@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: linux-newbie@vger.kernel.org

On 2013-03-22 21:30:08 (+0800), ishare <june.tune.sea@gmail.com> wrote:
>   If I send a  buffer with tcp protocol , the data is separated to serveral packets ,
>   each packet will have a seq number with it ,which ensures the recipient read this buffer
>   in right orfer .
> 
>   my question is : how the recipient know which is the end packet of this queue ? Is there 
>   data indicate the total quantity of packets composing this buffer ?
> 
TCP is a stream protocol. There is no concept (at the application level
anyway) of packets in TCP. The receiving TCP/IP stack is free to offer
the data to the application whenever it decides to, in however many
lumps as it decides to. Similarly, the sending TCP/IP stack may decide
to wait to send data until it's received more from the sending
application before packaging it and sending it to the receiver.

You may find http://en.wikipedia.org/wiki/Nagle%27s_algorithm
interesting.

Regards,
Kristof

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
