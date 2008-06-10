From: "mohammed shareef" <mdshareef@gmail.com>
Subject: omap osk audio
Date: Tue, 10 Jun 2008 20:03:56 +0530
Message-ID: <a1d91fa0806100733o71e5f1dx5bed802e65275ccc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-omap-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=FrKrbt0KjYAITRNiLxVd7+lkNOQ3OwSd7MkaLhcMnVY=;
        b=C5IkGsd71fzChhxl1zfG5LNOkMTw01+ccEO8vtFAeAU6vKeQxBCRko0TXINZja2bh3
         9h02SRA6sddytgmrMAPRNU3nwDqrbncPdCwIN2+aKUMYstkqtYaFptqLp3O07bWoXQvt
         28v2cm2aPytVpEEwBAF4hSA3YCsV+3Zb5sxBw=
Content-Disposition: inline
Sender: linux-omap-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: omap <linux-omap@vger.kernel.org>, linux-newbie@vger.kernel.org

Dear all,

I am working on omap osk. i want to enable audio on it. But am not
able to do that. The kernel boot log says it has initialized audio
device. but i am not able to configure the audio setting nor run some
recording code. the system hangs and i have to restart.

the kernel boot code says:

TLV320AIC23 I2C version 1.8 (10-Feb-2006)
audio support initialized
ALSA device list:
 #0: OSK AIC23

i have created nodes:

# mknod /dev/mixer c 14 0
# mknod /dev/dsp c 14 3

thanx,
Shareef
