From: jbradford@dial.pipex.com
Subject: Re: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 16:02:35 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171502.g9HF2Z00003906@darkstar.example.net>
References: <3DAED964.6030901@xts.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DAED964.6030901@xts.ro> from "Dragos LUNGU" at Oct 17, 2002 05:38:12 PM
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dragos LUNGU <rlug-list@xts.ro>
Cc: linux-newbie@vger.kernel.org

> 
> Simon wrote:
>  > Hi,
> 
> Hi,
> [...]
> 
>  > Is there a clever trick I can do, to allow my home net to use the 
> available
>  > bandwidth on both connections? It would be weird, as they would both 
> have a
>  > very different real-world IP... But is it in any way possible? Seems 
> a shame
>  > to have this bandwidth knocking about unused.
> 
> I'm in the same situation (I subscribed to a second provider) and I've
> google'd all afternoon about this issue. I think I found what I need and
> maybe this is what you need as well :
> 
> 4.2. Routing for multiple uplinks/providers
> A common configuration is the following, in which there are two
> providers that connect a local network (or even a single machine) to the
> big Internet.
> 
> http://www.lartc.org/howto/lartc.rpdb.multiple-links.html

Assuming that you want to use this bandwidth primarily for
downloading applications, as opposed to running servers, make sure
that you weight the connections based on the downstream bandwidth.

I mean, if you had a 512/256K ADSL line, and a 2048/256K ADSL line,
instead of weighting them equally, it's best to send more data out
over the 2048/256K line, because you'll get more replies _back_
through it.

John.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
