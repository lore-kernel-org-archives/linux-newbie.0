From: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Subject: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 11:56:12 +0530
Message-ID: <1101104772.4527.7.camel@myLinux>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hi,

I wrote a the small program, to c how signals can be caught by
customized routines.

/*********** start of code ********/

#include <stdio.h>
#include <signal.h>

void fe(void){
	printf("floating pt exception:\n");
}

int main(void){
	signal(SIGFPE, (void *)fe);
	printf("%f\n", (1/0));
	return 0;
}

/********** end of code *************/

It goes on catching the signal infinitely, and if i didnt do the
customization of that signal handling, it comes only once and then
exits.

What is the reason? Isnt it supposed to generate a signal once per
event?

Someone please do reply,

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
