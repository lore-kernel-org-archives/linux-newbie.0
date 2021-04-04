From: Jiahao XU <jiahaoxu28th@gmail.com>
Subject: Linux kernel configuration option for disabling all specter/meltdown migration
Date: Sun, 4 Apr 2021 22:11:24 +1000
Message-ID: <CALJHi=9Ax2fWUuKsAbdBkbxhhjvMbZ91-aL5Cp6HYm9khXnffw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=A83tSv4X+pAauBq+gni3vjWEdzTHyG0kGi6LbTi/w5k=;
        b=e+E+CfnGI7LnCsZsvskpKvvqzgfgb5EPQvcI7yS6sl5ItNnVfC7SxT6A/QVtYqt8e2
         U79/P7raWG3s9dENblyOx8Y2KlH47WIm58F+GFxpLpVKSBOwr+csqSV9G4PqGRpY1POm
         LLgQd0e87gbgmA3T2HUD0hi+7RHL3eWpbGuNjorwUkgaLz1bEP+zm8Y2pCyKL2QG6UXB
         7qZK/m16ThJT2gKa1Qng+UcuyyY1cceRf8WAdnUoWENfC/cKQpShRnCAB7WDsd0ntdGA
         3BY9yAvitOOa1Mj8iP3DrlnBPHenkqM5TkmwidsPD78PEVBRUWFrXYfAxbTd5Edc1WEK
         Zq/Q==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I am compiling a kernel that is meant to be run in vm and only run
trusted softwares, so I'd like to turn off specter/meltdown migration
as they are of no use but only holds back the performance.

However, I didn't find any related option except for CONFIG_RETPOLINE.

If there isn't a kernel config in the mainline kernel, then is there
any patch that would allow me to disable them?

Thanks in advance.
