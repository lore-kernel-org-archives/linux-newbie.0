From: "M. Ghaeini" <mohammad@cerberian.com>
Subject: APIC problem on kernel Kernel 2.4.18
Date: Fri, 10 Oct 2003 11:56:08 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3F86F2B8.2080308@cerberian.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello,

I am running RedHat 7.3 with the SMP kernel 2.4.18 on IBM-x360 hardware,
with 6GB memory and 2x1.6GHz Xeon CPUs.  This server panic-ed with the
following message:

   mp-bios bug: 8254 time not connected to io-apic
   Kernel panic io-apic + timer doesn't work pester mingo@redhat.com

I also found these message:

   WARNING: MP table in the EBDA can be UNSAFE, contact
linux-smp@vger.kernel.org if you experience SMP problems!
 


   WARNING: unexpected IO-APIC, please mail to linux-smp@vger.kernel.org

in the syslog.

Has anyone else seen these messages?  Is there a patch for this problem?

Thanks in advance.

-Ghaeini



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
