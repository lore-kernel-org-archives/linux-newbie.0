From: mike <mike@kevino.org>
Subject: Re: partitons and proper order
Date: Sun, 31 Oct 2004 19:54:26 -0700
Message-ID: <4185A562.1080504@kevino.org>
References: <41853B6B.5020903@kevino.org> <4185772E.6030106@laposte.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4185772E.6030106@laposte.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

simon wrote:
> hello
> 
> mike wrote:
> 
>> Hello,
>> I have installed linux a few times no real problems with my
>> installs. But going to move some drives around and do a fresh
>> install. I usually install with the below
>>
>> /
>> swap
>> /boot
>> /var
>> /usr
>> /home
>> /tmp
>>
>> I use ext3 and I am currently useing Mandrake distribution on an
>> intel compatible machine with ide drives.
>>
>> My question is does the order I create the partitions matter and if
>> so what would be the proper order, if there is one?
> 
> 
> the partitions order has some effects on your disk access time...
> a partition at the middle of the disk will have the best access time...
> it's generaly a good idea to place the swap here...
> a partition at the outside of the disk will increase the speed for long
> read/write operations... /, /usr or /home may be well placed...
> depending what you intend to do with your installation...
> 
> for more informations take a look on the multi-disk howto... even if you
> have only one disk :)
> 
> simon
> -

Hi simon,

That would be good reading for me, I will definitely have a look at
that.

Thanks,

Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
