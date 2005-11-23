From: Ray Olszewski <ray@comarre.com>
Subject: Re: Window virtual larger than physical?
Date: Wed, 23 Nov 2005 09:05:36 -0800
Message-ID: <4384A160.1060309@comarre.com>
References: <17281.43053.891765.176695@cerise.gclements.plus.com>	<43819B47.9040206@leuchtturm-it.de> <17284.35279.681946.957436@cerise.gclements.plus.com> <43849BB6.1050603@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43849BB6.1050603@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

chuck gelm wrote:
> My virtual window is larger than my physical window.
> This is agrevating.  I have a fresh install of Slackware v10.2
> and I am using KDE v3.4.
> 
> Is this a Xorg/Xwindow issue or a KDE issue?
> 
> I have browsed around the KDE settings and googled,
> but I have found no help.  :-|
> 
> I ran xorgsetup and choose not to have virtual windows larger,
> yet after a few startx's, the window manager returns to this
> virtual > physical mode.  :-|
> 
> How do I make my virtual window the same size as my physical window?

It's almost surely an X Window issue. Assuming things haven't changed 
recently, the virtual X display is always the size of the largest 
physical display available. So if (for example) you have your X setup 
configured to switch between 640x480 and 1024x768, the virtual display 
will be set at 1024x768.

Are you really saying that right after you run xorgsetup, the virtual 
display is (still using my example) 640x480, but that after you've 
started X a few times via startx (with the same uid), it switches to 
1024x768 in a 640x480 physical display? Or are you seeing some different 
behavior and I am misinterpreting what you wrote?

You may want to wait a bit to see if someone who knows Slackware 10.2 
can give you specific advice. If nothing comes along, though, you might 
post a followup that describes the problem with more specifics.

I'm a bit new to the xorg version of X myself, but its config file looks 
similar to the old XFree86 ones. So if you do repost, please include:

	A. the "Screen" section
	B. the "Server Layout" section

(or, if your xorg.conf file is as short as mine is, just include the 
whole thing).

You might also want to look at the disgnostics that startx prints to (I 
think) STDERR and see what depth/mode combinations it says actually work 
with your video card and display. I suppose something might be changing 
there, though I'm hard pressed to think of what.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
