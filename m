From: Rene Herman <rene.herman@keyaccess.nl>
Subject: Re: Reading the GDT in kernel space?
Date: Mon, 28 Aug 2006 02:47:23 +0200
Message-ID: <44F23D1B.4020605@keyaccess.nl>
References: <b115cb5f0608230709n3a896e12mcd78f9688fd8010e@mail.gmail.com> <003001c6c758$e88c8310$26526c6b@sisodomain.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003001c6c758$e88c8310$26526c6b@sisodomain.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: mohanlal jangir <mohanlal@samsung.com>
Cc: Rajat Jain <rajat.noida.india@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

mohanlal jangir wrote:

>> I'm trying to read & display the GDT contents in kernel space. Is
>> this permissible?

Sure. Also note that sgdt is available from userspace even.

>> I used the "sgdt" assembly instruction to load the GDT register,
>> and found out the address & length of GDT from that (It is 
>> "0000c248") . Is this the physical or the virtual address?

SGDT gets you a kernel virtual address. That 0000c248 isn't though and 
it's incorrect. The problem you will be experiencing is that you haven't 
told GCC to pack the struct in which you put the result. If you declare:

struct gdtr {
         u16 limit;
         u32 base;
};

then gcc will align the 32-bit base field on a 32-bit boundary, meaning 
it will end up looking like:

struct gdtr {
         u16 limit;
	u16 padding
         u32 base;
};

SGDT then stores into the limit and padding and only the low 16-bits of 
base (your base is actually 0xc248xxxx). To avoid this, tell GCC to pack 
the struct:

struct gdtr {
         u16 limit;
         u32 base;
} __attribute__((packed));

Rene.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
