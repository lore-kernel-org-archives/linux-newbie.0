From: joy <gracecott@sancharnet.in>
Subject: Re: mouse not writing to device file.....
Date: Fri, 13 Feb 2004 09:37:05 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <402C4D69.8050504@sancharnet.in>
References: <5.1.0.14.1.20040212091018.01f91780@celine>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

>
> The problem may be with your test rather than your mouse. I tried to 
> duplicate it here -- testing my mouse on a Debian-Sid system -- and 
> could not. That is, my mouse works fine in X, accessed through 
> /dev/psaux ... but if I try either "cat /dev/psaux" or "cat 
> </dev/psaux" and "click away", I too get nothing on the screen (I 
> assume that's what you meant by "there is no change in the file").
>
> I don't know *why* Debian and Slack seem to act differently with 
> respect to this test, but apparently they do.
>
> So ... you might do better by focusing directly on the X problem.
>
> Are there any messages of interest in X's output to STDERR?

No, there are none, the mouse detection and initialization is fine. the 
mouse pointer appears too, but does not move ( got the server o/p using 
the man page command startx >$HOME/log 2>&1)

>
> In X, what exactly does "my mouse not working" mean ... does the mouse 
> pointer simply not show up at all, or does it show up but move 
> erratically in response to mouse movement? Or something else?
>
> Do you possibly have gdm (the mouse app for consoles) running? If so, 
> kill it ... it often interferes with access to the mouse by X.

never used gdm..........

>
>
> What happens if you eliminate the reference to /dev/input/mouse in (I 
> suppose) /etc/X11/XF86Config-4? Leave just the one to /dev/psaux .

tried that too, changing both to /input/mice and both to /psaux . but 
didn't work.

>
> Am I correct in assuming that you have a PS/2 mouse? It normally uses 
> the /dev/psaux device ... I'm not sure if /dev/input/mouse also 
> accesses this physical device. If you have a different type of mouse 
> (serial, USB), please tell us what it is. All my earlier suggestions 
> assume you are using a PS/2 mouse.

I have a USB mouse , but it used to work fine froom the same usb port 
before the reinstall.....

I do have a PS/2 adapter for the mouse, but I really would like to know 
what went wrong before I chicken out and use that....

Thanks,
Joy.

>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
