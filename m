From: mike <mike@kevino.org>
Subject: Re: devfs
Date: Wed, 04 Feb 2004 07:09:41 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4020FD25.5060907@kevino.org>
References: <401F1A29.80107@kevino.org> <Pine.LNX.4.58.0402031515530.24791@ppg_penguin> <40208F5E.8020504@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40208F5E.8020504@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

mike wrote:
> Ken Moffat wrote:
> 
>>
>>
>>
>> Based on past experience with mdk8.2, which used devfs and worked
>> extremely badly for me, I'd recommend doing without.  However, that's a
>> lot easier said than done.  You'll need to create static devices, and
>> you won't be able to do this while devfs is blocking access to the real
>> underlying /dev, which means booting from a recovery CD as well as
>> knowing which devices you need, and which groups should own them.
>>
>> I also take the view that most people don't change their underlying
>> hardware and peripherals very often, so for me manually adding a device
>> when I add a usb printer is par for the course.  If you don't want that
>> level of involvement and you don't have any problems with it, keep it.
> 
> 
> I think I'll keep it, sounds like it does alot for me which I'm not 
> knowledgeable enough to do for myself. At least at this point in my 
> learning process :-)
> 
>> Funnily enough, based on an email a little while ago on lkml about udev,
>> I thought Mandrake had already moved away from devfs.  [ udev
>> reimplements some of what devfs does, with 2.6 kernels, but its still at
>> an early stage and certainly not intended as a drop-in replacement. ]
>>
>> Ken
> 
> 
> Thanks for reply Ken.
> 


-- 
Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
