From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: Re: Accessing memory with /dev/port
Date: Mon, 4 Oct 2004 06:29:26 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041004052926.79727.qmail@web52903.mail.yahoo.com>
References: <35fb2e5904100219381fe06db9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <35fb2e5904100219381fe06db9@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: jonathan@jonmasters.org

hi
 
-- Jon Masters <jonmasters@gmail.com> wrote: 
> On Sun, 3 Oct 2004 01:17:22 +0900, aq
> <aquynh@gmail.com> wrote:
> 
> > I heard that it is possible to modify the kernel
> memory via some
> > special devices like /dev/mem, /dev/kmem,
> /dev/port and /dev/kcore.
> > There are some papers about that techniques
> concerning /dev/mem and
> > /dev/kmem, but I cannot find any information
> explaining how to do that
> > (access and modify the memory of kernel) with
> /dev/port and
> > /dev/kcore.
> > 
> > Anybody knows about these methods, please tell me?
> 
> The best thing to do is to consult the documentation
> for mmap and then

can u tell some place where i can go look for this
mmap. i had seen some places but the concepts are
theoretical. how to do things are nto told much

> experiment with mapping these devices and making
> changes to the mapped
> memory (make sure you perform any accesses to device
> memory using
> volatile keywords in your pointer declarations).
> However I'd be really
> very concerned if you want to actually modify kernel
> memory this way.

well i would like to see if the kernel memory can be
increased or in some way i can understand these
concepts(do u know any document or link)
> 
> The best way to send information to or from the
> kernel is to use a
> file in /proc and use conventional read/write file
> operations upon it.
> The is the way we do things in UNIX.

i want to know what is this file used for /proc/kcore

> 
> Having said that, there can be times when mapping
> the raw memory is
> useful - if for example you want to display the
> contents of various
> bits of kernel data structures. I'm mulling the idea
> of writing a GUI
> tool to visualise bits of kernel data graphically -
> I'm not bothered
> by keeping it all in sync and up to date, just a
> view. I bet it's been
> done.
> 

well my system is having all this
128 Mb Ram and redhat linux 9.0 kernel 2.4

now i see even on system with 512 Mb RAM the most of
the ram is occupied by GUI or xserver around 90% of
memory

there is no way to reduce this load? i want to tune it
for better performance and i also want GUI

thanks

Ankit

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
