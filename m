From: Ray Olszewski <ray@comarre.com>
Subject: Re: mouse not writing to device file.....
Date: Thu, 12 Feb 2004 20:37:31 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040212202502.01faeaa0@celine>
References: <5.1.0.14.1.20040212091018.01f91780@celine> <402C4D69.8050504@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <402C4D69.8050504@sancharnet.in>
References: <5.1.0.14.1.20040212091018.01f91780@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:37 AM 2/13/2004 +0530, joy wrote:
[...]
>>Do you possibly have gdm (the mouse app for consoles) running? If so, 
>>kill it ... it often interferes with access to the mouse by X.
>
>never used gdm..........

Sorry; that was a typo. I meant to write gpm (gdm is an X login manager, 
like xdm, and not what I meant to refer to).


>>Am I correct in assuming that you have a PS/2 mouse? It normally uses the 
>>/dev/psaux device ... I'm not sure if /dev/input/mouse also accesses this 
>>physical device. If you have a different type of mouse (serial, USB), 
>>please tell us what it is. All my earlier suggestions assume you are 
>>using a PS/2 mouse.
>
>I have a USB mouse , but it used to work fine froom the same usb port 
>before the reinstall.....

Do you mean it previously worked with Debian-Woody, or that it worked with 
Slackware? Or something else? Were you using a stock kernel or one you 
compiled? I don't use a USB mouse here, but I wouldn't count on a stock 
Debian kernel supporting one ... though someone else here, someone who uses 
a USB mouse with Debian, would be a better source of advice at this point.


>I do have a PS/2 adapter for the mouse, but I really would like to know 
>what went wrong before I chicken out and use that....

My immediate thought is that the Woody kernel you installed does not 
support USB mice. But I offer that as no more than a guess.

I haven't used a stock Linux kernel (aside from the early stage of an 
install) for years, so I don't recall what they include either compiled in 
or as modules ... both USB mouse support and Input Core mouse support 
appear to be available as modules, so modprobe'ing them (or adding them to 
/etc/modules) may be the prior fix you've forgotten. Just a guess, though, 
as I say.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
