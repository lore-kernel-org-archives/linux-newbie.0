From: Gavin Laking <me@gavinlaking.co.uk>
Subject: Re: question in process
Date: Thu, 20 Jun 2002 00:00:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020620000045.31bffb02.me@gavinlaking.co.uk>
References: <2B8CDD1B9506D6118CF100B0D0AA532A747668@KRMEXCHSRV>
Reply-To: me@gavinlaking.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2B8CDD1B9506D6118CF100B0D0AA532A747668@KRMEXCHSRV>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 19 Jun 2002 11:26:24 +0530
Kuttalaraj Ramalingam Pillai  <kuttalraj.ramalingampillai@ssiworldwide.com> wrote:

> HI
> Can we have two processes with the same id?
> if not why?
> May be this is a silly question. pls get me an answer

Hi,

Identification numbers are assigned to processes to seperate them from other processes. They allow the computer to communicate with programs or parts of a program in an independent fashion. They facilitate a multitasking environment by maintaining state and without them, the computer would be unable to perform more than one calculation at once. They are unique. They are nearly always positive integers.

When a process is started, it is automatically assigned a 'pid' (Process IDentification) by the kernel.

G

--
  Gavin Laking
 
  11:59pm  up 1 day,  2:13,  2 users,  load average: 0.14, 0.18, 0.12

  http://www.gavinlaking.co.uk/
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
