From: chuck gelm <chuck@gelm.net>
Subject: Re: What distributions support dual processors 'out of the box' ?
Date: Mon, 25 Oct 2004 23:59:55 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <417DCBBB.5030603@gelm.net>
References: <15DCB059E3814E448A1CFFF04F78F7A703917297@s99mail08>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15DCB059E3814E448A1CFFF04F78F7A703917297@s99mail08>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Little, Chris wrote:

>I don't know what the warning is, but a recompile and install of your kernel
>with SMP enabled should work fine.  The warning sounds as if the kernel that
>you build may not necessarily work or advisably be used on other non-pro
>systems (ie. III, IV, etc)
>
>-----Original Message-----
>From: chuck gelm [mailto:chuck@gelm.net]
>Sent: Monday, October 25, 2004 12:44 PM
>To: linux-newbie@vger.kernel.org
>Subject: What distributions support dual processors 'out of the box' ?
>
>
>Howdy:
>
> I am trying to use an old dual pentium-pro motherboard as a file
>server for a local government supported student project.
>
> The system has dual 200 MHz Pentium-Pro processors.
>I am currently attempting to enable SMP in a Slackware v9.1 distribution,
>but I am having some difficulty.  Instead, I am hoping to find
>a distribution with SMP already enabled.  Are there any?
>
> Please, may I have some explanation or discussion about the warning
>from 'make [old]config about the PentiumPro and SMP:
>
>'Similarly, multiprocessor kernels for the "PPro" architecture may not
>work on all Pentium based boards.'
>
> IOW, will my attempt to enable SMP with this PPro system
>probably fail or be very difficult?
>
>Regards, Chuck
>  
>
Howdy, Chris and Owen:

 I have twice re-compiled the kernel and yet
cat /proc/cpuinfo
displays only 'cpu0'.  :-(

(edit .config to enable SMP, make bzImage modules modules_install install)

 Elsewhere, someone suggested that I look to see if a
VRM (voltage regulator module) is installed on the motherboard.
I'll be returning to configure the system on Wednesday and I
will check to see if there seems to be any missing items.

Thanks, chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
