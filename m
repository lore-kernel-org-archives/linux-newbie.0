From: kernel kernel <unix.hacker@gmail.com>
Subject: Re: VM Vs Swap space
Date: Thu, 7 Oct 2004 11:31:42 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <104ee7a5041006230119fa84c2@mail.gmail.com>
References: <20041006085254.76571.qmail@web52908.mail.yahoo.com>
	 <4164A287.4050207@gelm.net>
Reply-To: kernel kernel <unix.hacker@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4164A287.4050207@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck@gelm.net
Cc: Ankit Jain <ankitjain1580@yahoo.com>, newbie <linux-newbie@vger.kernel.org>

swap area forms a part of the memory which is used for the memory
objects like the stack when executable
starts running. This anonymous segment will grow dependin upon the
pattern of the functions calls in ur executable

On Wed, 06 Oct 2004 21:57:27 -0400, chuck gelm <chuck@gelm.net> wrote:
> Ankit Jain wrote:
> 
> >hi
> >
> >if somebody can tell me that is this correct?
> >
> >(1)can i say that swap area created by linux is nothign
> >but virtual memory. (2)is it correct to use the term
> >interchangeably
> >
> >thanks
> >
> >ankit
> >
> >
> (1) A swap file or swap partition can be used as virtual memory.
> (2) I am not sure.  Why one would wish to use 'swap area'
> interchangeably with 'virtual memory'.
> :-|
> Chuck
> 
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
