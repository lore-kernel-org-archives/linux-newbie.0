From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: howto configuring kernel and modules.conf for automatic loading of ide-scsi
Date: Mon, 26 Jan 2004 20:41:41 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401262041.41932.pa3gcu@zeelandnet.nl>
References: <20040125041110.22704715.agri@desnol.ru> <Pine.LNX.4.58.0401252359410.9280@ppg_penguin> <20040126124651.5c1aa170.agri@desnol.ru>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040126124651.5c1aa170.agri@desnol.ru>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Agri <agri@desnol.ru>, linux-newbie@vger.kernel.org

On Monday 26 January 2004 10:46, Agri wrote:
> Oh.... i did everything as you say many times before...
> i get success only this time.
> i have done a little investigation...
> there is no need of
>   pre-install sg modprobe ide-scsi # load ide-scsi before sg
>   pre-install sr_mod modprobe ide-scsi
> moreover these lines breaks loading after "rmmod -a"
> lines from logs:

I think you need to go back to "start" which means, no i will ask, just what 
do you want to do and just what do you have;?

I mean, what sort of cdrom, is it a writer.? or simply just a cdrom device.?
There are many ways under linux of killing the cat, you have been given, 
AFAIK, 3 different examples, all of which should work, however they may not 
work for you because we have to fill in the gaps in the info you provided.

In other words tell me/us what type of cdrom you have, your installed distro 
its version and its kernel, i belive you mentioned 2.4.23-rc1 (BAD) never 
experiment trying to do something you possably never have done before on a 
kernel you built yourself, (unless you know what you are doing of course).
Use the kernel from your distro, i can assure you it has ALL you need.

On top of all that send us the commands used and thier corrisponding error 
messages when there is a problem. 

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
