From: mike <mike@kevino.org>
Subject: Re: keyword for rivafb in XF86Confige file
Date: Wed, 29 Sep 2004 21:02:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <415B8546.6@kevino.org>
References: <4EE0CBA31942E547B99B3D4BFAB348111081B2@mail.esn.co.in>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB348111081B2@mail.esn.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



Mukund JB. wrote:
>>>>>My system configuration
>>>>>Os                linux 7.3(kernel - 2.4.18)
>>>>>Boot loader       lilo
>>>>>Default runlevel  3
>>>>>Framebuffer       rivafb
>>>>>X server version  4.2.0

>>Well no expert here, but I had an nvidia card once under linux.
>>If you edited your "XF86Config-4" file to
>>Driver="nvidia" which I believe is the name of nvidia's driver from
>>there site which you would download from them and install as per
>>there readme instructions which I have done and works fine and has
>>3d accelleration.
> 
> 
> 
> It is working fine now. 
> I have edited the Driver field in the device section as follows:-
> Driver "fbdev" 
> 
> After then the X server is using rivafb as I could see the debug
> messages.
> But it is not invoked when I switch between app ( ATL+TAB) or I open new
> app.
> I don't know, why?
> Is the software take care of it, rather than the fb driver?
> Suggest, if u have any idea.

I do not know why you are experiencing the problems with "fbdev" in
the X server. You could take a look at the man page on "fbdev" also
maybe take a look at the kernel source documentation, like
/usr/src/linux-2.4.whateveryourversionis/drivers/video/riva/


> 
>>XFree86 has their open source driver which handles framebuffer
>>support as well and your "XF86Config-4" file would have been
>>Driver="nv" this driver works fine but only 2d accelleration.
> 
> 
> Our aim is to configure the X so that it uses the fraembuffer driver.

Take a look at the man page for the "nv" driver. Maybe it will do
for you what you want.


> 
>>I dont think you need the rivafb driver if you use the xfree86
>>driver or nvidia's propietary driver.
> 
> 
> If it is so, then why is linux providing the rivafb driver?

My mistake, I should not have said that. I have read before about
problems with nvidia's propietary driver having problems and people
had to disable rivafb.When I had an nvidia card all I used were the
"nv" and the "nvidia" drivers in my XF86config-4 device section driver=


> I think that rivafb driver has more functionality implemented in it than
> a generic fb driver.

You are correct a specific driver would have more functionality than
a generic like say the vesafb. As long as they are maintained anyways.

The only thing is as you eluded to before there is not much
documentation for rivafb.

Well hopefully someone on this list will read your posts and be able
to step in, and get you going. I have played with the "nvidia"
driver and some of its options buts thats about my limit experience.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
