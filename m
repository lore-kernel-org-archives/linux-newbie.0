From: Gavin Laking <me@gavinlaking.co.uk>
Subject: CPU Utilization & Priorities
Date: Wed, 26 Jun 2002 13:50:38 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020626135038.3b9752ca.me@gavinlaking.co.uk>
Reply-To: me@gavinlaking.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I'm struggling to understand exactly what my 'load average' is reporting.

I run several applications at once, and by using 'top' I can ascertain what applications are currently gobbling up the most memory and CPU resources. At the minute when I run the Distributed.net client (which I stopped just before I started this email), my load average jumps to 1.00 (+/- 0.10). From this figure I understand that my CPU is being fully used, as anything lower than 1.00 indicates a percentage when multiplied by 100- i.e. 0.20 load average is 20% of CPU utilization. (correct me if I'm wrong! :-S )

This seems reasonable, since 'dnetc' (Distributed.net Client) only runs when the CPU is idle. When the CPU is idle, 'dnetc' gobbles all of the idle cycles. The problem/confusion arises when I start doing something else 'intensive'. Just for fun, we can say I run a second 'dnetc' client. Now in theory, because the client are eating the 'spare' cycles, the load average should remain at 1.00+/-; both applications taking about half (0.50) of the idle cycles between them. In actuality, the load average jumps to 2.00+/- so the processor is sharing its full attention between two applications. With 'n' similar applications we can watch the load average jump to 'n' high.

Now lets throw priorities in to the mix. If I set the the priority to +20, then the applications should run when nothing else is running, and if something else decides to run, then the application should "Shut up a minute, I'm working!", but this isn't the case, the load average just keeps climbing irrespective of priorities.

Is the 'dnetc' application a bad, irresponsible, CPU hating application, or is it "Just doing my job Ma'am"?

I've tried monitor other applications for this type of activity but 'top' grabs the most cycles itself and it doesn't update fast enough to view applications 'flitting' up the priority/load-induced ladder.

Any light on this matter would be great, and links to resource where I can learn more (so you can type less) are much appreciated. :-) Thanks for your time,

G

--
  Gavin Laking
 
  1:34pm  up 20:07,  3 users,  load average: 0.08, 0.85, 0.88

  http://www.gavinlaking.co.uk/
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
