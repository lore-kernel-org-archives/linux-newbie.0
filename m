From: ishare <june.tune.sea@gmail.com>
Subject: Re: seq in tcp protocol
Date: Sun, 24 Mar 2013 11:29:32 +0800
Message-ID: <20130324032932.GB23928@debian.localdomain>
References: <20130322133008.GA1348@debian.localdomain>
 <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=JrzjHV8hahy7L0OhVha7rlUP0mUOLKHv8KDPWBhafCs=;
        b=cNjsBDWDkfTtitmZ81R6BFpq/y2p93LWJC7MYdk+2gVpTISGCFywJFVbGbXVGeH5sh
         ZaDnD2qiOttMD7xn7ZpqTGiNSM5yuu7P1Kz5auh6KkfKNtKbWowVVbL2HXyw2j7JuUQB
         bl8BesmE5AuTXSa0FcIX7WEc9HgcFls0cvND32jLkKZJYHRrUUjycgAQ1SecnFOOc1E3
         ITrLvQQeomhELKsA9LEJJRLEOR0N7Ap5H4Jg6MEMFT3+XhwdZpkWS3hvE/AIB8frEeiR
         arh5YQmEsCHtB0VNu3pLIbh1OaW1zs8hYproluLiwmXUrS1lJruV615QycZFs3RaLZ16
         r1eQ==
Content-Disposition: inline
In-Reply-To: <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kristof Provost <kristof@sigsegv.be>
Cc: linux-newbie@vger.kernel.org

On Sat, Mar 23, 2013 at 02:31:18PM +0100, Kristof Provost wrote:
> On 2013-03-22 21:30:08 (+0800), ishare <june.tune.sea@gmail.com> wrote:
> >   If I send a  buffer with tcp protocol , the data is separated to serveral packets ,
> >   each packet will have a seq number with it ,which ensures the recipient read this buffer
> >   in right orfer .
> > 
> >   my question is : how the recipient know which is the end packet of this queue ? Is there 
> >   data indicate the total quantity of packets composing this buffer ?
> > 
> TCP is a stream protocol. There is no concept (at the application level
> anyway) of packets in TCP. The receiving TCP/IP stack is free to offer
> the data to the application whenever it decides to, in however many
> lumps as it decides to. Similarly, the sending TCP/IP stack may decide
> to wait to send data until it's received more from the sending
> application before packaging it and sending it to the receiver.

  When one  send  system api is called , will  all  data in the buffer 
  be sent out together at one time ?

  
> 
> You may find http://en.wikipedia.org/wiki/Nagle%27s_algorithm
> interesting.
> 
> Regards,
> Kristof
> 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
