From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 12:45:01 +0545
Message-ID: <652016d3041121230031fe6094@mail.gmail.com>
References: <1101104772.4527.7.camel@myLinux>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101104772.4527.7.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 22 Nov 2004 11:56:12 +0530, Jagadeesh Bhaskar P
<jbhaskar@hclinsys.com> wrote:
> Hi,
> 
> I wrote a the small program, to c how signals can be caught by
> customized routines.
> 
> /*********** start of code ********/
> 
> #include <stdio.h>
> #include <signal.h>
> 
> void fe(void){
>        printf("floating pt exception:\n");
> }
> 
> int main(void){
>        signal(SIGFPE, (void *)fe);
>        printf("%f\n", (1/0));
>        return 0;
> }
> 
> /********** end of code *************/
> 
> It goes on catching the signal infinitely, and if i didnt do the
> customization of that signal handling, it comes only once and then
> exits.
> 
> What is the reason? Isnt it supposed to generate a signal once per
> event?
> 
> Someone please do reply,
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

According to the history of UNIX, signal caught by signal function is
unreliable. You need to reload handler on each signal.
ie,
 void fe(void){
    printf("floating pt exception:\n");
signal(SIGFPE, (void *)fe);
}

It is a good idea to use sigaction(). It is a reliable function doing
the same thing .
see man sigaction

Regards manish
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
