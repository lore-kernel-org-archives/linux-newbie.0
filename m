From: joy <gracecott@sancharnet.in>
Subject: Re: sound problem (was: [no subject])
Date: Fri, 06 Feb 2004 15:52:49 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40236AF9.1030204@sancharnet.in>
References: <20040206065912.2EB3B1C946@heisspf>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Peter wrote:

>All the .wav files I use for sounds such as opening, closing, iconify etc. 
>windows.
>Playing a video CD is plain impossible whereas playing a music CD has no 
>distortion.
>The distortion is a continuous scratching and a tapering-off really annoying 
>sound.
>
>I went now back into SW9.1 did a make xconfig sound and klicked yes for OSS.
>Now the tapering-off sound is gone, however, the annoying scratch persists. It 
>is like an electrical static sound only harder on both speakers. I check the 
>wires, the plug, changed speakers; they must be all fine since there is now 
>such scratch with the RH9.0 sound system.
>  
>
Did you disable alsa during xconfig? If  no,  please do so. A person I 
know had the same problem (while playing mp3's, but should apply anyways)
he had to run his music player with the OSS drivers (mpg321 -o oss ) for 
the sound to work fine.

>Hope some solution can be found.
>
>Regards
>
>
>
>  
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
