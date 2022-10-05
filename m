From: =?UTF-8?B?0JLRj9GH0LXRgdC70LDQsiDQodCw0LvRjNC90LjQutC+0LI=?= 
        <snordicstr16@gmail.com>
Subject: MTU does not change
Date: Wed, 5 Oct 2022 19:47:39 +0600
Message-ID: <CACzz7ux8mGT-d5YPWdkvTw5vg4-LKXUUsunL8sJySOeuYd0G1w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=t8n7n36Kq5Brs/8Mow/eHX7rdlAPc/jLPoyLOzMuk0Q=;
        b=Yphn6C+OuEPc7v1h/Mf9UdeJdhbnOsGh0l5ZUqHmS9NyqUwasPvAPpCoJNzAVNtN6/
         9KGPPgHRos/usDauZZCQo+oLYD3HNRdeUXpaW5Bod6PFTDTk7esaPDqYMvziLOMrZGXI
         gx3G66nypxHhMUuLqe8erT/ZEqoUXITuT9eomiGjVuH7s6B8uR45AU3eeTrinYFxyLSj
         egh9EBqiBSCODbWzIT9Iip48ALqt9gTxY+bCuOUT0RpiS0Jj/+xxLjzkDWzYEwNu0Pa2
         MYMa1eJLi5yiGs0LPxTXFFF7ZIQUXYH55cjBIRHmxHhEgWkTbug3xqVBVlB8jZevjKOj
         XXGw==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

Hi.

I apologize if I wrote in the wrong mail list. I have not found
linux-netdev for questions

I switched from kernel versions 4.9 to 5.15 and found that the MTU on
the interfaces in the bridge does not change.
For example:
I have the following bridge:
bridge      interface
br0          sw1
               sw2
               sw3

And I change with ifconfig MTU.
I see that br0 sw1..sw3 has changed MTU from 1500 -> 1982.

But if i send a ping through these interfaces, I get 1500(I added
prints for output)
I investigated the code and found the reason:
The following commit came in the new kernel:
https://github.com/torvalds/linux/commit/ac6627a28dbfb5d96736544a00c3938fa7ea6dfb

And the behavior of the MTU setting has changed:
>
> Kernel 4.9:
> if (net->ipv4.sysctl_ip_fwd_use_pmtu ||
>    ip_mtu_locked(dst) ||
>    !forwarding)  <--- True
> return dst_mtu(dst) <--- 1982
>
>
> / 'forwarding = true' case should always honour route mtu /
> mtu = dst_metric_raw(dst, RTAX_MTU);
> if (mtu)
> return mtu;



Kernel 5.15:
>
> if (READ_ONCE(net->ipv4.sysctl_ip_fwd_use_pmtu) ||
>    ip_mtu_locked(dst) ||
>    !forwarding) { <--- True
> mtu = rt->rt_pmtu;  <--- 0
> if (mtu && time_before(jiffies, rt->dst.expires)) <-- False
> goto out;
> }
>
> / 'forwarding = true' case should always honour route mtu /
> mtu = dst_metric_raw(dst, RTAX_MTU); <---- 1500
> if (mtu) <--- True
> goto out;


Why is rt_pmtu now used instead of dst_mtu?
Why is forwarding = False called with dst_metric_raw?
Maybe we should add processing when mtu = rt->rt_pmtu == 0?
Could this be an error?

Best regards,
Slava.
