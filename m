From: John Aspinall <jgaspinall@rcn.com>
Subject: correlating module names and config options
Date: Wed, 15 Oct 2003 21:36:17 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F8DF611.5010708@rcn.com>
References: <5.1.0.14.1.20030919151403.01f82f78@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030919151403.01f82f78@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I'm building my first kernels from sources, and I'm comparing the result 
with the kernel as shipped with typical major distro.  The 
"distro-kernel" is loaded with every possible option built as a module. 
  (Not at all surprising, since they need to install on all kinds of 
hardware.)  But this brings up the following question:

I run lsmod in my distro-kernel to find the modules I actually need on 
this particular hardware.  But how do I establish the relationship 
between the module name, and the configuration option I should choose 
when doing 'make config' or 'make xconfig'?  The correspondence is not 
always obvious.

John

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
