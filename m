From: "Tobin C. Harding" <me@tobin.cc>
Subject: Re: Unable to understand a piece of code
Date: Mon, 20 May 2019 11:23:51 +1000
Message-ID: <20190520012351.GA13083@eros.localdomain>
References: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounces+glkk-kernelnewbies=gmane.org@kernelnewbies.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=date
 :from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=Y7wH8XxzV8rUAIQggCheCZkjx/+
 B12dVoWgXIA5rjWU=; b=Nmwp+bNxXbFmPecFk7BjYfbFr214Hg6SXLJ+J5lODVl
 roPerifal1pH+V8GXYUmfY4QV/XlNPtjJvcDu7SSwxJyU9IACzxBBFxthU+vIcCy
 q45p8Csadgg/VwoSe1o/wNfMP2VvzFePgKGdOdEQrogSjT5LCYOgQOnAGYQn8180
 ZOCavjUMbVy0jaSZZo7H2zXD1YDksqpNFrujDu1qGVJrBdG+9gVVTB8PWhGJ50cB
 Jqv/RKxad9g55mFolwCFpJr4PIpmwhRCdqWqhGARu9eepFf94IwHHFTAbLM4iPfu
 SlZLzlNVCIXYgRqmMqLH1VL0/IUXC0iBtSHx0Dl+MRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Y7wH8X
 xzV8rUAIQggCheCZkjx/+B12dVoWgXIA5rjWU=; b=soJI+dU+YobLC25yumeg/o
 cp58WJyXVvec6lYlBG53ivkM2SUhNmSAKF+fDrvnHwAhvFaiyvvAzUV3V93wZshA
 24/0QfSoqx0mid5vclmq/7s7EYLXA+hTNtgLkXvE10QH1m8lEYGWP8vDViSC/nKF
 WKWnTL+1fitMEOq7xN6RgeAH6pjg9axUKMph4BQD6f11SU38+LtbiSYMWKj4uKtZ
 CPajJcyETrVjSpB7ejpJZULKa/2rbJiILSEvOVGeRMu9GNAkIAkiAA0JxbtgUKzE
 gULqhEg3s67s9Yq3kIW0f3xi3Jg575dBzBJr3rqW6VIfhhrPZ4SPWkIkIGRL6FVg
 ==
Content-Disposition: inline
In-Reply-To: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <https://lists.kernelnewbies.org/mailman/options/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies/>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Errors-To: kernelnewbies-bounces+glkk-kernelnewbies=gmane.org@kernelnewbies.org
To: Amit Kumar <free.amit.kumar@gmail.com>
Cc: linux-newbie@vger.kernel.org, Kernel Newbies <kernelnewbies@kernelnewbies.org>

On Mon, May 20, 2019 at 05:37:41AM +0530, Amit Kumar wrote:
> HI,
> 
> mm/slub.c: line 3973
> int __kmem_cache_shrink(struct kmem_cache *s)
> {
> int node;
> int i;
> struct kmem_cache_node *n;
> struct page *page;
> struct page *t;
> struct list_head discard;
> struct list_head promote[SHRINK_PROMOTE_MAX];
> unsigned long flags;
> int ret = 0;
> 
> flush_all(s);
> for_each_kmem_cache_node(s, node, n) {
> 
> How uninitialized variable node is being used in macro for_each_kmem_cache_node?
>
> node is a local variable with no extern and not initialized.
> 
> mm/slab.h: line 490
> #define for_each_kmem_cache_node(__s, __node, __n) \
> for (__node = 0; __node < nr_node_ids; __node++) \

This _is_ the initialization of node.  Macros are kinda funky, there
isn't much more to say about that other than perhaps read up some more
about how macros work in C and read a bunch more macros in the kernel
e.g. include/linux/list.h

Good luck,
Tobin.
