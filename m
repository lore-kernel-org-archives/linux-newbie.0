From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 16:45:33 +0530
Message-ID: <4b0d6e0d04112203153a163031@mail.gmail.com>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux> <1101111876.5382.8.camel@myLinux>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101111876.5382.8.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: Manish Regmi <regmi.manish@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>

The basic mistake is that the variable values have not changed.
1/0 will generate a FPE no matter what you do.
use variables like a=0;b=1;
and if b/a generates an FPE,
change its value.(bit hazy how to implement this... google around)
the reason for giving you a signal handler
is obviously to help you correct the error,
not commit it over and over again!

reagrds,

Joy.M.Monteiro

PS: Such questions will be better answered on linux-cprogramming list....
try it.



On Mon, 22 Nov 2004 13:54:36 +0530, Jagadeesh Bhaskar P
<jbhaskar@hclinsys.com> wrote:
> Hi Manish,
> 
>   As suggested, I rewrote the C program using sigaction, as follows:
> 
> /****** start of code **********/
> 
> #include <stdio.h>
> #include <signal.h>
> 
> void fe(int x){
>         printf("floating pt exception:\n");
> }
> 
> int main(void){
>         struct sigaction p;
>         p.sa_handler = fe;
>         sigaction(SIGFPE, &p, NULL);
>         printf("%f\n", (1/0));
>         return 0;
> }
> 
> /********* end of code *******/
> 
> But then again the signal is being caught by the program infinitely. Why
> is that happening, if last time it was a problem with the signal()
> function.
> 
> Please do help!!
> 
> 
> 
> --
> With regards,
> 
> Jagadeesh Bhaskar P
> R&D Engineer
> HCL Infosystems Ltd
> Pondicherry
> INDIA
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
people always turn away,
from the eyes of a stranger...
Afraid to know
what lies behind the stare.......
    --QueensRyche
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
