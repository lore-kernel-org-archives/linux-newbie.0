From: Ajith Adapa <adapa.ajith@gmail.com>
Subject: Regarding spin_lock_bh
Date: Tue, 5 Mar 2013 21:00:10 +0530
Message-ID: <CADAe=+Ku9kOdBYY7WQin16AdrS3WvKq17g6U0Kkk6+8SSu29iw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=uzgJ29DSuWXUzIDBRuawOuzIk5JYAaAe6uLpKTO/1iQ=;
        b=fuiEH7RN+4a3rmOfiEbgy/BSXUI065a/v+w+tIoSQewjoxNKWWrqOI7ye++ON+qzm6
         cDEWPRAjZQ8/k/AljNxj5rUltSZAWzPuvRyCcvPLMwAxVKudrUzb1IPC7KidlJYqqJFt
         EunZJSwL4zlLXdqrGi9jlKqh24yd6KQlNiPVCZ4J/hR9hPqDqX4lATTpFVki3epUmVWu
         kmYAGKJl/9bbwwYAtqOMir3cH+RHfv232CLUTORJr5xw0+iiSpvVrLnOD5HwN/7Ocm1C
         0ick9OSw+xZzOP156XN2Nqvcy3cAINlPuggM8pDaMBVaXGM5f6spiw1MwrTiPhmtgDeV
         HUyA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I am trying to learn Bottom halves and I have a doubt regarding usage
of spin_lock_bh. what exactly is the need for it can't we use
spin_lock ??

For E.G. in net/bridge/br_ioctl.c we use spin_lock_bh to do operations
like get and set. Can't we use spin_lock in this case ?

Regards,
Ajith
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
