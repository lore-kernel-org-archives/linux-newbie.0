From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Squid only on eth1
Date: Wed, 28 Jan 2004 09:24:59 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000701c3e524$66616c70$3401a8c0@iih.usyd.edu.au>
References: <4011C8740000129C@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: rgomez@bancomer.com, linux-newbie@vger.kernel.org

rgomez@bancomer.com wrote:
> It works, but one more, now it takes much time (close a minute) to
> get response from proxy, here are all info I think you would need...

There are far too many variables to determine why this could be happening
and you have not provided enough information.  I'd probably need to look at
your squid.conf.  What OS is it?  What is the spec of the machine you're
running on? What version of squid?  What sort of connection to the Internet
do you have and it's speed?

> # echo $http_proxy
> http://localhost:8080/
>
> # wget www.tldp.com
> --13:44:09--  http://www.tldp.com/
>            => `index.html'
> Resolving localhost... done.
> Connecting to localhost[127.0.0.1]:8080... failed: Connection refused.

Confused as to why this is here - this is going to be rejected because squid
is only running on eth1?

> # wget www.ibm.com
> --13:48:57--  http://www.ibm.com/
>            => `index.html.4'
> Connecting to eth1:8080... connected.
> Proxy request sent, awaiting response... 302 Moved Temporarily
> Location: http://www.ibm.com/us/ [following]
> --13:49:44--  http://www.ibm.com/us/
>            => `index.html.4'
> Connecting to eth1:8080... connected.
> Proxy request sent, awaiting response... 200 OK
> Length: 27,087 [text/html]

I can see the time being taken but this could also be the remote site or
your link?

Can I suggest you try the Squid FAQ and/or the Usenet group and mailing
list.  All of these can be found on the squid website -
http://www.squid-cache.org/

Regards

James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
