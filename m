From: Simon <simon@highlyillogical.org>
Subject: Re: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 16:08:40 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171608.40922.simon@highlyillogical.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 17 October 2002 16:38, Dragos LUNGU wrote:
> 4.2. Routing for multiple uplinks/providers
> A common configuration is the following, in which there are two
> providers that connect a local network (or even a single machine) to the
> big Internet.
>
> http://www.lartc.org/howto/lartc.rpdb.multiple-links.html

Thanks! That's pretty much what I was looking for.

On Thursday 17 October 2002 15:57, jbradford@dial.pipex.com wrote:
> The alternative, is to have two completely separate connections, and
> send out packets over them both fairly randomly.  These will get
> answered, and sent back via whichever connection they came from.
> Therefore sending data out randomly over two interfaces is a crude
> form of load balancing.

I was thinking it would have to be done like this... I was thinking perhaps it 
would be possible to route to odd-numbered addresses on one interface, and 
even-numbered on the other. But the weighting idea looks better, now that I 
know it's possible. :)

On Thursday 17 October 2002 16:02, jbradford@dial.pipex.com wrote:
> Assuming that you want to use this bandwidth primarily for
> downloading applications, as opposed to running servers, make sure
> that you weight the connections based on the downstream bandwidth.

Well, I was thinking for both downloading, and running servers actually. But I 
was thinking that I could play with something at the DNS level so that the 
interface that was gotten hold of for clients making connections was fairly 
random. Again, that wouldn't be perfect, and not proper load balancing, but 
better than nothing.

Might be overkill for the short amount of time I'm going to have both 
connections for though. :)

Simon


--
This message has been scanned for viruses and dangerous content, and
is believed to be clean.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
