From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: __KERNEL__ and __MODULE__
Date: Thu, 1 Feb 2007 12:04:12 +0530
Message-ID: <292693080701312234r206bbc8cxa93ee171b7e25ecb@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

I find a lot of code buried within #ifdefs for the following variables:

MODULE / __MODULE__
KERNEL / __KERNEL__

1) AFAIK, the MODULE / __MODULE__ is defined when my drievr is
selected to be compiled as a module, and the KERNEL / __KERNEL__ is
defined when is is selected to be built in the kernel image. Is this
right?

2) Why two variants ? KERNEL V/s __KERNEL__ and MODULE v/s __MODULE__?

3) Do I need to define these symbols in my Makefile myself or the
Kernel Makefiles / Kbuild does it for me?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
