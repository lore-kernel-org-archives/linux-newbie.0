From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: Re: 1024x768 SVGA Shell - won't work
Date: Wed, 5 Jun 2002 20:03:44 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020605103118Z314422-22651+75434@vger.kernel.org>
References: <20020604080752Z316530-22651+74203@vger.kernel.org>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020604080752Z316530-22651+74203@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

OK, I've done some research (suddenly noticed there was a massive folder in 
my kernel source tree called 'Documentation' - wish I'd seen it sooner).

The mode I was using is one of the VESAfb modes (1024x768x24, apparently). 

These modes require the frame-buffer drivers to be compiled. The frame-buffer 
drivers are greyed out.

I can find nothing telling me what else I need to enable to be able to enable 
the frame-buffer drivers.

Does anybody know what options I must enable, or even better, have a 
dependancy map of the kernel?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
