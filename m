From: sn00born <sn00bb0rn@telkom.net>
Subject: Re: help, root overpowered ?
Date: Tue, 17 May 2005 03:08:03 +0700
Message-ID: <4288FDA3.4010905@telkom.net>
References: <4288F4D8.8050609@telkom.net> <428BF0DE.5080206@mnl.ntsp.nec.co.jp>
Reply-To: sn00bb0rn@telkom.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <428BF0DE.5080206@mnl.ntsp.nec.co.jp>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: fchua@ntsp.nec.co.jp, linux-newbie@vger.kernel.org

Franklin Chua wrote:
> Hello,
> 
>    I think there is nothing wrong with it. If you really need to keep 
> the "superuser"
> from reading your sensitive data, you might have to find other ways of 
> protecting
> your files, like data encryption.
> 
> Regards,
> 
> sn00born wrote:
> 
>> Dear all,
>>
>> I am a newbie. I play with linux CLI now (using chmod and chown).
>> It seems to me that if I am using su -as root- I can use all 
>> directories and files that I -by my own setting- not allowed. For 
>> instance I have set chown 700 to some files and folder as a normal 
>> user. I think it will prevent anyone else using it (even root). But 
>> when as root I can still read the content of thet file.
>> My question is, is that a normal in *nix world ? I imagine how 
>> powerfull an computer administrator of a company will be. He can read 
>> *all sensitive data* that beyond his level. Please tell me, and point 
>> me where my understanding of this matter that was wrong. Sorry for the 
>> unproper English.
>>
>> Thank you very much in advance.
>>

Ok thanks to reply,

Now I come to this point. I want to know the daily practice in the 
coorporation about this matter, I mean up until these days. Is the 
encryption is what they they use to solve this problem (i.e to keep the 
CEO data save)? I imagine the *common non technical user* of the company 
boxes, are there any automatic mechanism to keep every common user from 
headache setting the encryption.

Thank you so much


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
