From: "Peter H." <heisspf@skyinet.net>
Subject: No init found
Date: Fri, 29 Oct 2004 14:58:19 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041029065819.2178A44BBB@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.

I am trying to change my hard drive. I duly copied all partitions and 
files to the new drive with 'tar -C "$1" -cOl . | tar -C "$2" -xpf - '. Now 
when I boot I get:

....
Freeing unused kernel memory: 120 K freed.
Warning unable to open an initial console.
Kernel panic: no init found. Try passing init= option to kernel.

When I boot using the rescue disk after

....
Freeing unused kernel memory: 120 K freed.

it continues with
INIT: version 2.84 booting ...

to fully boot and I can use the installation flawlessly.

init is at /sbin/init.

Where is the hang-up ?

Thanks & regards 

-- 
Peter



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
