From: nidhi mittal hada <nidhimittal19@gmail.com>
Subject: beagle-board -high speed data acquisition from - adc --
Date: Sun, 5 Dec 2010 12:49:31 +0530
Message-ID: <AANLkTik0SRGzo=nbs1z_9QyTwkYGvMQUK_6ShskKFe9u@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:mime-version:received:from:date
         :message-id:subject:to:content-type;
        bh=x2U55DFprGeNiVpMpzQTvvUFl4iauBheJheDhDs3jpo=;
        b=rgWEwqKCfWTrWS6lfjI3DiSy65cI7tj0qgROXUEmDWx5PXhG9DHGm+i+kJ+htZJrbD
         g4H8VAkyFfa+KNyMO4wxeWHFBq+GUrAxGXAu/VGY5PeI5RRhqKY1tq2H1jDDSMiRCUcv
         J7ddOjfrXntTBTlrQB+rJ+btJvDud54kzgTIU=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kernelnewbies <kernelnewbies@nl.linux.org>, linux-arm-kernel@lists.arm.linux.org.uk, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org, mohit hada <mohit.soc@gmail.com>, vm.r

Hello all

Actually
I want to use a parallel interface ADC with the Beagle Board with 40Msps.
I want to take samples using 12 bit ADC and acquire it for say 100ms.

My input signal is 3 V p-p .


"Actually in my application after taking sample I want to calculate
4096 point FFT using it.
During this time i don't require to acquire input signal. Then the
calculated data has to
be passed to a PC using on board USB or UART interface.
Some more complex operations are also there such as correlations and
Principal Component analysis."

Please suggest whether beagle board is apt for such project.

My major concern is high speed acquisition using linux dvsdk from
Texas Instruments or any linux on beagleboard


Please help

--
Thanks & Regards
Nidhi Mittal Hada
Scientific officer D
Computer Division
Bhabha Atomic Research Center
Mumbai

http://nidhi-searchingmyself.blogspot.com/
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
