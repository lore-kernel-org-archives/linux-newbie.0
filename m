From: Ray Olszewski <ray@comarre.com>
Subject: Re: X-management choice
Date: Sun, 22 Dec 2002 17:37:43 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021222173211.020ab810@celine>
References: <200212230108.gBN1836A001576@pyxis.wanadoo.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212230108.gBN1836A001576@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "e.a./CC" <linux-newbie@vger.kernel.org>

Well .. to start with, are you aware that "startx" itself is just a shell 
script, one that usually acts as a from end to xinit, first setting up some 
values for config files. Were I to face your problem, I would probably just 
make a copy of startx ... called startx2 or startx-minimal or whatever ... 
and have it use different config files to set up the default applications 
(including a window manager) to run.

I imagine I'd use the distro's setup help to get the Gnome or KDE version 
working as startx, then do the minimalist one by hand. Or I'd set up the 
minimalist one first, cp the config files to different names, then 
"upgrade" to the Gnome or KDE one.

Sorry to be so vague, but from your message, it is hard to know how much 
you already know about X. If you need more specific advice, please ask for it.

At , Heimo Claasen wrote:
>I examined the various threads on X window management on the list lately
>but could not find and answer on what I'm looking for:
>
>I would like to have a regular choice for starting up X either with
>a kind of barebones xterm only, or a more comfortable GUI
>("environment") like KDE/Gnome. That is, I want to have a selection
>possible with/in "startx" for which of two setups to use for starting X.
>
>I'm not yet there to write bash batches (and wonder if I ever would
>get there); but would probably cope with eventual editing of existing
>ones. (Installation is Mdk., i.e. rather identical to RH in respect to
>the X arrangements.)
>
>REM: X itself ("bare", no whatsoever window manager and thus no means
>to do anything with it, always installed well here, even with somewhat
>tricky hardware conditions regarding the video card and highres monitor.)




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
