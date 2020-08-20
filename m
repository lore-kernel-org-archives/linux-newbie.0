From: Billie Alsup <billie.alsup@gmail.com>
Subject: associating w1 bus masters to parent device
Date: Wed, 19 Aug 2020 18:11:00 -0700
Message-ID: <BA6555F3-C73F-4D0F-A2D8-FABB3CAAE517@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=VHM9uZcyaubTr83jb3EKiTl+kBIIUIkG3mRA4KCUn+Q=;
        b=MCDi55WCR5vH/jasRRwNe3yMlM442QxczSvBUEL7b29jATvxYI54RKr1MoxBF24pSc
         vXzEtAhyoC3ROEmPKqG/8G5Xg5kO33PkgoXCvK0jR0elldYTetAlOXT+WE7LjB+erNtk
         XSs+F3D4wPPGfwsXy/eV8HBF7Btr8vT88wsroikROmFMjNiSdAi+Voc82ubERZXzZP+/
         AfgL0hoFsbK7aS1OSLVtnLgX78GUcTgDx7Yhla/o+AKlRLr4U1cpxUy3jAlmzim+Qrr+
         /HcL0TlMmgTcibOBLnTISPXogH4RO/qR+sZR14OuLNzHQ/xBUka/MZyHcZJOZYVio15I
         VE3w==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have hardware with multiple ds2482 devices (i2c to 1-wire bridge).  =
Each instantiation of a ds2482 results in a new w1_bus_master%d device.  =
However, I cannot figure out how to correlate the w1_bus_master%d device =
to the original ds2482 device (from user space looking at sysfs =
entries).  Each master has the same type of device behind it (a ds2433 =
eeprom), but I still need to know which is which.  The i2c devices (and =
thus the w1_bus_master%d devices) do not necessarily probe =
consecutively, so I can't just presume a mapping at any instance in =
time.  Am I missing something?  Currently on 4.9.189 (debian:9), but am =
planning to move to 4.19.118 (debian:10).




