From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: Query on SIGFPE handling
Date: Mon, 22 Nov 2004 15:04:43 +0545
Message-ID: <652016d30411220119f24be7@mail.gmail.com>
References: <1101104772.4527.7.camel@myLinux>
	 <652016d3041121230031fe6094@mail.gmail.com>
	 <1101107755.4527.18.camel@myLinux> <1101111876.5382.8.camel@myLinux>
	 <01ca01c4d071$5b35f080$121aa8c0@ascindia.com>
	 <1101114324.5382.42.camel@myLinux>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1101114324.5382.42.camel@myLinux>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jagadeesh Bhaskar P <jbhaskar@hclinsys.com>
Cc: linux-newbie@vger.kernel.org

> How can I generate and send a signal from a function of mine? Is it
> possible from a userlevel C program, using some functions like
> signal()??
> 
> Please do help
> --
> With regards,
> 
> Jagadeesh Bhaskar P
> 
yes,
see man kill, raise

regards manish


-- 
Manish Regmi
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
