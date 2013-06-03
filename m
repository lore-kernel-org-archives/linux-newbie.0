From: Felipe Dias <felipediassss@gmail.com>
Subject: Re: ETH_P_ALL and tcp ports
Date: Mon, 3 Jun 2013 11:39:21 -0300
Message-ID: <CAJX4=r0SCczFpbuJudPee0RkKYkYCqsUXTzX1sqz1edXR7MuVw@mail.gmail.com>
References: <CAJX4=r2hS2YsqktLHZsEzbMHGLjNDSgYvQPOmO288A5vw7udcQ@mail.gmail.com>
	<CAPWTe+L58Qq7wq1Ui6n6orvBGinu3HrRi3-F24ZMnRmkeczdXw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=EvuT/6FlSCMsLjURn4dgrcgcBPuN5VO6N/ycWjP4Ykg=;
        b=EgbPAO/SgpYDilxH5DcFfpBpsZbdWIgmc5I/NFLR4ikv6Yl/jyJCKiY7pFJRNczpLB
         QLcYynpoxVCSB6UMIo2TI9Oz65Fs3uLmC0GSx1xSi0l38uN23KRwPltIhAhx24icwRu1
         h3/6PnSzaKs5Sead/som6eNON0gDLRAUCgjr/85tZLzwHcg6QrUqM4YQ1QHucoQX4QMI
         DNU3k0ZVeFtItRK8tC/AMf8KEKDsz8KpTXn6ImYiHIejvjRs6/lsFNt57Z23vo5yn8Q7
         IpIG8b8rTgx1lMOaMbpQP4f67n+H8oV5fdK87VSG4qMq+2AQ0lnFmiuzr8h5Ez5G/3B6
         EPjQ==
In-Reply-To: <CAPWTe+L58Qq7wq1Ui6n6orvBGinu3HrRi3-F24ZMnRmkeczdXw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Silviu Popescu <silviupopescu1990@gmail.com>
Cc: linux-newbie@vger.kernel.org

Thank you for your reply, but I cant use netfilter hooks for another reasons.

On Mon, Jun 3, 2013 at 5:36 AM, Silviu Popescu
<silviupopescu1990@gmail.com> wrote:
> On Sun, Jun 2, 2013 at 6:44 PM, Felipe Dias <felipediassss@gmail.com> wrote:
>> Hi, someone might try to tell me what I'm doing wrong, please?
>>
>> I have a simple module and I registered one packet handler, in init function:
>> ---
>>      pseudo_proto.type = htons(ETH_P_ALL);
>>      pseudo_proto.dev = NULL;
>>      pseudo_proto.func = packet_handler;
>>      dev_add_pack(&pseudo_proto);
>> ---
>>
>> My packet_handler, is a simple function just to print in dmesg info
>> about the packet, its check if protocol is TCP or UDP before.
>>
>> The problem is with TCP headers. I'm trying to get tcp ports with:
>>
>> ntohs(tcp_hdr(skb)->dest);
>>
>> But always come strange ports numbers.
>>
>> My question is: Are the TCP headers filled at this stage ?
>> Or I have to register another packet_handler with dev_add_pack() after
>> TCP code have done the heavy work?
>
> 1. I'm not sure if you should be converting form network to host order
> when using the TCP destination port. Try both ways, see what works.
>
> 2. Your concern regarding to filled TCP headers is a good hunch. You
> would be better off using a netfilter hook (actually two) for this
> job. You would need a netfilter hook that intercepts outgoing packets
> originated from you machine (which have the TCP header set) and
> another hook for outgoing packets (which have the TCP header set a
> little bit later).
>
> The way you would do this is by defining two netfilter  hook
> structures similar to:
> static struct nf_hook_ops my_nfho = {
> .owner       = THIS_MODULE,
> .hook        = my_nf_hookfn,
> .hooknum     = NF_INET_LOCAL_IN,
> .pf          = PF_INET,
> .priority    = NF_IP_PRI_FIRST
> };
> The hooknum field tells netfilter where to intercept packets.
> NF_INET_LOCAL_IN means incoming packets, NF_INET_LOCAL_OUT means
> outgoing.
>
> The hook field tells netfilter what function to run on intercepted
> packets. It should have a header similar to:
> static unsigned int my_nf_hookfn(unsigned int hooknum, struct sk_buff
> *skb, const struct net_device *in, const struct net_device *out, int
> (*okfn)(struct sk_buff *))
> The parameters will be populated by netfilter, but I think you are
> only interested in hooknum and skb. hooknum will be NF_INET_LOCAL_IN
> or similar, so you could use the same function for both filters.
>
> You also have to register/unregister the hooks using
> nf_register_hook()/nf_unregister_hook(). Browse the kernel source or
> google to find out exactly how to glue these elements together.
>
> Good luck!
> Silviu Popescu
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
