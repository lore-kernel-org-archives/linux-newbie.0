From: Amin <amin@siriusbb.com>
Subject: Re: problem with Real Tek RTL-8139, SMC EZ Card
Date: Thu, 6 Nov 2003 23:39:49 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031106233949.1783f8f7.amin@siriusbb.com>
References: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20031106171124.64183.qmail@web80604.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Thu, 6 Nov 2003 09:11:24 -0800 (PST)
Ravi Kumar Munnangi <munnangi_ivar@yahoo.com> wrote:

> Hello,
>  
>   I have just now installed RedHat Linux 8.0 on my
> system. It has the Real Tek RTL-8139, SMC EZ Card.
>   
>  After ifup eth0, it gave the message,
> 
>  modprobe:Can't open dependencies file
> /lib/modules/2.2.14-5.0/modules.dep(No such file or
> directory)
> 
> 
> The same message appeared even at the time of booting.
>  
> Please help me come out of this problem!
> 
> Thanking you,
> Ravi Kumar

Do a

# /sbin/modprobe 8139too

to load the 8139too module for the card.  But first check (/sbin/lsmod) to see if it's already loaded or not.  Also, check the directory and the file mentioned (modules.dep).  Are they really there?  Are their permissions set correctly?

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
