From: Halil Demirezen <halil@debian-tr.org>
Subject: Re: About the parameter problem.
Date: Mon, 21 Apr 2003 12:24:55 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030421092455.GA19325@storm.armateknik.com.tr>
References: <20030419145916.GA26759@storm.armateknik.com.tr> <20030419151319.M97304@bilmuh.ege.edu.tr> <20030419150940.GA11042@storm.armateknik.com.tr> <20030419152004.M79232@bilmuh.ege.edu.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030419152004.M79232@bilmuh.ege.edu.tr>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kasim Sinan Yildirim <yildirim@bilmuh.ege.edu.tr>
Cc: linux-newbie@vger.kernel.org

thanx i solved the problem 
using 


ld -Ttext 0x10000 -s --oformat binary -o kern zeugma.o
             /\
	     ||
	problem is lack of 0x10000.
	i had used 0x0 istead..

everything works well..



On Sat, Apr 19, 2003 at 05:20:04PM +0200, Kasim Sinan Yildirim wrote:
>  Hi Halil!
>  I have inspected your code. I think there is smt wrong with linking. Your 
>  code seems true.
>  Bye!
> > On Sat, 19 Apr 2003 17:59:16 +0300, Halil Demirezen wrote
> > > Hi i wrote a simple boot and kernel code that is supposed to do some 
> > > simple work. however i cannot print something to the video buffer 
> > > using print function written in 
> > > C. i am sending the source code attached. and all compilation and 
> > > linking info are in the Makefiles. Can you help me with what i did wrong.
> > 
> > 
> > 
> > 
> > 
> >
> ------- End of Forwarded Message -------
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
