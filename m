From: joy <gracecott@sancharnet.in>
Subject: Re: Moving Hard Drive
Date: Mon, 19 Jan 2004 16:46:37 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <400BBC95.1020808@sancharnet.in>
References: <20040119071411.35BEF1C902@heisspf>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:

>>Peter wrote:
>>    
>>
>>>Is it correct then that before doing the switch I will have to change in 
>>>/etc/fstab and lilo.conf all what is labeled hdc to hda?
>>>Boot initially
>>>from a floppy into SLackWare run lilo and I should be set with the new drive
>>>as master.
>>>      
>>>
>
>gracecott@sancharnet.in said:
>
>  
>
>>Since you are on lilo, it would be easier to type on the lilo prompt
>>    
>>
>
>Since hdc was moved to hda there is initially no more MBR before I run lilo. 
>
>Therefore what Peter wrote above correctly replaced the old 5 Gb 
>HD with the new 20 Gb HD as Master.
>
>
>  
>
Yes, I got the catch. thanks for enlightening me about the matter.
But I have a doubt....
As pa3gcu said couldn't you use the bios' boot option to boot thru the 
other drive and since it's lilo.conf is pointing to hdc, could'nt you
then pass the root= parameter?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
