From: Prashant Batra <prashant0100@gmail.com>
Subject: Workqueues and Worker thread name
Date: Mon, 4 Feb 2013 13:50:55 +0530
Message-ID: <CAG+XuE7a2NL8+uWqNxWOAB5tbi3bWhiqg=Lx_qakH=bpKdn95Q@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:x-received:date:message-id:subject:from:to
         :content-type;
        bh=zefWEs8ZHKMnMxGVScE0owzIbdRX7C5WwtjQOrHyfS0=;
        b=unNvR+GiOI4uXHspnAkLegsxFAs/Elf2e2+y6BlgqD/YrQpOpAi/okvwmTDWfZlLUg
         4h687D/4vHGzKu44J2ytnO6mcy6WGjq8JbPTZGa24L5PVfeHn/+TTg4P3g5ksFEJlP2t
         gkXcg3GVWnvPHQdRHP1LI2m++TwKSsFfA2Ij6aBiJQj+JX0G1OG3niYc8fcisefBW3bg
         4U8Eb6YB3UuCoEGWypyqioCinUA6fC+gms3a42TruIo4DymaOdfOUxKNRc7ldHxhi9Ig
         uFcUZBmMp70QJVfI4j3kdoYSt7xxS7LP5i/40xpVC2cGNTOIz5O5XC67ZLbXPWopxjcT
         smZQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I am a little new to this area, so seeking expert advice.

I have created "delayed works" using "INIT_DELAYED_WORK" for each core
on my system and a corresponding work_queues using
"create_freezable_workqueue".
Now what I have some work getting scheduled on this queues. What I
observe is that top command shows CPU being taken by kernel threads as
below-
 PID USER      PR  NI  VIRT  RES  SHR S %CPU %MEM    TIME+  #C WCHAN     COMMAND
101 root      20   0     0    0    0 R  9.6  0.0  63:16.29  6
worker_th [kworker/6:1]
  104 root      20   0     0    0    0 S  9.6  0.0  70:53.11  3
worker_th [kworker/3:1]
  105 root      20   0     0    0    0 S  9.6  0.0  84:45.37  2
worker_th [kworker/2:1]
 1451 root      20   0     0    0    0 S  9.6  0.0  67:25.71 14
worker_th [kworker/14:1]
 1452 root      20   0     0    0    0 S  9.6  0.0  62:55.86 13
worker_th [kworker/13:1]
 1453 root      20   0     0    0    0 S  9.6  0.0  67:43.90 12
worker_th [kworker/12:1]
  100 root      20   0     0    0    0 R  9.3  0.0  60:41.05  7
worker_th [kworker/7:1]
  103 root      20   0     0    0    0 S  9.3  0.0  62:39.62  4
worker_th [kworker/4:1]
 1450 root      20   0     0    0    0 S  9.3  0.0  59:29.10 15
worker_th [kworker/15:1]
13928 root      20   0     0    0    0 S  9.3  0.0   0:21.43  1
worker_th [kworker/1:1]
13933 root      20   0     0    0    0 S  9.3  0.0   0:14.36  0
worker_th [kworker/0:2]
   97 root      20   0     0    0    0 S  9.0  0.0  54:43.59 10
worker_th [kworker/10:1]
  102 root      20   0     0    0    0 S  9.0  0.0  61:08.43  5
worker_th [kworker/5:1]
   96 root      20   0     0    0    0 S  8.6  0.0  50:55.86 11
worker_th [kworker/11:1]


How, do I know if this is for the work that I have created and its
taking that much CPU. Also, while creating the work_queues I have a
name to them. How to relate that name here in top.

Any help will be highly appreciated.

Thanks,
Prashant
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
