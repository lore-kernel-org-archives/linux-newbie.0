From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 06:40:22 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0210240640220D.00497@unix.pa3gcu>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet> <0210232036180A.00497@unix.pa3gcu> <1035409896.31480.33.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035409896.31480.33.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, pa3gcu@zeelandnet.nl
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 23 October 2002 21:51, Bryan Simmons wrote:
> Perhaps dma wasn't the problem.  Here's the output when I execute hdparm
> on /dev/hdc (my CD-RW):
>
> /dev/hdc:
>  HDIO_GET_MULTCOUNT failed: Input/output error
>  IO_support   =  1 (32-bit)
>  unmaskirq    =  1 (on)
>  using_dma    =  1 (on)
>  keepsettings =  0 (off)
>  readonly     =  0 (off)
>  BLKRAGET failed: Input/output error
>  HDIO_GETGEO failed: Invalid argument
>
> When I try to retrieve the read-ahead setting: hdparm -a /dev/hdc I get:
>
> /dev/hdc:
>  BLKRAGET failed: Input/output error

There are some settings which do not apply to cdroms, one of which is 
BLRAGET, the other shown above is geometry settings of which a cdrom has not, 
so that will fail as well.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
