From: Dennis Schridde <lindevel@gmx.net>
Subject: Problems with modules after installing Kernel 2.5.75
Date: Sun, 14 Sep 2003 23:14:32 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309142314.35140.lindevel@gmx.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Description: clearsigned data
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi List!
I have some Problems with module-symbols...

I hav compiled linux-2.5.75 without Problems
Then I copied arch/i386/boot/bzImage to /boot/vmlinuz-2.5.75 and System.map to 
/boot/System.map-2.5.75

When I now restart my System with this Kernel, I get following "error"-message 
in /var/log/boot.msg:
####################################
Inspecting /boot/System.map-2.5.75
Loaded 26091 symbols from /boot/System.map-2.5.75.
Symbols match kernel version 2.5.75.
No module symbols loaded - kernel modules not enabled.

[... ]

modprobe: FATAL: Module char_major_4 not found.
####################################
The modprobe error appears many times...

I edited the modules.conf in the way it is described on 
http://www.dhaller.de/linux/multikernel.html
(It's german, but hope you understand it anyway)

I think I put the files at the wrong places...
Can you help me?

Thanks,
Dennis Schridde

I am using SuSE 8.2
on AMD Athlon 2000+
ASUS A7N8X (nVidia nForce2)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
