From: james niland <bareego@yahoo.com>
Subject: Re: Basic question on bootloader
Date: Sun, 1 Jun 2003 22:52:45 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030602055245.57850.qmail@web11410.mail.yahoo.com>
References: <36993D449C7FA647BF43568E0793AB3E059B25@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E059B25@nevis_pune_xchg.pune.nevisnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org



--- Girish Kale <girish.kale@nevisnetworks.com> wrote:
> Hi, 
> 
> I am new to Linux.... 
> We are developing a device on which we plan to run
> Linux. The device
> will use some processor like MIPs, PowerPC, etc. 
> What I want to know is : 
> 1) can the standard bootloader like LILO work with
> these devices also or
> do each device have their own bootloaders ? 
Bootloaders like LILO or GRUB are independent of the
kernel. The kernel determines what Processor can be
used and what File Systems accessed.

Linux supports a wide varieties of platforms so you
should be able to build a kernel for your device. Also
does linux support a big variety of file systems.

> 2) how do the applications get compiled in a linux
> environment. Do the
> apps get compiled when the linux gets compiled and
> how is it downloaded
> to the target board. 

After having an environment with the required tools
(eg a running linux distribution) the kernel and it's
modules are compiled. Applications can be compiled
statically (independant of libraries) or dynamically
(dependant on libraries). But it doesn't matter which
one gets compiled first as long as the program gets
all the right libraries to run.
Now uploading it to your device would depend on what
kind of storage you would use and what communicative
devices it'd have.

Lets say you'd use a laptop HDD as medium, you could
just hook it up to a normal PC, do all your compiling
on there and save it onto the HDD and then transfer
that onto your device. 

I am still a newbie myself, so it might be better to
read the official documentation on www.tldp.org
specifically
http://www.tldp.org/HOWTO/Kernel-HOWTO/index.html

cheers
James Niland


> 
> Regards, 
> Girish





__________________________________
Do you Yahoo!?
The New Yahoo! Search - Faster. Easier. Bingo.
http://search.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
