From: Ankit Jain <ankitjain1580@yahoo.com>
Subject: RE: Mutual Exclusion in Kernel
Date: Wed, 6 Oct 2004 06:50:17 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041006055017.42480.qmail@web52903.mail.yahoo.com>
References: <577528CFDFEFA643B3324B88812B57FE2D9B67@inhyms21.ca.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <577528CFDFEFA643B3324B88812B57FE2D9B67@inhyms21.ca.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Dhiman, Gaurav" <Gaurav.Dhiman@ca.com>
Cc: newbie <linux-newbie@vger.kernel.org>

hi

what is spin lock?

thanks

ankit 
--- "Dhiman, Gaurav" <Gaurav.Dhiman@ca.com> wrote: 
> 
> Use either semaphore or spin locks for mutual
> exclusion
> 
> Gaurav
> 
> 
> -----Original Message-----
> From: kernelnewbies-bounce@nl.linux.org
> [mailto:kernelnewbies-bounce@nl.linux.org] On Behalf
> Of Rakesh Jagota
> Sent: Wednesday, October 06, 2004 9:03 AM
> To: kernelnewbies
> Subject: Mutual Exclusion in Kernel
> 
> Hello All,
> 
> I have defined one array of structures in the kernel
> which can be seen
> by
> all the modules. Now I would like to have mutual
> exclusion , that is if
> any
> module is accessing the array ,no other module
> should not access the
> same
> array, since it is a global array.
> 
> Thanks in advance
> 
> Regards
> Rakesh
> 
> 
> --
> Kernelnewbies: Help each other learn about the Linux
> kernel.
> Archive:      
> http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 
> 
> 
> --
> Kernelnewbies: Help each other learn about the Linux
> kernel.
> Archive:      
> http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 
>  

________________________________________________________________________
Yahoo! Messenger - Communicate instantly..."Ping" 
your friends today! Download Messenger Now 
http://uk.messenger.yahoo.com/download/index.html
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
