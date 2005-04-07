From: caszonyi@rdslink.ro
Subject: Re: Card Reader
Date: Fri, 8 Apr 2005 02:09:20 +0300 (EEST)
Message-ID: <Pine.LNX.4.60.0504080206320.885@grinch.ro>
References: <d345eq$cuc$1@sea.gmane.org> <5.1.0.14.1.20050407142351.0202e3e0@celine>
 <d349ga$qln$1@sea.gmane.org> <4255B0C6.5000203@gelm.net> <d34drn$722$1@sea.gmane.org>
Reply-To: Calin Szonyi <caszonyi@rdslink.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <d34drn$722$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: smertz <smertens@mho.com>
Cc: linux-newbie@vger.kernel.org

On Thu, 7 Apr 2005, smertz wrote:

>
>> 
>> 
>> mount /dev/sdc1 /mnt/thumb
>
> Trying this gives me the error
> mount: special device /dev/sdsc1 does not exist
                              ^^^^^^^
should be sdc1
Also you could try with
mount /dev/sdc /mnt/thumb

maybe you don't have sdc1 or sdc in your /dev/ directory.
there should be a script called MAKEDEV in /dev/ directory which can 
create those devices for you



--
?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
