From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: problems with dmesg
Date: Fri, 13 Dec 2002 07:11:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02121307113502.00388@unix.pa3gcu>
References: <200212120015.51006.r4mz3z@yahoo.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212120015.51006.r4mz3z@yahoo.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: r4mz3z <r4mz3z@yahoo.es>, linux-newbie@vger.kernel.org

On Thursday 12 December 2002 00:15, r4mz3z wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Hi friends..
>   I'm using RedHat 7.3 and when I try to run "dmesg" receive this message:
>
>  no more MTRRs available
> mtrr: no more MTRRs available
> mtrr: no more MTRRs available

You have processor problems, i think you can change the MTRR settings in 
/proc/mtrr

The above is caused by memory type registers in/for your processor, depending 
on which video card you use and whats running under X can make a lot of 
differance.

Read /usr/src/linux/Documentation/Configure.help grep for MTRR for an 
explanation on what MTRR is/does and then read mtrr.txt (same dir) on howto 
change the settings.

 
>
>   thanks 4 your help
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
