From: joy <gracecott@sancharnet.in>
Subject: Re: Modules problem part-2
Date: Tue, 06 Jan 2004 17:23:57 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FFAA1D5.6010203@sancharnet.in>
References: <5.1.0.14.1.20040105104618.01f28358@celine>
 <200401060718.26925.pa3gcu@zeelandnet.nl>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

pa3gcu wrote:

>On Monday 05 January 2004 19:53, Ray Olszewski wrote:
>  
>
>>At 11:55 PM 1/5/2004 +0530, joy wrote:
>>    
>>
>>>hi,
>>>I did what was told of  me, make modules and make install and the modules
>>>were in place.
>>>but the other problem I had with lsmod and insmod giving me error stating:
>>>QM_MODULES function not implemented
>>>refuses to go away
>>>even at bootup ,
>>>when init runs modprobe, the same error appears a LOT of times.(it scrolls
>>>fast but I could just make out!)
>>>      
>>>
>>It sounds like you (or whoever compiled your kernel) did not compile in
>>loadable modules support. (In 2.4.x kernels, which I still use, this is the
>>second item in the "make menuconfig" setup list, so you might look in a
>>similar location in the 2.6.x configuration.)
>>
>>In the 2.4.x kernels, the relevant section of the actual config file is
>>
>>         #
>>         # Loadable module support
>>         #
>>         CONFIG_MODULES=y
>>         CONFIG_MODVERSIONS=y
>>         CONFIG_KMOD=y
>>
>>Here too, you might look for something similar in the 2.6.x config file ...
>>the "QM_MODULES" name might indicate a change in terminology.
>>    
>>
>
>AFAIK Joy has NOT followed my advice, to be more precise, Joy quite possably 
>needs to install a new set of modules utilitys which is mentioned in the 
>Changes file (of which i mentioned in my last mail).
>
>Use google and type in QM_MODULES as the search and one will see that Joy is 
>not the first to have this problem.
>
>  
>
Hi pa3gcu (please tell me how to pronounce it),
I did exactly what you told me to do.
I went thru the debug mesgs and found that module-init-tools is reqd., 
downloaded it,
and installed.
Well,
lsmod and insmod now work perfect, but init's modprobe stills curses the 
hell out of me.
I'll compile another time and see if I can get it working......
See ya soon,
Joy



--------------------------------------------------------------------------------------------------------
A life without purpose is like a bird that never learnt to fly.......
I am the bird that regularly flies Lufthansa


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
