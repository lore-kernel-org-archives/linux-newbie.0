From: Eric <eric@cisu.net>
Subject: Re: opening a port without root permission
Date: Tue, 29 Jun 2004 21:34:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406292134.49415.eric@cisu.net>
References: <16a3a73169e674.169e67416a3a73@homemail.nyu.edu>
Reply-To: eric@cisu.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <16a3a73169e674.169e67416a3a73@homemail.nyu.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Anshuman Singh Rawat <asr245@nyu.edu>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

On Tuesday 29 June 2004 08:20 pm, Anshuman Singh Rawat wrote:
> Hi,
> Is there any way one can open a port, in my specific case - the ARP port,
> so that I could do an Arping without a root access ?
>
> Or is there any way the root could give permission to a user to open a port
> ?
>
> Or does anyone know a way by which I can extract the MAC address of a
> remote machine in a different subnet, where I do not have to be a
> super-user?
>
> Any pointers would be greatly appreciated.
> Thanks.

sudo

This program will allow root to give normal users "root" access to specified 
programs with or without a password.

To see if its already installed do 

"man sudo"
or
"visudo" 


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
