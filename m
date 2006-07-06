From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: Is mb() required when writing to device using outb()?
Date: Thu, 6 Jul 2006 18:00:06 +0530
Message-ID: <292693080607060530n32c36da4jb48c312b146270a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi List,

Please note this dicussion in x86 specific. I was going through the
LDD book (Chap 9 on hardware communication), and I came across the
following code:

while (count++) {
    outb(*(ptr++), addr);
    wmb();
}

The above code writes "count" bytes to "addr" which is a IO port
mapped address (using request_region()).

Now AFAIK, there are 2 ways of communicating with the hardware:

1) Port mapped -> IO ports are mapped to a special IO address space
different than memory address space. This IO address space is accessed
using special processor instructions (via outb() etc)

2) Memory mapped -> IO ports are mapped to memory region (in the
memory address space only), accessed similar to normal memory.

Now, my question is that for the latter case (memory mapped), a wmb()
is needed after we write to the port because the system does not know
that that the address being written to is actually an IO port and thus
unwanted optimizations may come in.

But why is wmb() requied in former case (port mapped IO)? Since the IO
address space is accessed using special processor instructions and
hence the system already has all the means to understand that this
write is targeted at an IO port and not memory address. Hence the
system should be smart enough not to throw in any unwanted
optimizations.

What am I missing?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
