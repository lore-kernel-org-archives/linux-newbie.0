From: dariusz ostolski <dariusz.ostolski@gmail.com>
Subject: Reading network connections for processes in a separate net
 namespaces (/proc/[pid]/net/tcp|tcp6)
Date: Tue, 19 Jan 2016 13:14:43 +0100
Message-ID: <CAMCRRyt0XeHG7UhVV7jJ2LK5z571Xeu=oRXFr=oFiThQiykGZA@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=3SK+mSiRF+Kqc0lYG9jeh8EZTD8M3gOs+9YcPXGNNhc=;
        b=Tnp0IB4lTNx2H5uUMxY1kh+7jfnncPaA/CWecYGkr4GS1ELZnxdGs0LSGWo15rMbkV
         hwpnpxsgXyZAZxJ8ZVCo0uxYCmFCKhyfSKdU+dZE8CYQTg10fS90ohaHbKDLUWQczunt
         WeyQEW6xKNcjFti1VbL+rUvLLjIh1K8lr2uIrJPNtH4sQb3ZonSIy4kg/jADKp/Q3F+M
         98HmhxyQHomPviK3Z6WpzcE5f62Wa4z+w3MQwhd9c8+WRQDCM7m9rZwiGLetVAI4mbqy
         t4cugIxw1heAE1Er1VQJPTcGqm+DHAbmmK8pqT3KvE0aJkr34yt+aRO+koU1p54spWOb
         81Ag==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

First let me introduce myself, my name is Darek Ostolski, I'm computer
enthusiast and hobbyst (also a developer).
Second if this is incorrect mailing list excuse me and please point to
the appropriate mailing list. but I couldn't find any other more
appropriate place to ask my question.

I have a process that is in the separate net namespace(basically a
container) and I want to check opened connections for that process. I
have a kernel 4.3.3.
My experiments showed that this information is available in
/proc/[pid]/net/tcp|tcp6 files. For example for a global
/proc/net/tcp6 shows following opened ports:

root@gdn127620d2:~# cat /proc/net/tcp6
  sl  local_address                         remote_address
           st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout
inode
   0: 00000000000000000000000000000000:01BD
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 22882 1 ffff88040de7b240 100 0 0 10 0
   1: 00000000000000000000000000000000:008B
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 22883 1 ffff88040de7a9c0 100 0 0 10 0
   2: 00000000000000000000000000000000:0050
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 1214363 1 ffff880077ed9340 100 0 0 10 0
   3: 00000000000000000000000000000000:0016
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 21933 1 ffff880400a33140 100 0 0 10 0
   4: 00000000000000000000000000000000:445C
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000  1000        0 29904 1 ffff880400a32040 100 0 0 10 0

And for a process running in container I have:
root@gdn127620d2:~# cat /proc/30518/net/tcp6
  sl  local_address                         remote_address
           st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout
inode
   0: 0000000000000000FFFF00000100007F:1F45
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 1211206 1 ffff880364fcb380 100 0 0 10 0
   1: 00000000000000000000000000000000:1F49
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 1215425 1 ffff8802befd0200 100 0 0 10 0
   2: 00000000000000000000000000000000:1F90
00000000000000000000000000000000:0000 0A 00000000:00000000 00:00000000
00000000     0        0 1215421 1 ffff880077ed8240 100 0 0 10 0


So I see that there are opened ports that are not visible on host
level but are visible at a container level.


I'd like to ask following questions:
1. Where can I find documentation for /proc/[pid]/net/tcp|tcp6 files?
All I could find was documentation about global file(i.e.
/proc/net/tcp|tcp6) and there is no information about network
namespaces at all.
2. Could You confirm that in these files I'll see all connections that
are specific for a given process even if this process is in separate
network namespace? (so I dont have to enter target net/pid namespace
to read their global /proc/net/tcp|tcp6 files)
3. I've grep kernel source code and tried to find where
/proc/[pid]/net/tcp|tcp6 files are created but I couldn't (I've found
functions for global files, maybe they are the same). I'd like to
check when these files where introduced (from what kernel version they
are available) and if I can confirm my findings directly from kernel
sources (that I'll see connections from separate net namespace without
actually entering that namespace).

Thank You in advance for your help.

-- 
Regards,
Darek
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
