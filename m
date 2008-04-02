From: Yegor Yefremov <yegor_sub1@visionsystems.de>
Subject: Correlation between linux-2.6-stable kernel tree and linux-2.6.24.4.tar.bz2
Date: Wed, 02 Apr 2008 15:33:25 +0200
Message-ID: <47F38B25.7050202@visionsystems.de>
Reply-To: yegor_sub1@visionsystems.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi all,

I've recently checked the  linux-2.6-stable kernel tree out 
(http://git2.kernel.org/?p=linux/kernel/git/stable/linux-2.6-stable.git;a=summary). 
During configuration I found out that some files are missing for example 
arch/arm/mach-pxa/pxa300.c, arch/arm/mach-pxa/pxa320.c and so on. These 
files are contained in the linux-2.6.24.4.tar.bz2. As as I understand 
the linux-2.6-stable kernel tree reflects the latest stable kernel (i 
this case 2.6.24.4). Why are these files missing? Where can I get info 
about git kernel tree structure with verbose description of the git trees?

Best regards,
Yegor Yefremov


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
