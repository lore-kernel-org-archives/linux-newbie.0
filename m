From: Ray Olszewski <ray@comarre.com>
Subject: Re: usb web cam
Date: Wed, 14 May 2003 22:28:18 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030514221900.02083a90@celine>
References: <1052970400.1153.1.camel@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1052970400.1153.1.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

At 10:46 PM 5/14/2003 -0500, ramzez wrote:
>HI friends...
>   I'm using Red Hat 8.0 and now I get a "creative go plus" USB webcam...
>but I don't how use it over Linux
>   Can you help me please?

I don't know that particular camera ... but as a general matter, you want 
to find a kernel driver that can access it. That in turn is pretty mch a 
function of its internal chipset ... in practice, when I was trying to get 
a Webcam working, I just tried all the "USB Multimedia Devices" choices 
until I found one that worked.

If you're using a precompiled kernel, see if they are included. If you're 
compiling your own, look in (with "make menuconfig") the

         USB Support
                 USB Multimedia Devices

list.

Once you have the camera module working, you can use gqcam to try it out. 
There are probably other apps too, but I'm not really up to speed on this 
stuff any longer. A quick search (in the Debian package list under 
"webcam")  turned up these names, but I can't tell you anything about them 
other than what's here:

came - Rewrite of the xawtv webcam app using imlib2
camstream - collection of tools for webcams and other video-devices
cqcam - Color QuickCam (PC/Parallel) control program
feh - imlib2 based image viewer
gkrellkam - GKrellM plugin that displays a periodically updating image
gqcam - GTK Webcam control
motion - V4L Capture Program supporting Movement Detection
vgrabbj - grabs a image from a camera and puts it in jpg/png format
webcam - capture and upload images
webcamd - Capture images from video devices




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
