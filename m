From: Simon <simon@highlyillogical.org>
Subject: Re: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 19:37:11 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171937.11074.simon@highlyillogical.org>
References: <200210171454.42606.simon@highlyillogical.org> <3DAED964.6030901@xts.ro>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DAED964.6030901@xts.ro>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thursday 17 October 2002 16:38, Dragos LUNGU wrote:
> http://www.lartc.org/howto/lartc.rpdb.multiple-links.html

Okay, I'm trying to implement this atm... But I'm slightly confused about one 
thing...

The document says:
>>>
Let us first set some symbolical names. Let $IF1 be the name of the first 
interface (if1 in the picture above) and $IF2 the name of the second 
interface. Then let $IP1 be the IP address associated with $IF1 and $IP2 the 
IP address associated with $IF2. Next, let $P1 be the IP address of the 
gateway at Provider 1, and $P2 the IP address of the gateway at provider 2. 
Finally, let $P1_NET be the IP network $P1 is in, and $P2_NET the IP network 
$P2 is in. 
<<<

How exactly do I determine $P1_NET and $P2_NET... I'm slightly confused about 
what they are supposed to be.

Thanks,
Simon



--
This message has been scanned for viruses and dangerous content, and
is believed to be clean.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
