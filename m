From: Ray Olszewski <ray@comarre.com>
Subject: Re: Convert .avi to .vob/Linux only??
Date: Thu, 16 Mar 2006 15:09:17 -0800
Message-ID: <4419F01D.3070306@comarre.com>
References: <20060224152430.GA1275@lnx2.kvinet.com> <44061B5A.3000309@gelm.net> <20060316195810.GA1027@lnx2.kvinet.com> <4419CF26.10104@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4419CF26.10104@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck wrote:
> Hal MacArgle wrote:
> 
>> On 03-01, chuck gelm wrote:
>>  
>>
>>> Hal et allia:
>>>
>>> I converted three (3) .avi files and burned them to DVD and can
>>> play them on my DVD player.  Text menu also! :-)
>>> I installed videotrans and stumbled through enough required
>>> additional project installations to get it to work.  Thus:
>>>
>>> #!/bin/sh
>>> # create a DVD-player for .avi movies
>>>
>>> movie-to-dvd -m ntsc -d letterbox -a 4:3 CloseToHomeS01E08.avi 
>>> CloseToHomeS01E09.avi CloseToHomeS01E10.avi
>>>
>>> movie-make-title-simple -o title -m ntsc -n none
>>>
>>> movie-title -T 2x2 -c none -o title.vob -t title 
>>> CloseToHomeS01E08.m2v CloseToHomeS01E09.m2v CloseToHomeS01E10.m2v
>>>
>>> dvdauthor -o dvd_directory -x title.vob-dvdauthor.xml
>>>
>>> growisofs -dvd-video -Z /dev/dvd dvd_directory
>>>
>>> #end
>>>
>>> There is some word wrapping in my display while entering this note.
>>> The commands are double spaced, so if you see consecutive lines,
>>> there was 'word wrap' and not a newline.  ;-)
>>>
>>> HTH, Chuck
>>>   
>>
>>
>>     Greetings: Helped immensely in that I am now, routinely,
>> burning DVD's from tapes; which spawns more questions.. Of course.
>>
>>     Typically using xawtv, and a BT878 card, to grab a 50 minute
>> total analogue tape to an avi file and then following the above to
>> burn the final DVD on either DVD+R or DVD+RW blanks I notice one
>> thing:
>>
>> The burn "shading" on the blank is only 1/3 the width of the surface
>> and; mounting the DVD reports less than 1gB in length.. It's obvious
>> that something is crunching the data more than, what, "normal." I
>> note the blanks list four different Modes from "HQ" as 60 minutes on
>> a 4.7gB disc thru "EP" 240 minutes each disc, but I see no reference
>> to select these modes, that I can find... I would like to burn the
>> best quality; closer to the original if possible..
>>
>>     With everything else the same, TV set; monitor etc, the view
>> quality of the original VHS tape is better than the view of the DVD
>> copy, so something is happening, somewhere /or/ I'm doing something
>> wrong... (The blanks I'm using are not white box but so called prime)
>>
>>     I'm learning but, obviously, have a long way to go. <grin>
>> TIA.
>>  
>>
> Hi, Hal:
> 
> I don't know about the quality of VHS->.avi, but to create a higher 
> quality DVD from an .avi:
>  man movie-to-dvd ( -q ["low","normal","high",N] ).
> where, in kilobits per second, low=3500, normal=6000, high=8000, N=user 
> supplied number.
> 
> So, if the distortion occurs in the VHS -> .AVI, this may be no help.  :-|
> 
> HTH, Chuck

Hal -- What resolution are you capturing the tape at? With what I recall 
of your equipment, I'm betting on 320x240. This is way below the 
resolution (640x480 or 720x480) of "real" DVDs and could account for the 
  size differences you are seeing. With this spproach, you are not 
deinterlacing the full image you see on videotape, which can account for 
the visible quality degredation (something I also see here, and that I 
don't know what to do about it without a faster CPU that can capture at 
640x480 deinterlaced). Finally, you may be capturing at too low a 
bitrate for the conversion to DVD to do much.

I don't capture here with xawtv; I use mencoder (I didn't even remember 
that xawtv had a capture mode, and I don't see one mentioned in the man 
page I have for it). But if you want to explore possibilities on that 
end, please post again with the details of your xawtv capture settings, 
including what "top" tells you about CPU use during a capture (so we get 
an idea of you have the power to run at higher-quality settings in real 
time).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
