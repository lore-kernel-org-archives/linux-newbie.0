From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: running prog on start up
Date: Wed, 18 Sep 2002 11:47:55 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0209181147550F.03392@unix.pa3gcu>
References: <F29WEEREhKlIKQcFWqX00008337@hotmail.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F29WEEREhKlIKQcFWqX00008337@hotmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: a a <xlsd@hotmail.com>, linux-newbie@vger.kernel.org

On Wednesday 18 September 2002 06:14, a a wrote:
> Hello,
> I've written a program in c and want to run it as soon as BasicLinux boots
> up...
> the program is in /cr09 and i run the program using ./serialport
>
> is there a startup stript that i can edit? what will i need to change?
>
> thanks again
>

I have no knowlage of Basiclinux, however most all distro's have a file 
called rc.local which is mostly located under /etc/rc.d
That file is the last file to be called in the boot chian, so thats the place 
to place commands to start local stuff.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
