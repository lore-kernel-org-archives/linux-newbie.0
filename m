From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: setting my path
Date: Mon, 8 Sep 2003 22:02:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309082202.12314.pa3gcu@zeelandnet.nl>
References: <HBEJLOFMLEPBMAAEFNFDKEHGCBAA.azapata@du.edu> <200309082117.59502.pa3gcu@zeelandnet.nl> <001601c37648$fd593270$6e17a8c0@Wellwisher>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001601c37648$fd593270$6e17a8c0@Wellwisher>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Bort <333101@personal.net.py>, "Anna G. Zapata" <azapata@du.edu>, Linux-Newbie <linux-newbie@vger.kernel.org>

On Monday 08 September 2003 22:36, Alan Bort wrote:
> Anyway, in RedHat the ifconfig is in /sbin/ifconfig

Ah!, yes how correct you are, my mistake.

> If you want a certain user to have access to ifconfig, you should give the
> right permissions and then add to the .bashrc or .bash_profile the line:
> alias ifconfig="/sbin/ifconfig" and then log out and in again (so that the
> RC file will be run again. You can also run another shell /bin/sh. But
> logging out and back in is better.

HuH!!

1) No not at all, there is no need to give a user permissions to use ifconfig 
as he HAS permission to use it as is, what a normall user cannot do with 
ifconfig is up or down interfaces, a normal user can only see the details of 
ifconfig output, but giving a normall user permission to use ifconfig in its 
entirity you WILL comprimise your system to hackers, in otherwords you
open a closed door for them period.

2) A normall user can do the alias him/herself by using the following;
alias ifconfig='/sbin/ifconfig'

Thats it.. 

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
