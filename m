From: Ray Olszewski <ray@comarre.com>
Subject: Re: mouse not writing to device file.....
Date: Thu, 12 Feb 2004 09:23:55 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040212091018.01f91780@celine>
References: <402AF6D8.4080702@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <402AF6D8.4080702@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:15 AM 2/12/2004 +0530, joy wrote:
>Hi,
>
>I just had this problem after I reinstalled woody on my system. 
>previously, I had the same problem with my mouse not working on startx
>but I managed to correct it though it slipped my mind somehow. anyways, my 
>XF86Config file says my input devices are /dev/psaux and /dev/input/mice.
>However if I cat either of the file and start clicking away, there is no 
>change in the file (I tried this on a SW Live distro and it worked there.
>so if my mouse is not writing to either of the two device files, what 
>should I do? I also checked the other /dev/input/ mouse files and they say 
>no device..

The problem may be with your test rather than your mouse. I tried to 
duplicate it here -- testing my mouse on a Debian-Sid system -- and could 
not. That is, my mouse works fine in X, accessed through /dev/psaux ... but 
if I try either "cat /dev/psaux" or "cat </dev/psaux" and "click away", I 
too get nothing on the screen (I assume that's what you meant by "there is 
no change in the file").

I don't know *why* Debian and Slack seem to act differently with respect to 
this test, but apparently they do.

So ... you might do better by focusing directly on the X problem.

Are there any messages of interest in X's output to STDERR?

In X, what exactly does "my mouse not working" mean ... does the mouse 
pointer simply not show up at all, or does it show up but move erratically 
in response to mouse movement? Or something else?

Do you possibly have gdm (the mouse app for consoles) running? If so, kill 
it ... it often interferes with access to the mouse by X.

What happens if you eliminate the reference to /dev/input/mouse in (I 
suppose) /etc/X11/XF86Config-4? Leave just the one to /dev/psaux .

Am I correct in assuming that you have a PS/2 mouse? It normally uses the 
/dev/psaux device ... I'm not sure if /dev/input/mouse also accesses this 
physical device. If you have a different type of mouse (serial, USB), 
please tell us what it is. All my earlier suggestions assume you are using 
a PS/2 mouse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
