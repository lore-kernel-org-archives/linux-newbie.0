From: Helge Hafting <helge.hafting@aitel.hist.no>
Subject: Re: Generic Disk Driver in Linux
Date: Mon, 28 Aug 2006 12:46:59 +0200
Message-ID: <44F2C9A3.3090608@aitel.hist.no>
References: <20060825170513.60108.qmail@web83113.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060825170513.60108.qmail@web83113.mail.mud.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Aleksey Gorelov <dared1st@yahoo.com>
Cc: jengelh@linux01.gwdg.de, daniel.rodrick@gmail.com, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, satinder.jeet@gmail.com

Aleksey Gorelov wrote:
> --- Helge Hafting <helge.hafting@aitel.hist.no> wrote:
>
>   
>> Aleksey Gorelov wrote:
>>     
>>>> From: linux-kernel-owner@vger.kernel.org 
>>>> [mailto:linux-kernel-owner@vger.kernel.org] On Behalf Of Jan Engelhardt
>>>>     
>>>>         
>>>>> I was curious that can we develop a generic disk driver that could
>>>>> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
>>>>>       
>>>>>           
>>>> ide_generic
>>>> sd_mod
>>>>
>>>> All there, what more do you want?
>>>>     
>>>>         
>>> Unfortunately, not _all_. DMRAID does not support all fake raids yet. Moreover, there is
>>>       
>> usually
>>     
>>> some gap for bleeding edge hw support.
>>>   
>>>       
>> Nobody will want to use bleeding edge hardware with an int13 driver,
>> because the performance will necessarily be much worse than using more
>> moderate hardware with the generic IDE driver.
>>     
> If some one wants Linux server - I totally agree. I would probably even avoid relying purely on
> generic IDE and instead use chipset specific variant or libata.
> But if someone wants to access already installed & working other OS stuff - that's a different
> story. Bad performance is still better than no support at all.
>   
Yes, there is forensics, and there is the copying of data when
migrating a server to linux from some other OS. 

Perhaps I worry too much - I imagine salesmen claiming linux
support for their raid cards, because the int13 driver works. 
Just like they claim "linux support" with abominations like ndiswrapper.
The bad effects may be carefully hidden with "disk" tests that are
smaller than main memory in some huge-memory machine.

Then linux gets a bad reputation among ignorant purchasers,
performance went so much up with some other os .  . .

Helge Hafting

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
