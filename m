From: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Subject: Re: not reading contents of cd-rom
Date: Sun, 8 Feb 2004 15:58:18 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200402081558.18273.wheds8@ms66.hinet.net>
References: <5.1.0.14.1.20040207231643.01f9a4a0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040207231643.01f9a4a0@celine>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



> Am I right in assuming that you meant to type /mnt/cdrom ?

Yes, my apologies...

I did this...
>          mount /dev/cdrom /mnt/cdrom

and got mount: you must specify the filesystem type.
>

>
> If this command does not fix the problem, then you probably need to check
> that the CD drive itself is working and is recognized by your kernel.
> Details require a description of your setup. But one quick check is to see
> if a CD ripper (like cdparanoia) can read the CD drive.
 
How do I check if the cd is recognized by the kernel? I am trying to install 
SourceMage so I must select all the hardware options for the kernel. 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
