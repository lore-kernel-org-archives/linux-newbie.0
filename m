From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: INFO REQ: Clarification of Memory Management
Date: Sat, 7 Dec 2002 12:58:36 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0212071255270.15712-100000@ppg_penguin>
References: <000101c29d67$f50ce310$670b3941@joe>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000101c29d67$f50ce310$670b3941@joe>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Joseph D. Wagner" <wagnerjd@prodigy.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Fri, 6 Dec 2002, Joseph D. Wagner wrote:

> I'm a little confused about the way the Linux kernel allocates memory, and
> I'm hoping someone could clarify this for me.
> 
> Does the __get_free_pages() function eventually call the kmalloc() function?
> Or does the kmalloc() function eventually call the __get_free_pages()
> function?  Or are these two totally separate functions for different
> purposes?
> 
> Which of these functions can be called by user process for the purpose of
> allocating memory for that user process?
>

 Unless *I'm* totally lost here (which is very possible) you are asking
about functions which are internal to the kernel and not for direct use
from userspace.

Ken
 
> TIA
> 
> Joseph Wagner
> 
> Flames will be directed to /dev/null
> 

-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
