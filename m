From: Peter Teoh <htmldeveloper@gmail.com>
Subject: Re: Accessing CPU performance counters from user space
Date: Fri, 26 Jun 2009 15:36:23 +0800
Message-ID: <804dabb00906260036w7c8ffed1l91ca59547f49bd35@mail.gmail.com>
References: <2d51cbf80906250358x2342c823j1433afcdd548ca87@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=RNulAcrNlxOn4vKUaT35SdNKSgn3QAC7ncM4e6EpxMU=;
        b=NTmfLu7hJW2jhLVBdxvP0Hpqx5MrwrQM+0QbSbuW6C2H4n15Fsh5GkH/W3LDR1DUCm
         q7rZfzYUhpjcnYds2wAYwH6Je4OzAxaHoANsZoRsLYg7grhyp8JiUi/XL/AlBovSN7qo
         7lTYjglaW22OSKxFN66y8sSyEfZ33DNuWY97E=
In-Reply-To: <2d51cbf80906250358x2342c823j1433afcdd548ca87@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: sandeep lahane <sandeep.lahane@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Thu, Jun 25, 2009 at 6:58 PM, sandeep lahane<sandeep.lahane@gmail.co=
m> wrote:
> Hi All,
>
> Is it possible to access cpu performance counters from user space?
> AFAIK, it is not possible.

yes, impossible...because u need ring 0 to access these counter.

=46or some more info:

http://www.scl.ameslab.gov/Projects/Rabbit/menu.html#download

and this one (irrelevant to linux kernel, but it shows how other
kernel are doing it.....all have to be ring0):

http://www.opensolaris.org/os/project/intel-platform/CPC/

> I am aware of various attempts like perfmon and perfctr patch set.
> Looks like a kernel module is
> mandatory to access these registers. My objective is to measure
> various parameters like number
> instructions retired, number of cache misses, number of brach mis
> predictions etc.
>
> I know of an alternative way to count the number of instructions by
> using ptrace but I think this approach
> is very slow.
>
> Regards,
> Sandeep.
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



--=20
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
