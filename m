From: James Miller <jamtat@mailsnare.net>
Subject: Re: 2.6.0 kernel compile overview-the unfolding saga
Date: Tue, 6 Jan 2004 08:42:34 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0401060834140.3636@localhost>
References: <3DD6433F08A5A145AD7DA03566BDBFAF9F18DC@xch-sw-06.sw.nos.boeing.com>
 <Pine.LNX.4.58.0401051408430.3345@localhost> <Pine.LNX.4.58.0401051556150.3636@localhost>
 <20040106060503.GA6016@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040106060503.GA6016@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 6 Jan 2004, Theo. Sean Schulze wrote:

> Just a shot in the dark here, but do you have the volume turned up?  I am using the ALSA sound modules, and they, as default, start up with the sound muted.  I haven't gotten around to fixing it yet, so every time I reboot that machine, I have to reset the sound levels to something higher than zero.
> 

And a brilliant shot in the dark it was!  I ran across, somewhere on the
web, the "alsamixer" command and even ran it (that's my kind of app -
colors and shapes in a console).  I saw "PCSpeaker" there, and even turned
up the volume, but that didn't get me any console beep.  Well, I just had
a look at it again after reading your post.  This time, I noted that
certain of the items listed there had an "off" flag by them - among these
the PCSpeaker.  I toggled that flag and - voila! - system speaker!  So, it
woiks, it woiks!  I just would never have guessed that alsa was something
that governs the PC's speaker - I thought that was a separate "low level"  
(however that parses out in my benighted understanding of these things)  
item.  Can anyone help clarify this for me?  Anyway, thanks to all for 
input on this - it's now fixed (provided the settings I did stick).

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
