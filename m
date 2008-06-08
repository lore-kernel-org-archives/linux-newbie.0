From: RuoMu Hu <huruomu@gmail.com>
Subject: Create proc entry under /proc/sys/kernel
Date: Sun, 08 Jun 2008 17:28:36 +0800
Message-ID: <484BA644.4040205@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:subject:content-type
         :content-transfer-encoding;
        bh=0bu88opd0nO8jQvmKwPMir0Uf8LafDQMCKiBuo99EIw=;
        b=S76swBRA6LbDyrsoYCm+3CFMR1aLHkVvuLY2thODAY+J/j8whhGrGpfEjXHu9S1ku8
         fPxWhrEdu2lWo3zWFkfadlfk/yn5iRcQjqet7DDoG9zNVLgzNoir6YXR0Fb1+T7pXrSV
         Ntu84ZEiXWp4X1VlTEN4B9j85VQdubRRodcUE=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi!

Is it possible to create a proc entry under /proc/sys/kernel directly by
create_proc_read_entry in the way shown below?

test_pde = create_proc_read_entry("/proc/sys/kernel/test", 0, NULL,
                                    test_read_proc, NULL);
if (test_pde == NULL) {
    printk(KERN_ERR "Failed to create the test proc file.\n");
    return -ENOMEM;
}

I'm using this in my kernel module but create_proc_read_entry always
returns fail, while there's no problem creating proc entries directly
under /proc.  The kernel source I'm building my kernel module against is
2.6.25.4.

Any idea?


Thanks
Romu

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
