From: Slade Watkins <srw@sladewatkins.net>
Subject: Re: MTU does not change
Date: Wed, 5 Oct 2022 09:53:44 -0400
Message-ID: <2e6b2a03-6287-0a23-c187-51fe8e9b7941@sladewatkins.net>
References: <CACzz7ux8mGT-d5YPWdkvTw5vg4-LKXUUsunL8sJySOeuYd0G1w@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=sladewatkins.net; s=default; h=Content-Transfer-Encoding:Content-Type:
        In-Reply-To:From:Cc:References:To:Subject:MIME-Version:Date:Message-ID:Sender
        :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=+yaz2PTOel5SQwAAFZu+4eCM67Glm7cbv/XXj5lQq/Y=; b=ETWp7ebF38ki2Ickf3q2CQ6WPA
        5H8tJ58EsKagfhjzgz7RyidzFf4VzODb2L5vSR6C+FmoiG3QeJNxuXDF6WlhtCENV0q1QxGdsdK0r
        4dOf+USrp/T241mTX1HzHdYBIP3iRrKEzt2HjFMmi90CLQBqxcQzfJpEl3inzx6TtkdqcWpvef4cq
        aHbhweVYO/kGq99DilxRTj/SJIu4S2CD8tblX2y4GyLmbBb3CWAIEBG33jjiGP8ob4GFb3xb89v/r
        8hqYAbLjpfIwddMevOhjM5fNo01hYzHym5ev26RQRsjxKphnIifyUR6mR+gRLez3mr3xXgn6Dxadz
        L3 
Content-Language: en-US
In-Reply-To: <CACzz7ux8mGT-d5YPWdkvTw5vg4-LKXUUsunL8sJySOeuYd0G1w@mail.gmail.com>
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: =?UTF-8?B?0JLRj9GH0LXRgdC70LDQsiDQodCw0LvRjNC90LjQutC+0LI=?= <snordicstr16@gmail.com>
Cc: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org, netdev@vger.kernel.org

Hey there,

On 10/5/22 at 9:47 AM, Вячеслав Сальников wrote:
> Hi.
> 
> I apologize if I wrote in the wrong mail list. I have not found
> linux-netdev for questions

I've Cc'd the netdev and stable lists.

> 
> I switched from kernel versions 4.9 to 5.15 and found that the MTU on
> the interfaces in the bridge does not change.
> For example:
> I have the following bridge:
> bridge      interface
> br0          sw1
>                 sw2
>                 sw3
> 
> And I change with ifconfig MTU.
> I see that br0 sw1..sw3 has changed MTU from 1500 -> 1982.
> 
> But if i send a ping through these interfaces, I get 1500(I added
> prints for output)
> I investigated the code and found the reason:
> The following commit came in the new kernel:
> https://github.com/torvalds/linux/commit/ac6627a28dbfb5d96736544a00c3938fa7ea6dfb
> 
> And the behavior of the MTU setting has changed:
>>
>> Kernel 4.9:
>> if (net->ipv4.sysctl_ip_fwd_use_pmtu ||
>>     ip_mtu_locked(dst) ||
>>     !forwarding)  <--- True
>> return dst_mtu(dst) <--- 1982
>>
>>
>> / 'forwarding = true' case should always honour route mtu /
>> mtu = dst_metric_raw(dst, RTAX_MTU);
>> if (mtu)
>> return mtu;
> 
> 
> 
> Kernel 5.15:
>>
>> if (READ_ONCE(net->ipv4.sysctl_ip_fwd_use_pmtu) ||
>>     ip_mtu_locked(dst) ||
>>     !forwarding) { <--- True
>> mtu = rt->rt_pmtu;  <--- 0
>> if (mtu && time_before(jiffies, rt->dst.expires)) <-- False
>> goto out;
>> }
>>
>> / 'forwarding = true' case should always honour route mtu /
>> mtu = dst_metric_raw(dst, RTAX_MTU); <---- 1500
>> if (mtu) <--- True
>> goto out;
> 
> 
> Why is rt_pmtu now used instead of dst_mtu?
> Why is forwarding = False called with dst_metric_raw?
> Maybe we should add processing when mtu = rt->rt_pmtu == 0?
> Could this be an error?
> 

Cheers,
-srw

