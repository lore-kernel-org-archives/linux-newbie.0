From: Donald Duckie <schipperke2000@yahoo.com>
Subject: Re: insmod: unresolved symbol
Date: Wed, 15 Sep 2004 22:36:54 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040916053654.46231.qmail@web53607.mail.yahoo.com>
References: <4148E859.70303@laposte.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4148E859.70303@laposte.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hi simon & chuck!

thank you very much for the information that you have
sent.

i have some confirmation though, because the
information confuses me: removing the
CONFIG_MODVERSIONS might not change anything. well,  i
tried it, but the result was indeed still the same.

anyway, here was what was done:
i compiled the snull source file on 2.4.18-sh which i
got from
http://www.oreilly.com.tw/editor_column/a138_read.html.
it was mentioned in that site that snull was compiled
with 2.4.24.

anyway, compilation with 2.4.18-sh was successful,
but upon running insmod on 2.4.18-sh, i got those
unresolved errors. 

any help/information are very  much welcome.


and with depmod (since i am cross-compiling):
i also tried running "depmod
-a" prior to compilation, but depmod wrote into
/lib/modules/2.4.24, instead of
/lib/modules/2.4.18-sh. both directories exists.
do i really need to run depmod? how will i made it
update the /lib/modules/2.4.18-sh directory instead of
the /lib/modules/2.4.24 directory?



again, thanks for the help guys . .. 


--- simon <simon.guinot@laposte.net> wrote:

> 
> 
> Donald Duckie wrote:
> > hi!
> hello donie
> > 
> > has anyone ever tried compiling and running snull
> on
> > Linux2.4.18-sh?
> > 
> > i tried compiling snull(without any modification)
> on
> > Linux2.4.18-sh.
> > upon running snull_load, i got the following:
> > Using
> /lib/modules/2.4.18-sh/kernel/drivers/net/snull.
> > insmod: unresolved symbol kmalloc_R93d4cfe6
> > insmod: unresolved symbol
> skb_under_panic_R69955398
> > insmod: unresolved symbol
> register_netdev_R09e03f58
> > insmod: unresolved symbol eth_type_trans_R0a4e7a1c
> > insmod: unresolved symbol
> unregister_netdev_R98eda3f8
> > insmod: unresolved symbol printk_Rdd132261
> > insmod: unresolved symbol __udivsi3_i4
> > insmod: unresolved symbol memcpy_R11f7ce5e
> > insmod: unresolved symbol jiffies_R0da02d67
> > insmod: unresolved symbol alloc_skb_R0177038c
> > insmod: unresolved symbol softnet_data_R258cb892
> > insmod: unresolved symbol
> cpu_raise_softirq_R4d09166c
> > insmod: unresolved symbol __kfree_skb_R1741771d
> > insmod: unresolved symbol memset_R2bc95bd4
> > insmod: unresolved symbol kfree_R037a0cba
> > insmod: unresolved symbol netif_rx_R8316ccd0
> > insmod: unresolved symbol ether_setup_R586ea93a
> > insmod: unresolved symbol skb_over_panic_R4bb59969
> > 
> > can someone please tell me what's wrong with this,
> > and how to fix this without chaning Linux
> versions?
> remove CONFIG_MODVERSIONS of your kernel is in my
> opinion a good idea...
> 
> are you using the original Makefile ?
> 
> your compilation line must look like that...
> gcc -D MODVERSIONS -include
> /usr/src/linux/include/linux/modversion.h...
> 
> if it is already the case... i suggest you to verify
> that "modversion.h"
> is compliant with your running kernel...
> 
> you can take a look on the chapter 11 of "Device
> Driver 2nd edition"
> it is just talking about that...
> 
> simon
> 


__________________________________________________
Do You Yahoo!?
Tired of spam?  Yahoo! Mail has the best spam protection around 
http://mail.yahoo.com 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
