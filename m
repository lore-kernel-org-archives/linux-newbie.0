From: Anthony Liguori <anthony@codemonkey.ws>
Subject: Re: [Qemu-devel] Transforming stdin and stdout pair into a socket
Date: Mon, 11 May 2009 21:24:26 -0500
Message-ID: <4A08DDDA.309@codemonkey.ws>
References: <8e04b5820905101119u39ae84bfp1bae24be6e057086@mail.gmail.com> <4A0813D6.3050609@codemonkey.ws> <8e04b5820905110632q1a3b9ad4u49d4f3208d994755@mail.gmail.com> <200905120007.24881.paul@codesourcery.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200905120007.24881.paul@codesourcery.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Paul Brook <paul@codesourcery.com>
Cc: qemu-devel@nongnu.org, "Ciprian Dorin, Craciun" <ciprian.craciun@gmail.com>, nbd-general@lists.sourceforge.net, linux-newbie@vger.kernel.org

Paul Brook wrote:
>>     I've seen socat, and I could use it as you described. My only
>> objection to this solution is that there is an unneeded process in the
>> middle that just pipes data around...
>>
>>    (Instead of socat, I think it would be more efficient to just write
>> a simple application that uses the "new" Linux syscall "splice" that
>> I've just found by mistake yesterday...)
>>     
>
> In that case you need to fix socat to use splice() when available. I have a 
> hard time believing socat adds measurable overhead, especially if you're 
> already tunnelling over ssh.
>   

splice() doesn't really buy you anything when copying from a socket to 
another socket.  The data is going to get copied just like it would if 
you dropped to userspace.  It's useful if you introduce pipe-to-pipe 
copies because they'll be eliminated but if you're going from socket -> 
pipe -> socket it'll be the same as using socat.

Regards,

Anthony Liguori
> Paul
>   

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
