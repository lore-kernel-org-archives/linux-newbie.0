From: Joshua Rogers <joshuarogers@hopper.net>
Subject: Boot Splash
Date: Tue, 31 Aug 2004 22:29:08 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200408312229.09554.joshuarogers@hopper.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Well, I did some searching and couldn't find anything for my little problem.

I'm running Debian with a custom built Linux kernel (2.6.8-1).

I want to set the console (maybe with something like vga= ) so that I have a 
resolution between 800x600 and 1280x1024 at the console.  I plan on trying to 
add a boot splash later, but back to the point at hand....

My computer has two graphics cards, an onboard video and a nVidia GeForce II.  
I can't disable the onboard graphics in the bios, I can only choose AUTO or 
INTERGRATED.  Well, it considers my GeForce to be the second card.  This is 
the only one that I actually have a monitor hooked up to.

The kernel and X both handle the setup fine.  Until I add the vga bootparam.  
Then it appears that while the kernel is booting (and anytime I switch to 
console) that it tries to use the onboard video.  X however is still using 
the correct display.

Is there a way to make the kernel use a higher resolution in the console on 
the second video card (so that I can have a boot splash.)

Thanks,
Josh Rogers
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
