From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: filtering .mp3 packets
Date: Wed, 27 Apr 2005 18:57:03 -0400
Message-ID: <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>
References: <Pine.LNX.4.21.0504272136300.1172-100000@hestia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I don't know mp3 format, but surely they all have a header that is
identifiable?  I mean where they store information about the mp3 such as
speed and title and such.  Surely you could id an mp3 from that information.
and terminate the stream.


----- Original Message ----- 
From: "J." <mailing-lists@xs4all.nl>
To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, April 27, 2005 3:51 PM
Subject: Re: filtering .mp3 packets


> On Wed, 27 Apr 2005, simon wrote:
> > hello Bill
> >
> > >>We've been having some difficulty finding the vocabulary to describe
> > >>filtering content (for example .mp3 files) over TCP-IP. We would like
to
> > >>set up our Linux server to do some "trapping" of packets containing
.mp3
> > >>files with an eye toward using Linux enabled routing to clean our
campus
> > >>of an overwhelming dose of music downloads and trading. To do this
> > >>exploration, I need to know what I should call the process I'm trying
to
> > >>perform. Any vocabulary that you can suggest?
> > >>
> > >>Bill Stanard
> >
> > may be you can write a kernel module using the netfilter to perform
that...
> > netfilter is a very powerful way to build every kind of filter.
> > you can find some informations here :
> > http://www.ouah.org/p61-0x0d_Hacking_the_Linux_Kernel_Network_Stack.txt
> >
> > regards
> >
> > simon
> Wednesday, April 27 21:36:30
>
> Problem is not catching the actual TCP packets, but classifying them like:
> This TCP packet is 100% sure, a packet that contains a piece of mp3 data .
>
> Try to encode a mp3 file, split it into very tiny chunks, remove all but
> one, and see if you can guess if it's a mp3 file..
>
> There is also encryption to deal with, terrible implemented TCP stacks in
> cheap modems and routers when trying to reassemble a whole stream,
> disecting, guessing different protocols and levels.. It's definitively
> a challenge so to speak..
>
> J.
>
> -- 
> Don't worry Ma'am. We're university students, - we know what we're doing.
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
