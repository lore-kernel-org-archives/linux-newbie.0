From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Reading the GDT in kernel space?
Date: Wed, 23 Aug 2006 19:39:22 +0530
Message-ID: <b115cb5f0608230709n3a896e12mcd78f9688fd8010e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I'm trying to read & display the GDT contents in kernel space. Is this
permissible? I used the "sgdt" assembly instruction to load the GDT
register, and found out the address & length of GDT from that (It is
"0000c248") . Is this the physical or the virtual address?

I'm now trying to print out the contents of GDT. I am able to print
this address. BUt the moment I try to deference it, the kernel OOPS. I
understand that this is because the address is not in kernel virtual
address space (3GB). I tried using "ioremap" but it always returns
NULL. Any ideas?

Thanks in Advance,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
