From: Fundu <fundu_1999@yahoo.com>
Subject: Module init for compiled in vs loaded modules
Date: Mon, 18 Aug 2008 18:46:51 -0700 (PDT)
Message-ID: <609891.43692.qm@web63401.mail.re1.yahoo.com>
References: <2e35683f0808181020q237e8d3dm2f22c29f1ad8030d@mail.gmail.com>
Reply-To: fundu_1999@yahoo.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2e35683f0808181020q237e8d3dm2f22c29f1ad8030d@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

For kernel modules can be loaded by explicitly do insmod etc for ones that are not compiled into the kernel.

1) But where do i look to find how the kernel loads(ie. calls the fn exported by module_init(XXXX)) for modules compiled into the kernel.

2) Does the kernel call some kind of probe to load them ? say i have 2 module compiled into the kernel for 2 diff type of ether cards. Would the kernel call init on both.

thanks !



      
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
