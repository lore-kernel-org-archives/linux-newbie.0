From: Daron Ryan <daron.ryan@gmail.com>
Subject: Re:microphone
Date: Tue, 18 Sep 2007 23:45:51 +0930
Message-ID: <46EFDD97.2070506@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        bh=7zthNrJqBUc8El2CPQA39H+iE828zFYz9NgCRlof76g=;
        b=CvJgBGv/jx5MTQgJto8/0tSxQo5G3Hxry6sZwDASkOBclC1LIupQjaGwo5weS3pO0uYIBgkPCesGkdn3YLwBs+0f+0b6LeYAVbo3C8Ad7rFy7evRMrwUyh6WNQ3Jf11wp+9GSdEfll8ShHsvOIWk0cOGHOdFyRyd81HaNf2MbCQ=
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello Conway,

I am using audacity to test the microphone. I will check the tab 
function on the alsa mixer, I haven't tried that. Thanks for that.

Regards,
Daron.
Conway S. Smith wrote:
 > On Tue, 18 Sep 2007 21:54:32 +0930
 > Daron Ryan <daron.ryan@gmail.com> wrote:
 >  
 >> Hi,
 >>
 >> I have recently purchased a microphone / headset but can not get the
 >> microphone to work. The system is dual boot and the microphone works
 >> under windows but not Linux. Here some of the details of the system
 >>
 >> Distribution:                                Fedora 64bit
 >> Audio card:                                 Intel 82801H (ICH8 Family)
 >> ALSA driver version:                 1.0.14.
 >>
 >> I have tried adjusting microphone up to maximum volume using
 >> alsamixer (I assume maximum volume means maximum sensitivity). This
 >> only causes a hiss when microphone input is played back out again
 >> with no sign of my voice. What else can I try?
 >>
 >> Regards,
 >> Daron.
 >>
 >>    
 >
 > What program are you using to test the microphone?  Several
 > applications still use the older OSS instead of the newer ALSA
 > interface, especially for microphones.  ALSA includes OSS
 > compatibility, but the mixer levels are somewhat separate.  Try using
 > an OSS mixer program, like rexima or aumix, as well as alsamixer, and
 > make sure that both the OSS & ALSA mixers are set to record from the
 > microphone & the capture level isn't 0.  Also note that in alsamixer
 > there are separate playback & capture levels for the microphone, as
 > indicated in the "View:" line towards the top: pressing tab should
 > cycle them.
 >
 > Good luck,
 > Conway S. Smith
 >  


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
