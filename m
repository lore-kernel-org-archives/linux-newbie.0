From: Thomas Bettler <bettlert@student.ethz.ch>
Subject: module uhci-ucd and powermanagement
Date: Fri, 10 Dec 2004 19:22:42 +0100
Message-ID: <200412101922.42208.bettlert@student.ethz.ch>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello you all

The uhci-hcd module causes the cpu to work at highest frequecy
(according to x86info -mhz). If I unload it, cpu frequency dropps from full
(1.8GHz) to ~2/3 (1.1GHz). In both cases top shows 97% or even 99% idle.
modprobing it again speeds the cpu up again.

So module uhci-hcd prehibits the cpu clock from saving power on notebooks. (At 
least theese with P4-M cpus)

What code forces the cpu to run at high speed? Can I tweak the module to 
permit slower cpu speed?

Thomas Bettler
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
