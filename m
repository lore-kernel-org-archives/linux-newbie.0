From: smertz <smertens@mho.com>
Subject: Re: Card Reader
Date: Thu, 07 Apr 2005 17:34:45 -0600
Message-ID: <d34fua$c59$1@sea.gmane.org>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine> <d349ga$qln$1@sea.gmane.org> <4255B0C6.5000203@gelm.net> <d34drn$722$1@sea.gmane.org> <Pine.LNX.4.60.0504080206320.885@grinch.ro>
Reply-To: smertens@mho.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504080206320.885@grinch.ro>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

caszonyi@rdslink.ro wrote:
> On Thu, 7 Apr 2005, smertz wrote:
> 
>>
>>>
>>>
>>> mount /dev/sdc1 /mnt/thumb
>>
>>
>> Trying this gives me the error
>> mount: special device /dev/sdsc1 does not exist
> 
>                              ^^^^^^^

Same error message below
[root@RHServer01 ~]# mount /dev/sdc /mnt/thumb
mount: special device /dev/sdc does not exist
[root@RHServer01 ~]# mount /dev/sdc1 /mnt/thumb
mount: special device /dev/sdc1 does not exist
[root@RHServer01 ~]#

> should be sdc1
> Also you could try with
> mount /dev/sdc /mnt/thumb
> 
> maybe you don't have sdc1 or sdc in your /dev/ directory.
> there should be a script called MAKEDEV in /dev/ directory which can 
> create those devices for you

There seems to be no man pages on MAKEDEV is the syntax just MAKEDEV sdc

I did that and it made a lot of files that started with sdc,sdc1 to 
sdc100 etc. They disappered when I rebooted however.  Is this normal
> 
> 
> 
> -- 
> ?
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
