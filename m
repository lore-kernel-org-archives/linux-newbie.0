From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: multiple X displays and nvidia
Date: Wed, 07 Apr 2004 10:03:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4073B5DF.7080609@arrakis.es>
References: <407279E5.9040805@arrakis.es> <40737D3D.7060606@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40737D3D.7060606@comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Beolach <beolach@comcast.net>, linux-newbie@vger.kernel.org



Beolach wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
> 
> I want to rephrase your description, just to make sure I understand your
> issue correctly.  On your PII machine you have a nVidia graphics card
> with dual-head, connected to two monitors; configured using Xinerama.
> One of the monitors was set to display a local X screen, and the other
> was set to display an X screen exported from your PIV machine.  After
> switching from the xfree86 nv driver to nVidia's propriatary nvidia
> driver, you are able to start X on one display, but trying to start on
> the second fails.
No. I'm sorry, I didn't describe it too well. PII has two nVidia cards, 
one for each monitor. Spread across the two monitors is the display 
running locally. Switching to vt08 (Alt+ F8) I get the display which is 
running on the PIV. This works fine with the nv driver, but not with 
nVidia's proprietary nvidia driver. The error message again is

(EE) NVIDIA(0): Failed to allocate external video decoder object
(EE) NVIDIA(0):  *** Aborting ***

Fatal server error:
AddScreen/ScreenInit failed for driver 0

So far as I could make it out, it's not related to the 'Twinview' 
feature. Actually I can't see anything in the README that relates to it. 
I think you're right that the nvidia forum might be more appropriate for 
this question, but I just thought I'd try here first.
Thanks for your time.
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
