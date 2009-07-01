From: Robert Hancock <hancockrwd@gmail.com>
Subject: Re: kmalloc returns twice  the same memory address?
Date: Tue, 30 Jun 2009 19:30:33 -0600
Message-ID: <4A4ABC39.90002@gmail.com>
References: <4A4A5482.3050108@ceid.upatras.gr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=k+FbcmcxtkviVTU3L4ORTgsrt0Fhpf/b6wvaLM9PunM=;
        b=B1ZmLPiNvCnVzeF2wxjz63A4CZMa/OybGyj9/srX2BiL+2fYRjhFpU29eiZADJq/G7
         sjqDSNNY5vspzXv+VUhbRpElI+PN+ArVU4ymvtiumIxPpmO+S7grbXbeuk7F2EZdx7Pl
         HzI0xuWs6NyGLcnKUvmdSAgKTKgptzUSUk/R8=
In-Reply-To: <4A4A5482.3050108@ceid.upatras.gr>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Korkakakis Nikos <korkakak@ceid.upatras.gr>
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

On 06/30/2009 12:08 PM, Korkakakis Nikos wrote:
> Hi there all,
>
> first of all I am writing a kernel module to handle some device using;
> uname -a: Linux localhost 2.6.30-gentoo-r1 #1 SMP Sun Jun 28 02:52:23
> EEST 2009 i686 AMD Phenom(tm) II X4 940 Processor AuthenticAMD GNU/Linux.
> During  the init phase of the module I allocate some memory via
> kmalloc() in the following manner;
>
>      omm_dev_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL | GFP_DMA | GFP_ATOMIC);

GFP_KERNEL and GFP_ATOMIC are contradictory flags. Also, drivers should 
generally not be using GFP_DMA, if the DMA mapping API is used this is 
not needed.

I don't know if this is what is causing your problem or not.

>      if (!omm_dev_buffer) {
>          return -ENOMEM;
>      }
>      clear_buffer (omm_dev_buffer, PAGE_SIZE);
>      printk("omm_dev_init: kmalloc'ed omm_dev_buffer OK\n");
>      omm_messages = kmalloc(PAGE_SIZE, GFP_KERNEL | GFP_DMA);
>      printk ("dev_buff @ 0x%x messages @
> 0x%x\n",omm_dev_buffer,omm_messages);
>      if (!omm_messages) {
>          kfree(omm_dev_buffer); /* failing at this point means that the
> other allocation succeeded */
>          return -ENOMEM;
>      }
>      clear_buffer (omm_messages, PAGE_SIZE);
>
>
> where clear_buffer is just a wrapper for memset. My problem is that the
> two consecutive memory allocation operations return the same memory
> space (both pointers point the same address). If I change the malloc'ed
> size ie PAGE_SIZE*2 then the process works as expected. kzalloc behaves
> the same way, while alloc_page with the same flags(i.e.
> alloc_page(GFP_KERNEL | GFP_DMA | GFP_ATOMIC) ) return a different
> memory space and works as expected.
>
> What am I missing here?
>
> Thank's in advance :D
>
> Nikos
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
