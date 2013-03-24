From: Kristof Provost <kristof@sigsegv.be>
Subject: Re: seq in tcp protocol
Date: Sun, 24 Mar 2013 10:37:49 +0100
Message-ID: <20130324093748.GC9539@thebe.jupiter.sigsegv.be>
References: <20130322133008.GA1348@debian.localdomain>
 <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
 <20130324032932.GB23928@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20130324032932.GB23928@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: linux-newbie@vger.kernel.org

On 2013-03-24 11:29:32 (+0800), ishare <june.tune.sea@gmail.com> wrote:
> > TCP is a stream protocol. There is no concept (at the application level
> > anyway) of packets in TCP. The receiving TCP/IP stack is free to offer
> > the data to the application whenever it decides to, in however many
> > lumps as it decides to. Similarly, the sending TCP/IP stack may decide
> > to wait to send data until it's received more from the sending
> > application before packaging it and sending it to the receiver.
> 
>   When one  send  system api is called , will  all  data in the buffer 
>   be sent out together at one time ?
> 
No. There are no guarantees about how many TCP packets will be used to
send your data, or in how many buffers it will be offered to the
application on the receiving side.

Kristof

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
