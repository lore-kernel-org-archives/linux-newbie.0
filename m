From: Jeffrey Cao <jcao.linux@gmail.com>
Subject: Re: Does cr3 register change when a new process is scheduled ?
Date: Sat, 25 Apr 2009 03:06:26 +0000 (UTC)
Message-ID: <gstunh$nq$1@ger.gmane.org>
References: <5f695cd0901141833i61be35eemc906f1c70ff9822b@mail.gmail.com>
 <804dabb00901141843k1ef231f7t11fe8d6f8befdf01@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 2009-01-15, Peter Teoh <htmldeveloper@gmail.com> wrote:
> yes, every process running will have a different CR3 value....easily
> seen when u printk() the value from different kernel module....and the
> kernel module is running in the same process context as the "insmod"
> that started the kernel module....so u can see the process name is
> "insmod" if u printk() the value of the process name.   ie, user +
Not exactly, module is not a process. It is just some functions registered
into the kernel space. You see the process name is "insmod" is because that
you put your printk statement in the module initialization function. You
execute insmod to call the initialization function, so the module's init
function is in "insmod" process context. If you execute other command to
call ioctl to the module, and then the module is executed in other process
context.

Jeffrey

> kernel mode all shared the same CR3 value, but different process will
> have different value.
>
> On Thu, Jan 15, 2009 at 10:33 AM, George Kumar <grgkumar4@gmail.com> wrote:
>> Let us suppose we are talking about a uni processor system. Do we
>> change cr3 page directory control register when a new process is
>> scheduled to run on the CPU.
>>
>> thanks.
>> George
>> --
>

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
