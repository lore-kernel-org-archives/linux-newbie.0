From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: read-only file system
Date: Sat, 5 Oct 2002 07:52:54 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02100507525400.00234@unix.pa3gcu>
References: <F156rHAK6YwyLdnsODF00001cac@hotmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F156rHAK6YwyLdnsODF00001cac@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: a a <xlsd@hotmail.com>, linux-newbie@vger.kernel.org

On Saturday 05 October 2002 03:02, a a wrote:
> hello
> im trying to edit a file in /etc/rc.d but it says "Read-only file system"
> how do i change it to writeable?

Files in /etc/rc.d/ are owned by "root" so one would need to be root or have 
root permissions to edit one of those files.

>
> thanks
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
