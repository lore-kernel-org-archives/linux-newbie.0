From: Khan <nbv.sa@lol.ba>
Subject: Re: Create files with specific sizes?
Date: Tue, 14 Dec 2004 10:24:42 +0100
Message-ID: <41BEB15A.9070607@lol.ba>
References: <41BEA9C4.4050700@lol.ba>
 <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

qwms-avib@dea.spamcon.org wrote:
> Khan wrote:
> 
>>is there any way (some command) that will allow me to 
>>create blank files with specific sizes, eg 1MB, 5MB, 10MB etc.
> 
> 
> dd if=/dev/zero of=file1 bs=1k count=1024
> dd if=/dev/zero of=file2 bs=1k count=5120
> dd if=/dev/zero of=file3 bs=1k count=10240
> 
> -rw-r--r-- 1 steven  users   1048576 Dec 14 22:09 file1
> -rw-r--r-- 1 steven  users   5242880 Dec 14 22:09 file2
> -rw-r--r-- 1 steven  users  10485760 Dec 14 22:09 file3

TNX!


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
