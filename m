From: Nasir Hossain <nhossain@gawab.com>
Subject: Re: pam.d query
Date: Mon, 28 Jun 2004 11:12:13 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40DFAFB5.4000902@gawab.com>
References: <40DD0D1E.2040100@gawab.com> <40DF818A.6070805@kevino.org> <40DF81FB.9090508@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40DF81FB.9090508@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

mike wrote:

>mike wrote:
>  
>
>>Nasir Hossain wrote:
>>
>>    
>>
>>>hi all,
>>>
>>>I have a couple of query's which (till now) I have failed to
>>>      
>>>
>>answer/solve.
>>
>>    
>>
>>>1) How do I log in directly as root ? Is there some place where I can
>>>give the password for root so I dont have to login every time I
>>>      
>>>
>>start my
>>
>>    
>>
>>>system. I know knoppix does it... but I dunno how. Please tell me
>>>      
>>>
>>how to
>>
>>    
>>
>>>do this using /etc/pam.d
>>>      
>>>
>>I dont know of a reasonably secure way of doing that, perhaps
>>someone else may be able to help.
>>
>>
>>    
>>
>>>2) I am also working on a live cd and I want the kernel messeges
>>>      
>>>
>>removed
>>
>>    
>>
>>>at startup (the ones which dmesg eventually gets). Is it possible ?
>>>      
>>>
>>I use Mandrake and it comes with a bootsplash package that in your
>>boot loader you can pass a bootspash=silent in which it just shows
>>the image on booting.Take a look at this site. www.bootsplash.org
>>Note: to use bootsplash you need to use framebuffer.
>>
>>Mike
>>
>>
>>    
>>
>>>thanks
>>>
>>>nasir
>>>
>>>      
>>>
>>    
>>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>
>  
>
I took care of the password thing. Since security is really not an issue 
here, editing the /etc/passwd (if shadow passwords are not enabled) and 
/etc/shadow (if they are), and deleteing the encrypted portion removes 
the password for root. Logging in automatically is quite simple after 
that , changing in /etc/inittab :-

1:2345:respawn:/usr/bin/openvt -f -c 1 -w -- /bin/login -f root

that logs. in root in tty1.

As for the silent boot, thanks for the link mike. I'll check it out.

thanks





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
