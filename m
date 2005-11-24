From: Ray Olszewski <ray@comarre.com>
Subject: Re: Window virtual larger than physical?
Date: Wed, 23 Nov 2005 16:35:47 -0800
Message-ID: <43850AE3.8050306@comarre.com>
References: <17281.43053.891765.176695@cerise.gclements.plus.com>	<43819B47.9040206@leuchtturm-it.de> <17284.35279.681946.957436@cerise.gclements.plus.com> <43849BB6.1050603@gelm.net> <4384A160.1060309@comarre.com> <4384EB91.8010006@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4384EB91.8010006@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck gelm wrote:
> Ray Olszewski wrote:
> 
>> chuck gelm wrote:
>>
>>> My virtual window is larger than my physical window.
>>> This is agrevating.  I have a fresh install of Slackware v10.2
>>> and I am using KDE v3.4.
>>>
>>> Is this a Xorg/Xwindow issue or a KDE issue?
>>>
>>> I have browsed around the KDE settings and googled,
>>> but I have found no help.  :-|
>>>
>>> I ran xorgsetup and choose not to have virtual windows larger,
>>> yet after a few startx's, the window manager returns to this
>>> virtual > physical mode.  :-|
>>>
>>> How do I make my virtual window the same size as my physical window?
>>
>>
>>
>> It's almost surely an X Window issue. Assuming things haven't changed 
>> recently, the virtual X display is always the size of the largest 
>> physical display available. So if (for example) you have your X setup 
>> configured to switch between 640x480 and 1024x768, the virtual display 
>> will be set at 1024x768.
>>
>> Are you really saying that right after you run xorgsetup, the virtual 
>> display is (still using my example) 640x480, but that after you've 
>> started X a few times via startx (with the same uid), it switches to 
>> 1024x768 in a 640x480 physical display? Or are you seeing some 
>> different behavior and I am misinterpreting what you wrote?
>>
>> You may want to wait a bit to see if someone who knows Slackware 10.2 
>> can give you specific advice. If nothing comes along, though, you 
>> might post a followup that describes the problem with more specifics.
>>
>> I'm a bit new to the xorg version of X myself, but its config file 
>> looks similar to the old XFree86 ones. So if you do repost, please 
>> include:
>>
>>     A. the "Screen" section
>>     B. the "Server Layout" section
>>
>> (or, if your xorg.conf file is as short as mine is, just include the 
>> whole thing).
>>
>> You might also want to look at the disgnostics that startx prints to 
>> (I think) STDERR and see what depth/mode combinations it says actually 
>> work with your video card and display. I suppose something might be 
>> changing there, though I'm hard pressed to think of what.
> 
> 
> Hi, Ray, Paulo, and Stephen:
> 
> It is XORG related.
> Paulo:  Yes, you guessed correct. I was using xorgconfig and not xorgsetup.
> 
> I [kind of] fixed part of the problem by editing xorg.conf and removing 
> the "1280x1024"
> in the 'Modes' lines.  Now, I can I have a confortable screen size 
> without scrolling, but
> only in 1024x768 mode.  800x600 modes has a virtual screen size of 
> ?1024x768? and
> requires scrolling.  

For better or for worse, this is a feature of X, not a bug. (That is, 
the virtual display is ALWAYS the largest possible physical display, 
even when you shift among visual modes). So with the setup in your .conf 
file, you will ALWAYS have a 1024x768 virtual display.

As far as I know, the only way to avoid this is to pick a single size 
and stick to it ... edit "modes" in the "Display" subsections you quoted 
below to choose only that one value.

>My monitor is a ViewSonic G773 and specifications 
> indicate:
> Fh 30-70 Hz
> Fv 50-180 Hz
> 1280x1024 x 66 Hz
> 1024x 768  x 87 Hz
> 800 x 600  x110 Hz
> 
> My video card is nVidia GeForce IV (64MB).  I feel that this video card 
> should easily
> supply the above rates.
> 
> I still have a larger virtual screen size than physical screen size when 
> using modes
> 800x600 and 640x480.  :-|
> 
> Here is my /etc/X11/xorg.conf Screen and Server Layout sections:
> 
> # **********************************************************************
> # Screen sections
> # **********************************************************************
> 
> # Any number of screen sections may be present.  Each describes
> # the configuration of a single screen.  A single specific screen section
> # may be specified from the X server command line with the "-screen"
> # option.
> Section "Screen"
>    Identifier  "Screen 1"
>    Device      "NVIDIA GeForce"
>    Monitor     "My Monitor"
>    DefaultDepth 24
> 
>    Subsection "Display"
>        Depth       8
>        Modes       "1024x768" "800x600" "640x480"
>        ViewPort    0 0
>    EndSubsection
>    Subsection "Display"
>        Depth       16
>        Modes       "1024x768" "800x600" "640x480"
>        ViewPort    0 0
>    EndSubsection
>    Subsection "Display"
>        Depth       24
>        Modes       "1024x768" "800x600" "640x480"
>        ViewPort    0 0
>    EndSubsection
> EndSection
> 
> # **********************************************************************
> # ServerLayout sections.
> # **********************************************************************
> 
> # Any number of ServerLayout sections may be present.  Each describes
> # the way multiple screens are organised.  A specific ServerLayout
> # section may be specified from the X server command line with the
> # "-layout" option.  In the absence of this, the first section is used.
> # When now ServerLayout section is present, the first Screen section
> # is used alone.
> 
> Section "ServerLayout"
> 
> # The Identifier line must be present
>    Identifier  "Simple Layout"
> 
> # Each Screen line specifies a Screen section name, and optionally
> # the relative position of other screens.  The four names after
> # primary screen name are the screens to the top, bottom, left and right
> # of the primary screen.  In this example, screen 2 is located to the
> # right of screen 1.
> 
>    Screen "Screen 1"
> 
> # Each InputDevice line specifies an InputDevice section name and
> # optionally some options to specify the way the device is to be
> # used.  Those options include "CorePointer", "CoreKeyboard" and
> # "SendCoreEvents".
> 
>    InputDevice "Mouse1" "CorePointer"
>    InputDevice "Keyboard1" "CoreKeyboard"
> 
> EndSection
> -----
> Regards, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
