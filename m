From: Ray Olszewski <ray@comarre.com>
Subject: Re: playing ogg files with xmms
Date: Wed, 22 Sep 2004 17:13:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040922144337.01ffe4e0@celine>
References: <Pine.LNX.4.44.0409221705450.16536-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0409221705450.16536-100000@legolas.personal.
 engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:08 PM 9/22/2004 -0400, Karthik Vishwanath wrote:
>I am unable to play ogg-vorbis encoded files under xmms. mp3s are fine,
>however. What must I install to be able to listen to the ogg files?
>
>System details: Athlon xp1500+ cpu, debian woody linux,
>kernel-2.4.18-1-k7.

Do you have the ogg-vorbis codecs installed? On Sid, this is 
libvorbisfile3. On Woody, it might still be libvorbis0. There are a couple 
of other libraries needed too, but they should install as dependencies of 
this one  ("apt-cache show" it to see what I mean if I am not being clear 
here).

On Sid, the ogg stuff is listed in the "recommended" section of the xmms 
"show" info, not in "dependencies". So that's probably what snagged you.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
