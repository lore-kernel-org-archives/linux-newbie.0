From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Cmedia support.....(Slack 10)
Date: Sun, 24 Oct 2004 11:37:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200410241137.04197.pa3gcu@zeelandnet.nl>
References: <4b0d6e0d041023212966424bf3@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d041023212966424bf3@mail.gmail.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: joy_mm@ieee.org
Cc: linux-newbie@vger.kernel.org

On Sunday 24 October 2004 06:29, joy merwin monteiro wrote:
> Hi,
> One of my friends has a comp with this config:
> AsRock mobo with an intel 845g chipset running a celeron
> an ac97 codec by cmedia.(cmedia 041 i think..)

One way to determine which audio chipset that mobo has is to use the command 
'lspci -v -v' that will show you a lot of info about the chipset.
Once you know which chipset it is take a look 
into /usr/src/linux/Documentation/sound/ and see if that chipset is mentioned 
there.

> when I run alsaconf , it says no device detected.
> anyone else with this chip having problems

I have little experiance with alsa, what i did was use a search engine to 
obtain some info.
Use www.google.com/linux and type some keyword into the engine.

>
> Thanks in advance,
> Joy.M.Monteiro

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
