From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: maximum number of Unix98 pty's
Date: Thu, 15 May 2003 18:54:14 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03051518541401.11757@unix.pa3gcu>
References: <5.1.1.6.0.20030515134918.01f98c28@interzone.anexia.co.uk>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.1.6.0.20030515134918.01f98c28@interzone.anexia.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Carl <carl@anexia.co.uk>, linux-newbie list <linux-newbie@vger.kernel.org>

On Thursday 15 May 2003 12:55, Carl wrote:
> Hi All,
>
> Does anybody know how to find out what the limit of PTYs is when you don't
> have the source and config that the kernel was compiled with. I'd rather
> not have to login x hundred times to find out when it falls over as i have
> to do this a fair number of servers.

Hope i am correct here. 

ls -al /dev/pty* | wc -l

List all pty's in your /dev directory and get 'wc' to tell you how many lines 
it contains, one line is one pty in this case.

On another note 256 is the standard (default) number of pty's in all kernels, 
UNLESS you choose to change it when configuring your custom kernel.

>
> TIA
> Carl
> --

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
