From: Flavio Alberto Lopes Soares <flaviothunder@terra.com.br>
Subject: using arrays from user space
Date: Fri, 08 Feb 2008 01:06:57 -0200
Message-ID: <47ABC751.3090203@terra.com.br>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Kernel Newbie <linux-newbie@vger.kernel.org>

Hello all,
this is my very first message in this list, and I'm very, very newbie on 
linux kernel programming, I have a doubt, I need to modify a module to 
pass a great size array (about 600KB) in user space to kernel use-it, I 
think add more one IOCTL in his ioctl control of controled device 
passing the pointer as argument but I don't want to copy this array 
using copy_from_user() to kernel space because the size is too large, 
there's some way to convert the user-space array address to kernel-space 
address to use directly the original array ?


Thanks for all help

Flavio Alberto Lopes Soares
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
