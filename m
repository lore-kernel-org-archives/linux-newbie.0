From: mike <mike@kevino.org>
Subject: Re: devfs
Date: Wed, 04 Feb 2004 07:09:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4020FD0A.8020009@kevino.org>
References: <020320040659.23735.27fe@comcast.net> <40208ADF.7010307@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40208ADF.7010307@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

mike wrote:
> beolach@comcast.net wrote:
> 
>> Sorry for the length of this reply, I was bored and felt like writing 
>> a novel.
> 
> 
> Thats quite alright, I need to have things spelled out to me.
> And your explanation helped me understand quite abit more of whats going 
> on.
> 
>> Well, no you don't *need* to have devfs, and it would be really easy 
>> to remove,
>> but I wouldn't recommend it, for a couple reasons.  First of all, 
>> devfs really
>> is the best way to do what's being done (see below), and secondly (and 
>> more
>> importantly) I don't subscribe to the engineering maxim, "If it's not 
>> broken,
>> fix it."
> 
> 
> I agree with you on that, theres much more to it than I thought, and 
>  from your explanation way out of my league. Sounds like it could get 
> complicated. My system runs well for me I would hate to 'jinks'
> that :-)
> 
> 
>>  And because enough people do dislike the new naming scheme, it
>> can be changed in /etc/devfsd.conf (if you can figure out how - my 
>> very brief
>> glance at it looked complicated).  While the new names are longer, 
>> they also
>> give more information with less ambiguity than the old names.  And 
>> IIRC devfs
>> by default does make symlinks to to all the old names.
> 
> 
> I was used to the /dev/hda naming scheme and understood it, is why the 
> new naming kinda through me when I used the "df" command.
> But your explanation of how it works makes sense to me, and I believe I 
> can used to it.
> 
>>
>> Well, that's my novel for today.  Hope you enjoy,
>> Conway S. Smith
> 
> 
> I appreciate your responce thanks, Conway
> 


-- 
Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
