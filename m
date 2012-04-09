From: "Prashant Batra (prbatra)" <prbatra@cisco.com>
Subject: rcu_sched_state detected stall, no stack trace
Date: Mon, 9 Apr 2012 17:58:36 +0530
Message-ID: <B97B134FACB2024DB45F524AB0A7B7F206881ED5@XMB-BGL-419.cisco.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=prbatra@cisco.com; l=588; q=dns/txt;
  s=iport; t=1333974520; x=1335184120;
  h=mime-version:content-transfer-encoding:subject:date:
   message-id:from:to;
  bh=hwk9cL4MBxidVPFAFI0y253FfOX9WuR9tNgAR+dyFlw=;
  b=H5IWv8Qm6d1rmxTNIo11KX5XcnUT9gdhC42F+odMe3nAPccCjHp69GAg
   TiP/oPbV0gXmxVHzPaWWFrocXYJ7cC28iBfbfbZsk9YS+XxM61Nr6uf1q
   q4CET46nQn2yW9zfI5KmmkLWgGRkiV/q2ul9zz25We+pm0zh4800QN2DC
   s=;
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I am running vanilla kernel 3.0.23 . I am trying to add some 6K and more
IPv6 IPSec tunnels.
I am getting these warnings in dmesg close to 6k tunnels, after which
the kernel hangs and have to reboot the kernel.

[ 1511.045261] INFO: rcu_sched_state detected stall on CPU 4 (t=300000
jiffies)
[ 1534.736899] INFO: rcu_bh_state detected stalls on CPUs/tasks: { 4}
(detected by 13, t=300002 jiffies)

I am not getting any back-trace also, to figure out what is actually
causing the stall to happen.

Could someone help to figure out the issue.

Regards,
Prashant
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
