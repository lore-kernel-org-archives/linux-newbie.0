From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sony MSAC-US70 Mouse in Redhat 8
Date: Sun, 13 Mar 2005 07:49:44 -0800
Message-ID: <5.1.0.14.1.20050313065500.0208e7a0@celine>
References: <001f01c52758$d9d77ab0$0db3fea9@kath.state.gov>
Mime-Version: 1.0
In-Reply-To: <001f01c52758$d9d77ab0$0db3fea9@kath.state.gov>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: bhamal@wlink.com.np, linux-newbie@vger.kernel.org

At 04:55 AM 3/13/2005 +0545, bj wrote:
>Hi !
>
>I am using Red Hat 8 with kernel 2.4.20-30.8.legacy.
>
>I got a new Sony  Reader/writer Optical Mouse .
>
>How do I detect it in Red Hat 8.0
>
>I did the following :-
>
>modprobe input
>modprobe hid
>modrprobe mousedev

I assume the typo here is just in the e-mail and not in what you actually did.

>These kernel modules are loaded without error .

Yes. And mousedev is the one you want ... it should object if anything it 
needs is missing.

>But still my usb mouse is not detected .
>
>Attached are my dmesg and message .


1. Please clarify what you mean by "not detected". Do you mean X does not 
find it? That gpm does not find it? Something else?

2. I notice in the dmesg putput you attached that you are loading a PS/2 
mouse driver. So I wonder if you have the appropriate /dev entries for your 
mouse (/dev/input/mouse0, maybe?), or if /dev/mouse (or whatever variant RH 
might use. such as /dev/input/mice) is symlinked to the right place. Even 
if you do, might whatever you are using as the test in (1) be looking for 
the wrong mouse device?

3. The logs you attached really have only boot/init messages in them. Did 
you do this modprobe'ing by hand after the boot/init is completed? If so, 
did you restart whatever you have that runs the mouse afterwards?  I see in 
your log where the core USB stuff is loaded, but not mousedev:

         ehci-hcd 00:10.3: USB 2.0 enabled, EHCI 1.00, driver    2003-Jan-22
         hub.c: USB hub found
         hub.c: 6 ports detected
         usb.c: registered new driver hiddev
         usb.c: registered new driver hid
         hid-core.c: v1.8.1 Andreas Gal, Vojtech Pavlik  <vojtech@suse.cz>
         hid-core.c: USB HID support drivers
         mice: PS/2 mouse device common for all mice

Maybe this last entr refers to mousedev; it's hard to tell from the log, 
and I don't have a similar system here to check.

4. Is your system able to access any other USB devices? If not, might you 
have the wrong core module (uhci.o or osb-uhci.o or ehci-hcd.o ) for your 
hardware. (This part is all USB-chipset specific, so consult your kernel 
documentation and your hardware documentation, or experiment ... oh, I 
found it in your logs; you are using ehci-usd, and at least it *thinks* it 
is working.)

4. If you post again, please include the output of "lsmod" and the portions 
of "lspci -v" that refer to your USB controller.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
