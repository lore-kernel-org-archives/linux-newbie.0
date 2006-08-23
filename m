From: Josef Sipek <jsipek@fsl.cs.sunysb.edu>
Subject: Re: Reading the GDT in kernel space?
Date: Wed, 23 Aug 2006 11:29:59 -0400
Message-ID: <20060823152959.GA28873@filer.fsl.cs.sunysb.edu>
References: <b115cb5f0608230709n3a896e12mcd78f9688fd8010e@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <b115cb5f0608230709n3a896e12mcd78f9688fd8010e@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

On Wed, Aug 23, 2006 at 07:39:22PM +0530, Rajat Jain wrote:
> Hi,
> 
> I'm trying to read & display the GDT contents in kernel space. Is this
> permissible? I used the "sgdt" assembly instruction to load the GDT
> register, and found out the address & length of GDT from that (It is
> "0000c248") . Is this the physical or the virtual address?

I quickly looked at the Intel Instruction Set Reference for SGDT, and it
says that the stored value is 6 bytes long.

"The 16-bit limit field of the register is stored in the low 2 bytes of the
memory location and the 32-bit base address is stored in the high 4 bytes."

0xc248xxxx looks like a valid address, so my guess is that you are off by 2
bytes :)

Hope this helps,

Josef "Jeff" Sipek.

-- 
Once you have their hardware. Never give it back.
(The First Rule of Hardware Acquisition)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
