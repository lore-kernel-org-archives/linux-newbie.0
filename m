From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 14:04:11 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0210241404110I.00497@unix.pa3gcu>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet> <0210240640220D.00497@unix.pa3gcu> <1035455725.31480.71.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035455725.31480.71.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, pa3gcu@zeelandnet.nl
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Thursday 24 October 2002 10:35, Bryan Simmons wrote:
> OK, but doesn't a CD-ROM have a read-ahead setting?

Yes, but unfortunatly not when SCSI emu is used.
So if you use you cdr for both writing and reading then you could always use 
ide for reading and then scsi for writing, not very efficent but i see no 
other option at the present time.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
