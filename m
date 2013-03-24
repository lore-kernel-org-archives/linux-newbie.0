From: Aniruddha Bhattacharyya <aniruddha.aot@gmail.com>
Subject: Re: seq in tcp protocol
Date: Sun, 24 Mar 2013 15:56:14 +0530
Message-ID: <CAOXuEsxyugU-Z2yVX-8T-OdAxJcxh0gWFMVhX0CNZqBHYDzS3Q@mail.gmail.com>
References: <20130322133008.GA1348@debian.localdomain> <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
 <20130324032932.GB23928@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=T+TuwUCjiJf4BHT5cMZb2XK5Q9yMLBB+pCUdqUQ7OoE=;
        b=l6Zu1BNd0Ajk2QNC5pywJyPsZp/28rX4VH+f+ID1I9CVQNhK9Na9W8Q/XNXDa2cO/b
         AZMsmw8uBXQVuEnzjL+WXBu+m6JXFLrl9PnzRAZRMUh5s7scBX3oV105UjDCD+/eRcjq
         aExJfoG7X9gR2tkBTz9Ig/FDJv3/E0DYM2jhdiwIkAqPh+Ao3LUOBKRdY8XG0cNRHx+3
         qIaRAbIrFvpgDJBfg1b4eeZDHvM1GIgu6E2wCebdQRVDgoFZgrlkfZxC7KWAexDGw3a2
         DJJrze+jS//GWHJZlY6koP35uOiclWruKjWGVgfKmCPLWJF8T6UH/uUuK28VrZD/VyM0
         tRzA==
In-Reply-To: <20130324032932.GB23928@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: Kristof Provost <kristof@sigsegv.be>, linux-newbie <linux-newbie@vger.kernel.org>

FIN flag is set to terminate a TCP session, similarly SYN flag is set
to indicate beginning of a TCP transmission.
So stream tear-down is initiated as soon as receiver gets a packet
with FIN flag set to 1. Though there are some intricacy and variation
of it.

http://www.fluffyspider.com/resources/papers/TTCPIMG00011.GIF


http://www.fluffyspider.com/resources/papers/t_tcp.html

On Sun, Mar 24, 2013 at 8:59 AM, ishare <june.tune.sea@gmail.com> wrote:
> On Sat, Mar 23, 2013 at 02:31:18PM +0100, Kristof Provost wrote:
>> On 2013-03-22 21:30:08 (+0800), ishare <june.tune.sea@gmail.com> wrote:
>> >   If I send a  buffer with tcp protocol , the data is separated to serveral packets ,
>> >   each packet will have a seq number with it ,which ensures the recipient read this buffer
>> >   in right orfer .
>> >
>> >   my question is : how the recipient know which is the end packet of this queue ? Is there
>> >   data indicate the total quantity of packets composing this buffer ?
>> >
>> TCP is a stream protocol. There is no concept (at the application level
>> anyway) of packets in TCP. The receiving TCP/IP stack is free to offer
>> the data to the application whenever it decides to, in however many
>> lumps as it decides to. Similarly, the sending TCP/IP stack may decide
>> to wait to send data until it's received more from the sending
>> application before packaging it and sending it to the receiver.
>
>   When one  send  system api is called , will  all  data in the buffer
>   be sent out together at one time ?
>
>
>>
>> You may find http://en.wikipedia.org/wiki/Nagle%27s_algorithm
>> interesting.
>>
>> Regards,
>> Kristof
>>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
