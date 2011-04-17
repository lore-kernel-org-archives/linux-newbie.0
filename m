From: Zhongye Jia <jia.zhongye@gmail.com>
Subject: Re: /proc/kallsyms
Date: Sun, 17 Apr 2011 16:10:52 +0800
Message-ID: <BANLkTimwoFRsKYOEJ64UeD3W7py1jTdsqw@mail.gmail.com>
References: <BANLkTimgRBVi4xovbGSS1E7a7ArFAsSsAg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type:content-transfer-encoding;
        bh=08NVvIBCs6IUW4lD6CdgXsU3Og4SQlQfQkDpeshfiPE=;
        b=p+tYMQMZ7ytvhunDOJ1u7eO0znsjHnoj5nq1ksWmLvoJXy7sqy2Otqh2bzo/xhJo7F
         59z45bXhQWF1QuquWxI4ZY88jkSOI0xOqpy2EDo9HhHhceXmhssI736vwh2xE5rvHF+K
         scmjt43asRtcAy1R6RPXQmwijvjPGWjFWzFjs=
In-Reply-To: <BANLkTimgRBVi4xovbGSS1E7a7ArFAsSsAg@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
Cc: linux-newbie@vger.kernel.org

please man nm, it will tell you:

The symbol type. At least the following types are used; others are, as
well, depending on the object file format. If lowercase, the symbol is
local; if uppercase, the symbol is global (external).

    A
        The symbol's value is absolute, and will not be changed by
further linking.
    B
        The symbol is in the uninitialized data section (known as BSS).
    C
        The symbol is common. Common symbols are uninitialized data.
When linking, multiple common symbols may appear with the same name.
If the symbol is defined anywhere, the common symbols are treated as
undefined references.
    D
        The symbol is in the initialized data section.
    G
        The symbol is in an initialized data section for small
objects. Some object file formats permit more efficient access to
small data objects, such as a global int variable as opposed to a
large global array.
    I
        The symbol is an indirect reference to another symbol. This is
a GNU extension to the a.out object file format which is rarely used.
    N
        The symbol is a debugging symbol.
    R
        The symbol is in a read only data section.
    S
        The symbol is in an uninitialized data section for small object=
s.
    T
        The symbol is in the text (code) section.
    U
        The symbol is undefined.
    V
        The symbol is a weak object. When a weak defined symbol is
linked with a normal defined symbol, the normal defined symbol is used
with no error. When a weak undefined symbol is linked and the symbol
is not defined, the value of the weak symbol becomes zero with no
error.
    W
        The symbol is a weak symbol that has not been specifically
tagged as a weak object symbol. When a weak defined symbol is linked
with a normal defined symbol, the normal defined symbol is used with
no error. When a weak undefined symbol is linked and the symbol is not
defined, the value of the weak symbol becomes zero with no error.
    -
        The symbol is a stabs symbol in an a.out object file. In this
case, the next values printed are the stabs other field, the stabs
desc field, and the stab type. Stabs symbols are used to hold
debugging information.
    ?
        The symbol type is unknown, or object file format specific.




On Sun, Apr 17, 2011 at 2:39 PM, ratheesh kannoth
<ratheesh.ksz@gmail.com> wrote:
> cat /proc/kallsyms shows below output. Wat is the second column
> represents. I could see- D, d, t, T, r etc on the second coumn.
>
>
>
> 0000000000004000 D per_cpu__gdt_page
> 0000000000005000 d per_cpu__exception_stacks
> 000000000000b000 d per_cpu__idt_desc
> 000000000000b010 d per_cpu__xen_cr0_value
> 000000000000b018 D per_cpu__xen_vcpu
> 000000000000b020 D per_cpu__xen_vcpu_info
> 000000000000b060 d per_cpu__mc_buffer
>
> ffffffff81866397 t init_trace_printk
> ffffffff8186eb4b T printk_all_partitions
> ffffffff818bdbd8 t __setup_str_setup_early_printk
> ffffffff818f0c00 t __setup_setup_early_printk
> ffffffff818f1800 t __initcall_init_trace_printkearly
> ffffffff818f1bd8 t __initcall_init_trace_printk_function_export5
> ffffffff81992fc0 b printk_buf
> ffffffffa01955a0 r __ksymtab_v4l_printk_ioctl =A0 [videodev]
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
