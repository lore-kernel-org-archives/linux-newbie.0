From: Daron Ryan <daron.ryan@gmail.com>
Subject: re: Microphone
Date: Wed, 19 Sep 2007 23:56:14 +0930
Message-ID: <46F13186.2000909@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        bh=gNX2dOF2P1qD9WoZIgAIovcHuwCI+OodyC2FyD1dGBM=;
        b=qBnL7Xzii4cDGSPN1GmeAOUffvtsM1Qv/eG0zybG8aQExWLJyyVJ/tglVDT36Rw6k02m84GjC9qQ0V+ZabW+oCaFPV0PGco8ZYY2Btu6CwV0jEBFA+EQ6F4nqPAmdsuDARzRJqGvTgYtAfDFJqxcEjScu/HFumtavFqheknnUYs=
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

 Hello Gustavo,

Thanks responding but I don't understand how this will help. This=20
program appears merely to record sound. It sounds as though it is just =
a=20
high level program. I need my microphone to work with VOIP, that is my=20
purpose. My microphone has not worked with Ekiga, Audicity or other=20
programs I have tried. I don't understand how this will help. I was=20
hoping to find out where to find drivers or how to adjust the OS.

Regards,
Daron.


Gustavo Chain wrote:
 > El Tue, 18 Sep 2007 23:45:51 +0930
 > Daron Ryan <daron.ryan@gmail.com> escribi=F3:
 >
 >  =20
 >> Hello Conway,
 >>
 >> I am using audacity to test the microphone. I will check the tab
 >> function on the alsa mixer, I haven't tried that. Thanks for that.
 >>
 >> Regards,
 >> Daron.
 >> Conway S. Smith wrote:
 >>  > On Tue, 18 Sep 2007 21:54:32 +0930
 >>  > Daron Ryan <daron.ryan@gmail.com> wrote:
 >>  > =20
 >>  >> Hi,
 >>  >>
 >>  >> I have recently purchased a microphone / headset but can not ge=
t
 >>  >> the microphone to work. The system is dual boot and the
 >>  >> microphone works under windows but not Linux. Here some of the
 >>  >> details of the system
 >>  >>
 >>  >> Distribution:                                Fedora 64bit
 >>  >> Audio card:                                 Intel 82801H (ICH8
 >>  >> Family) ALSA driver version:                 1.0.14.
 >>  >>
 >>  >> I have tried adjusting microphone up to maximum volume using
 >>  >> alsamixer (I assume maximum volume means maximum sensitivity).
 >>  >> This only causes a hiss when microphone input is played back ou=
t
 >>  >> again with no sign of my voice. What else can I try?
 >>  >>
 >>  >> Regards,
 >>  >> Daron.
 >>  >>
 >>  >>   =20
 >>  >
 >>  > What program are you using to test the microphone?  Several
 >>  > applications still use the older OSS instead of the newer ALSA
 >>  > interface, especially for microphones.  ALSA includes OSS
 >>  > compatibility, but the mixer levels are somewhat separate.  Try
 >>  > using an OSS mixer program, like rexima or aumix, as well as
 >>  > alsamixer, and make sure that both the OSS & ALSA mixers are set
 >>  > to record from the microphone & the capture level isn't 0.  Also
 >>  > note that in alsamixer there are separate playback & capture
 >>  > levels for the microphone, as indicated in the "View:" line
 >>  > towards the top: pressing tab should cycle them.
 >>  >
 >>  > Good luck,
 >>  > Conway S. Smith
 >>  > =20
 >>
 >>
 >> -
 >> To unsubscribe from this list: send the line "unsubscribe
 >> linux-newbie" in the body of a message to majordomo@vger.kernel.org
 >> More majordomo info at  http://vger.kernel.org/majordomo-info.html
 >> Please read the FAQ at http://www.linux-learn.org/faqs
 >>    =20
 >
 > Try arecord
 >
 >  =20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
