From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 12:45:55 +0530
Message-ID: <1101107755.4527.18.camel@myLinux>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <652016d3041121230031fe6094@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manish Regmi <regmi.manish@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>


On Mon, 2004-11-22 at 12:30, Manish Regmi wrote:
>  
> > /*********** start of code ********/
> > 
> > #include <stdio.h>
> > #include <signal.h>
> > 
> > void fe(void){
> >        printf("floating pt exception:\n");
> > }
> > 
> > int main(void){
> >        signal(SIGFPE, (void *)fe);
> >        printf("%f\n", (1/0));
> >        return 0;
> > }
> > 
> > /********** end of code *************/
> > 
> According to the history of UNIX, signal caught by signal function is
> unreliable. You need to reload handler on each signal.
> ie,
>  void fe(void){
>     printf("floating pt exception:\n");
> signal(SIGFPE, (void *)fe);
> }
I changed the code like above. But no change came. Is this caused by the
signal being generated many times, or is it just the problem with the
signal() function?
> 
> It is a good idea to use sigaction(). It is a reliable function doing
> the same thing .
> see man sigaction
Im seeing into that also
-- 
With regards,

Jagadeesh Bhaskar P

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
