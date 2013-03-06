From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: igb_down from bottom half context
Date: Wed, 6 Mar 2013 09:38:03 +0530
Message-ID: <CAGZFCEHrzDDtO8HGaUhuUb_vNddKyiXPzasnkvTqLOqS9SwaDw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <netdev-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:x-received:date:message-id:subject:from:to:cc
         :content-type;
        bh=zhEGc1SPaiciRA4Mf7uQAVvPXx0LGa2xgtWND+HHNKo=;
        b=KYZh1/gJDiJgNP2FRl26dZmq/tRr8yh9EtJtPjkwC/ZjBe5KuOSktEkJ5DJYKliOVC
         rB0lPplIUNSquEA+RKpb6eLP2mg5Hz3jq97eP6LA+1UEnOxsbM6VatDY0zVYpXkJlfEc
         7P/cykTS/l5rOpDImupcZGjDTYOkjlPItMJ3dWHhHESPnlqc5+FhJjXHxRjjI7Vd4kUx
         x1EnN5WJouBzYZ2/OIKD6Nv4ZLz4yo3Ba6J9SpIDp5Hh833yaoTEjC2pfMqRh+DjzPtJ
         ihnX04Syy6cwq2Udhj91XASg8yxGvBEO3pj8oOs67mRxUmwz1udrFI+02duMmmz7YKXY
         c3uw==
Sender: netdev-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: e1000-devel@lists.sourceforge.net, netdev@vger.kernel.org, linux-newbie <linux-newbie@vger.kernel.org>
Cc: Alexander Duyck <alexander.h.duyck@intel.com>

I  have kernel timer which  check for flag.

if(flag ) {
          igb_down(adapter);
 } else {
         igb_up(adapter);
 }


I could see a kernel crash; because  there are a lot of  msleep() in
igb_down function.

#define msleep(x)    do { set_current_state(TASK_UNINTERRUPTIBLE); \
                                schedule_timeout((x * HZ)/1000 + 2); \
                              } while (0)

sleep() is called from bottom half context; this is the cause of kernel crash.

1) Since timer call back dont have process context associated with it;
i think , "current" points to the last preempted task ?
2) How can i introduce delays in interrupt context to avoid the kernel
crash. mdelay()  will work ?
3) is there any better mechanism to do this job ?

Thanks,
Ratheesh
