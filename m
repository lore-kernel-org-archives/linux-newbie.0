From: joy <gracecott@sancharnet.in>
Subject: Re: XFree86 problems (ATI radeon video card)
Date: Tue, 30 Mar 2004 07:20:48 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4068D278.9080308@sancharnet.in>
References: <00b701c415a0$c1ab34b0$bb7ac19d@King>
Reply-To: gracecott@sancharnet.in, gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Philippe De Neve <Philippe.deneve@intec.ugent.be>
Cc: linux-newbie@vger.kernel.org

Philippe De Neve wrote:

 >Hi,
 >
 >
 >I'm trying to install the XFree86 system but it fails to start up. I've
 >installed it by installing the packages:
 >xfree86-common
 >xserver-common
 >xserver-xfree86
 >
 >My PC has an AMD Athlon 1500 processor with 256 MB RAM and a graphical 
card:
 >ATI Radeon 7500.
 >
 >Now when I run X I get the output shown below
 >The first error occurs at :
 >"
 >(EE) RADEON(0): [dri] RADEONDRIScreenInit failed because of a version
 >mismatch.
 >
 >[dri] radeon.o kernel module version is 1.0.0 but version 1.1.x is needed.
 >
 >
Maybe cause your system has an old version of X(4.1.01 does not support
many of the newer cards- which I think your card to be)

 >[dri] Disabling DRI.
 >
 >(EE) RADEON(0): [drm] failed to remove DRM signal handler
 >
 >"
 >I know what this means but I don't know what to do about it.
 >
 >
 >
 >
 >The second and probably fatal error is:
 >"
 >(EE) xf86OpenSerial: Cannot open device /dev/input/mice
 >
 >      No such device.
 >
 >(EE) Generic Mouse: cannot open input device
 >
 >
This is not a problem. according to your log you mouse has been detected
and this is just the other port which is being tried.....

 >(EE) PreInit failed for input device "Generic Mouse"
 >
 >(II) UnloadModule: "mouse"
 >
 >(II) XINPUT: Adding extended input device "Configured Mouse" (type: MOUSE)
 >
 >Could not init font path element unix/:7100, removing from list!
 >
 >
 >
 >Fatal server error:
 >
 >could not open default font 'fixed'
 >"
 >
 >
I suggest you send your Xf86config-4( I guess yours is a Deb Woody from
the Xfree86 version).It might give more insight.

 >
 >This one is also difficult to solve (for me though)
 >
 >Can anybody help me or give me some stuff to continue my search of
 >installing this XFree86 thing. If my question is posed on the wrong 
list plz
 >tell me where I can  post it.  Tnx a lot.
 >
 >Philippe.
 >
 >
 >



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
