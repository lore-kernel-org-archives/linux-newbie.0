From: Jiahao XU <jiahaoxu28th@gmail.com>
Subject: when is populate_rootfs called?
Date: Mon, 5 Apr 2021 00:11:51 +1000
Message-ID: <CALJHi=-VQubwLxjObVmJjAh7A6j0Tm9h028kWcCfbHMo1mCnuQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=DkikwK4hxLxcajfypE84DpC7ClGi/grO9mdhHc/iTno=;
        b=thcxfJB7GagfOV8VqWYbciEHPf3db6lJMWCmx35G0MEDw1PcdE0ANWhIOzUQqlUIb8
         uYX+37jYzuDnlH5HtIi4jdK74hH9j+4xc1/pToBlpcRvhpK/+GKc5T7nfZJ8xkzcMyT+
         pJkd6hdQsSELS3KCE2vscz/diCGcjyjtfTS/ZCtcjgupqgXrXFlybRZF9B54oJG2NAOr
         y22xXnjybauQfBKICbWMQCO0++IZYC/BQZb6Ss8D7TEJBaDus4jepvQ8afQzDBj7syVN
         e1op+1Jgr08iMKGyHv8hVIK2TOFECm2SfpIw8oO1zMlDGIHKwn+Sc6uOJqPRNdbgalNj
         A8ng==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi

I have read through
https://stackoverflow.com/questions/10540008/how-does-the-linux-kernel-determine-the-order-of-init-calls
and looked at the source code related to init, like `start_kernel`,
`kernel_init_mem`, `do_ido_initcall_levelnitcall_level` and
`offset_to_ptr`, but I am still totally confused at when is
`populate_rootfs` called.
