From: Daniele Salatti <linuxlist@salatti.net>
Subject: Re: Linux Startup Issues
Date: Wed, 05 Jul 2006 22:42:43 +0200
Message-ID: <e8h88a$g5s$1@sea.gmane.org>
References: <000801c6a072$bb16b020$6900a8c0@ANCHORMAN>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000801c6a072$bb16b020$6900a8c0@ANCHORMAN>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

 > I tried an "apt-get install XFree86", but it tells me that it can't find
 > XFree86.

I think you want xserver-xfree86:
apt-get install xserver-xfree86

You can try also:
apt-get install xfree86*

My 2 cents...


Jesse wrote:
> I am running Debian Linux, and every time I have to reboot, it tries to 
> start the Gnome graphical interface. There's always an error, "I cannot 
> start the X server (your graphical interface). It is likely that it is 
> not set up correctly. Would you like to view the server output to 
> diagnose the problem?". When I say yes, it appears that the problem is 
> "no screens found". I tried editing the XF86Config-4 file, but I have no 
> idea what to look for, or what to change. I also tried running the 
> XFreeConfig program, but while testing, it gets to a certain video mode, 
> and freezes up.
> 
> I tried an "apt-get install XFree86", but it tells me that it can't find 
> XFree86.
> 
> Any idea what I need to do to get this fixed?
> 
> Thanks,
> 
> Jesse
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
