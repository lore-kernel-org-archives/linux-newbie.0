From: Ray Olszewski <ray@comarre.com>
Subject: Re: Mouse going nuts in RH Linux Enterprise 3 (Taroon)
Date: Thu, 07 Apr 2005 13:37:15 -0700
Message-ID: <5.1.0.14.1.20050407132836.02054640@celine>
References: <009301c53bac$15bb7e70$540aa8c0@lanadmin>
 <009301c53bac$15bb7e70$540aa8c0@lanadmin> <Pine.LNX.4.60.0504072307070.585@grinch.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.60.0504072307070.585@grinch.ro>
References: <009301c53bac$15bb7e70$540aa8c0@lanadmin>
 <009301c53bac$15bb7e70$540aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:10 PM 4/7/2005 +0300, caszonyi@rdslink.ro wrote:
>On Thu, 7 Apr 2005, Eve Atley wrote:
>
>>
>>Simply put...my mouse has started having a mind of its own in our Redhat
>>Enterprise Workstation 3 (Taroon) Linux box. It wants to focus on the bottom
>>left-hand corner of the screen, and clicks on whatever happens to be there
>>at the time (Languages at login, as an example). When I try to move the
>>cursor up towards my destination, it insists on refocusing down at the
>>bottom left-hand corner of the screen again. And though I press neither the
>>left nor right button, it functions as if I am.
>>
>>I don't know if any of these are related, but here are a few things which
>>lead up to this:
>>1. desktop crashed after a user killed a window through remote VNC - I
>>rebooted the machine
>>2. I have an entry in vncserver to start up "root:1" (conflict?) - when a
>>user remotely connects via VNC, they see a similar desktop but it's NOT the
>>same. I can tell, because windows will pop up in the server that never
>>appear in the VNC desktop. Icons layout is identical, however.
>>3. The mouse in question is a scroll-wheel optical (Microsoft) and is
>>connected to a KVM switch. It worked perfect fine previous to this.
>>
>>Any ideas how I can exorcise my mouse? Any corrupted file to examine
>>perhaps?
>
>see /etc/X11/xorg.conf or /etc/X11/XF86Config
>
>This behaviour is usually associated with wrong driver for mouse

It's also sometimes associated with trying to run X locally when a console 
mouse driver (usually gpm) is also running. So check for that too 
(especially if you reboot this system rarely ... you might have fixed this 
by hand, then forgotten you did so).

BTW, depending on the vintage of your system, the X config file might be 
called /etc/X11/XF86Config-4 . To sort out the details in it, look for a 
section called "ServerLayout'" and see what mouse-like InputDevice entries 
it has. Then check the sections for them to see if they are configured 
correctly.

Finally, don't rule out the possibility that the KVM switch is involved 
somehow ... if, for example, it is not set to connect your mouse to the 
Linux host when X actually starts. I've seen reports on this both ways 
(that it works and that it doesn't) and do not know what differentiates the 
two sets of reports.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
