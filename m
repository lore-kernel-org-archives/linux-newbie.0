From: mike <mike@kevino.org>
Subject: Re: keyword for rivafb in XF86Confige file
Date: Wed, 29 Sep 2004 02:45:25 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <415A8435.9040303@kevino.org>
References: <4EE0CBA31942E547B99B3D4BFAB34811107F55@mail.esn.co.in>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB34811107F55@mail.esn.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



Mukund JB. wrote:
> 
> 
>>-----Original Message-----
>>From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-
>>owner@vger.kernel.org] On Behalf Of mike
>>Sent: Saturday, September 25, 2004 8:20 AM
>>To: linux-newbie@vger.kernel.org
>>Subject: Re: keyword for rivafb in XF86Confige file
>>
>>What video card do you have?
> 
> NVidia Riva TNT2 Modewl64 is my card.
> Sorry for the delay. I was off station
> 
> 
>>Mike
>>
>>
>>Mukund JB. wrote:
>>
>>>Hello All,
>>>
>>>I am not able to make my X server work on rivafb (framebuffer
> 
> module)
> 
>>which is loaded as a module on system.
>>
>>>I edited "XF86Config-4" file
>>>Driver "nvidia" .
>>>Is it the right keyword to invoke the rivafb driver. I got this on
> 
> same
> 
>>maillists. Where in the system can I find the database for these
> 
> keyword
> 
>>stuff.
>>
>>>Later, when I say
>>># startx , it fails.
>>>It says:-
>>>(EE) Failed to load module "nvidia" (module does not exist, 0)
>>>(EE) No devices detected.
>>>
>>>What is going wrong here? Is there any other way through which I can
>>
>>tell the X server to use Framebuffer.
>>
>>>Please help.
>>>
>>>My system configuration
>>>Os                linux 7.3(kernel - 2.4.18)
>>>Boot loader       lilo
>>>Default runlevel  3
>>>Framebuffer       rivafb
>>>X server version  4.2.0
>>>
>>>Regards,
>>>Mukund jampala
>>>

Well no expert here, but I had an nvidia card once under linux.
If you edited your "XF86Config-4" file to
Driver="nvidia" which I believe is the name of nvidia's driver from
there site which you would download from them and install as per
there readme instructions which I have done and works fine and has
3d accelleration.

XFree86 has their open source driver which handles framebuffer
support as well and your "XF86Config-4" file would have been
Driver="nv" this driver works fine but only 2d accelleration.

I dont think you need the rivafb driver if you use the xfree86
driver or nvidia's propietary driver.

Mike


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
