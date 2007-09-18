From: Daron Ryan <daron.ryan@gmail.com>
Subject: Microphone
Date: Tue, 18 Sep 2007 21:54:32 +0930
Message-ID: <46EFC380.6080709@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:user-agent:mime-version:to:subject:content-type:content-transfer-encoding;
        bh=7wOTq7tv/IlQy0IaUgqmf+BFciTVsm4cImTuBPR6Yxg=;
        b=R6JcFsqnWieKhiloY72E1Ko5lSJn+fPI8GYnWNRr5ry2WmzO1SSF2OHE359CeBZxCNR+STztFd5Bejjx52OOikHHR9NJAnhLR0fteQ7Fa0MjDsln6/2FdQCFhbjNTwThvcLyg+1u9jDd91sbBpVtTefZtnKDPJ1h1gIS2UtofcU=
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

I have recently purchased a microphone / headset but can not get the 
microphone to work. The system is dual boot and the microphone works 
under windows but not Linux. Here some of the details of the system

Distribution:                                Fedora 64bit
Audio card:                                 Intel 82801H (ICH8 Family)
ALSA driver version:                 1.0.14.

I have tried adjusting microphone up to maximum volume using alsamixer 
(I assume maximum volume means maximum sensitivity). This only causes a 
hiss when microphone input is played back out again with no sign of my 
voice. What else can I try?

Regards,
Daron.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
