From: chuck gelm <chuck@gelm.net>
Subject: Re: No init found
Date: Fri, 29 Oct 2004 07:39:49 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41822C05.6090703@gelm.net>
References: <20041029065819.2178A44BBB@heisspf>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041029065819.2178A44BBB@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:

>Hi,
>
>Slackware 10.
>
>I am trying to change my hard drive. I duly copied all partitions and 
>files to the new drive with 'tar -C "$1" -cOl . | tar -C "$2" -xpf - '. Now 
>when I boot I get:
>
>....
>Freeing unused kernel memory: 120 K freed.
>Warning unable to open an initial console.
>Kernel panic: no init found. Try passing init= option to kernel.
>
>When I boot using the rescue disk after
>
>....
>Freeing unused kernel memory: 120 K freed.
>
>it continues with
>INIT: version 2.84 booting ...
>
>to fully boot and I can use the installation flawlessly.
>
>init is at /sbin/init.
>
>Where is the hang-up ?
>
>Thanks & regards 
>
Looks like Jim is on the correct item; lilo.conf.

Here is an except from a web page containing a hint at your error message:
from: http://linux.omnipotent.net/article.php?article_id=12464
<snip>


    Kernel will not Boot

You have created a new Custom Linux Kernel, made an entry in 
/etc/lilo.conf and then rebooted the computer system. But, your new 
Kernel won't boot, and instead you get:

|Warning: unable to open an initial console Kernel panic: no init found. 
Try passing init= option to kernel |

The most likely problem is that you didn't set the "root=" parameter in 
/etc/lilo.conf properly. For example, on my system, I have 
root=/dev/hdc5, which is sets the root partition: "/". The Kernel looks 
for the init command is located in /sbin/init and the /sbin directory 
resides on /. Thus, when the / is not set correctly, the Kernel cannot 
initiate the init process, and as a result we get a "Kernel panic".
<end snip>

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
