From: Bo Yang <struggleyb@gmail.com>
Subject: cannt open root device ?
Date: Fri, 31 Mar 2006 10:48:37 +0800
Message-ID: <442C9885.8000703@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello everybody :
I know maybe my question is just a piece of cake for you , but
I have struggled with it for 4 days , and I didn't get any answer from
the google and the archive .
So I came here !

And my problem is that :
I use VMware , and install gentoo linux on the vm which hold a scsi disk
. I compile the linux kernel with scsi support in the kernel self , but
when boot up the kernel panic with the bellow message :
VFS: Cannot open root device "803" or unkonw-block(8,3)
Please append a correct "root=" boot option

But I have a line in my lilo.conf : root=/dev/sda3

I have recompile the kernel for many times , but it panic everytime .

Thanks in advance !

Best Regard !




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
