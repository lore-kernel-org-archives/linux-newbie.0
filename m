From: chuck gelm <chuck@gelm.net>
Subject: Re: insmod: unresolved symbol
Date: Wed, 15 Sep 2004 22:16:56 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4148F798.3080009@gelm.net>
References: <20040916001442.45760.qmail@web53605.mail.yahoo.com>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040916001442.45760.qmail@web53605.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Donald Duckie <schipperke2000@yahoo.com>
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

Donald Duckie wrote:
> hi!
> 
> has anyone ever tried compiling and running snull on
> Linux2.4.18-sh?
> 
> i tried compiling snull(without any modification) on
> Linux2.4.18-sh.
> upon running snull_load, i got the following:
> Using /lib/modules/2.4.18-sh/kernel/drivers/net/snull.
> insmod: unresolved symbol kmalloc_R93d4cfe6
> insmod: unresolved symbol skb_under_panic_R69955398
> insmod: unresolved symbol register_netdev_R09e03f58
> insmod: unresolved symbol eth_type_trans_R0a4e7a1c
> insmod: unresolved symbol unregister_netdev_R98eda3f8
> insmod: unresolved symbol printk_Rdd132261
> insmod: unresolved symbol __udivsi3_i4
> insmod: unresolved symbol memcpy_R11f7ce5e
> insmod: unresolved symbol jiffies_R0da02d67
> insmod: unresolved symbol alloc_skb_R0177038c
> insmod: unresolved symbol softnet_data_R258cb892
> insmod: unresolved symbol cpu_raise_softirq_R4d09166c
> insmod: unresolved symbol __kfree_skb_R1741771d
> insmod: unresolved symbol memset_R2bc95bd4
> insmod: unresolved symbol kfree_R037a0cba
> insmod: unresolved symbol netif_rx_R8316ccd0
> insmod: unresolved symbol ether_setup_R586ea93a
> insmod: unresolved symbol skb_over_panic_R4bb59969
> 
> can someone please tell me what's wrong with this,
> and how to fix this without chaning Linux versions?
> 
> 
> thank you for you help in advance  :-) 

Did you run 'depmod -a' ?

HTH, Chuck




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
