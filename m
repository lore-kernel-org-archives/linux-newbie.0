From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 13:54:36 +0530
Message-ID: <1101111876.5382.8.camel@myLinux>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101107755.4527.18.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manish Regmi <regmi.manish@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

Hi Manish,

  As suggested, I rewrote the C program using sigaction, as follows:

/****** start of code **********/

#include <stdio.h>
#include <signal.h>

void fe(int x){
	printf("floating pt exception:\n");
}

int main(void){
	struct sigaction p;
	p.sa_handler = fe;
	sigaction(SIGFPE, &p, NULL);
	printf("%f\n", (1/0));
	return 0;
}

/********* end of code *******/

But then again the signal is being caught by the program infinitely. Why
is that happening, if last time it was a problem with the signal()
function.

Please do help!!

-- 
With regards,

Jagadeesh Bhaskar P
R&D Engineer
HCL Infosystems Ltd
Pondicherry
INDIA

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
