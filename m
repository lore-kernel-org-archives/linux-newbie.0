From: qwms-avib@dea.spamcon.org
Subject: Re: Create files with specific sizes?
Date: Wed, 15 Dec 2004 08:20:29 +1300
Message-ID: <20041215082029.347d1afa.qwms-avib@dea.spamcon.org>
References: <41BEA9C4.4050700@lol.ba>
	<20041214221218.0f825cf4.qwms-avib@dea.spamcon.org>
	<cpmcg0$3e1$1@sea.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <cpmcg0$3e1$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: g3fr-jc21@dea.spamcon.org
Cc: hpfx-0ctl@dea.spamcon.org, Linux-Newbie <linux-newbie@vger.kernel.org>

SVisor wrote:
>
> >>is there any way (some command) that will allow me to 
> >>create blank files with specific sizes, eg 1MB, 5MB, 10MB etc.
> ...
> > dd if=/dev/zero of=file1 bs=1k count=1024
> 
> I wanted a file of garbage, not zeroes.

Just pick a sufficiently large file or device 
for your input stream.  For example:

dd if=/dev/hda of=file1 bs=1k count=1024

Cheers,
Steven

____________________________
http://www.basiclinux.com.ru
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
