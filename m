From: Amy Parker <apark0006@student.cerritos.edu>
Subject: Assisting with kernel Rust development
Date: Tue, 6 Jul 2021 10:19:17 -0700
Message-ID: <f2f6fb7d-18cb-3256-b6c3-2d09905b02ca@student.cerritos.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-cerritos-edu.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding:content-language;
        bh=xrzFBTAq0ZKpdWfndQXJn/n+uFOiH53JYTB36xwFHPI=;
        b=ZncqXsqcvHdTLD4Kn9PKfU8uuQ+kXHFxqo4EFylSfEocm1dleZ/KJwgkydezr15fic
         qdlfALe3BrYKGY2g646R0I8Ak0aOLLw+HOhRHfJ+CO2Berol0AfnZ/HpvpSzj6TXGGyw
         Q1T+Nvi3pUt+2MqYcRw5f5fX7RYd0Qe7OF+A5yuyvS1cQrdfNJ3XTGt19iwnXwT4m2gY
         bGjjPi5OSuIJpprH5WbTekvlgsCYtAr8Nh6x86BOEkPAKDN/g9A4P2OVROgrSqBOYBfG
         nEtiGC/COpQtAI83zbGnGWOhidYpXHGW6V4yCy/ERYIhs5GVlj7Jt1HCuojgP2lJsBNX
         tFUw==
Content-Language: en-US
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, rust-for-linux@vger.kernel.org

Hello!

My name is Amy Parker. You may have seen me on the kernel forums before under my previous email address <enbyamy@gmail.com>.

It's been a while since I've attempted to contribute to the kernel, so I figured I'd post here. My previous attempt had been under Matthew Wilcox's direction to modify the DAX driver for NVDIMMs to use XA_ZERO_ENTRY to represent a zero page instead of DAX_ZERO_PAGE (allowing us to save a constant) - but this failed since the ascending values of other flags conflicted with the value presented by XA_ZERO_ENTRY.

I saw the recent patch sequence adding Rust support to the kernel. As a Rust developer, I figured I could get back into kernel development because of this, and was wondering how I could help. Are there any active objectives that need work?

