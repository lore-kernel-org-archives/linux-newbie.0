From: joy <gracecott@sancharnet.in>
Subject: Re: X not starting at all
Date: Wed, 14 Jan 2004 17:00:06 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4005283E.7020204@sancharnet.in>
References: <4002CF61.6040507@sancharnet.in>
 <1073932422.18113.5.camel@mattlinux>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Matthew Frederico <matt@ultrize.com>, mailing list <linux-newbie@vger.kernel.org>

Matthew Frederico wrote:

>>From the looks of it you are using a 2.6 kernel...  You have to have
>patched NVIDIA drivers to make this work.  You will probably get better
>support at http://www.nvnews.net, but IIRC, installing these drivers
>will get you working.  (It did for me)
>
>Here is the link to the 2.6 patched NVIDIA drivers:
>http://www.minion.de/
>
>Hope that helps!
>
>-- Matthew Frederico
>  
>
I did that, and all I got was the same error: X was trying to load the 
same nv driver even though the compilation process sucessfully 
installedf the nvidia.ko driver.
How do I work around this?

>On Mon, 2004-01-12 at 09:46, joy wrote:
>  
>
>>Hello,
>>it's me again.
>>Thanks again for the help you guys gave me when I had a problem with my 
>>modules.
>>from when I had installed Woody, I was not able to startx as I have a 
>>Geforce4 MX 440 SE which was not supported by the nv driver in X (I have 
>>version 4.1.0.1)
>>    
>>

>>I got a new driver from the Nvidia site (the latest is pkg2 I think, I 
>>have pkg0 ).I installed it and yet startx would not work.
>>since X loads its drivers from /usr/X11R6/lib/modules/drivers , I moved 
>>the new NV module (nvidia.ko ) and renamed it nv_drv.o which was the nv 
>>driver  (this is illogical, I know , but I was desperate.....)
>>and it gave me another error message module does not have nvModuledata 
>>data object and died on me. I just got Gnome 2.4 and I'm desperate to 
>>install it.
>>So anybody with the ideas flashing,
>>HELP!
>>thanx in advance,
>>Joy
>>
>>    
>>
>>>--------------------------------------------------------------------------------------------------------
>>>A life without purpose is like a bird that never learnt to fly.......
>>>I am the bird that regularly flies Lufthansa
>>>      
>>>
>>-
>>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>Please read the FAQ at http://www.linux-learn.org/faqs
>>
>>
>>    
>>
>
>
>  
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
