From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: question in process
Date: Wed, 19 Jun 2002 12:32:13 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0206191219530.3699-100000@orthanc.lemmerling.net>
References: <2B8CDD1B9506D6118CF100B0D0AA532A747668@KRMEXCHSRV>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2B8CDD1B9506D6118CF100B0D0AA532A747668@KRMEXCHSRV>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 19 Jun 2002, Kuttalaraj Ramalingam Pillai wrote:

> HI
> Can we have two processes with the same id?

No

> if not why?

Every process has a number assigned to it when it starts. Process ID's
(PID) are integer numbers unique among all other processes.


The longer your system is running, the higher the PIDs will be.

HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
