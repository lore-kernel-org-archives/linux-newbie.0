From: qwms-avib@dea.spamcon.org
Subject: Re: Create files with specific sizes?
Date: Tue, 14 Dec 2004 22:12:18 +1300
Message-ID: <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
References: <41BEA9C4.4050700@lol.ba>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41BEA9C4.4050700@lol.ba>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: dlqf-ed4s@dea.spamcon.org
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

Khan wrote:
>
> is there any way (some command) that will allow me to 
> create blank files with specific sizes, eg 1MB, 5MB, 10MB etc.

dd if=/dev/zero of=file1 bs=1k count=1024
dd if=/dev/zero of=file2 bs=1k count=5120
dd if=/dev/zero of=file3 bs=1k count=10240

-rw-r--r-- 1 steven  users   1048576 Dec 14 22:09 file1
-rw-r--r-- 1 steven  users   5242880 Dec 14 22:09 file2
-rw-r--r-- 1 steven  users  10485760 Dec 14 22:09 file3

Cheers,
Steven

____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
