From: "Dr.Edgar Alwers" <edgaralwers@gmx.de>
Subject: Re: How to I print to a TCP/IP Port.
Date: Sat, 15 Jan 2005 11:37:35 +0100
Message-ID: <200501151137.35749.edgaralwers@gmx.de>
References: <20050112202320.M55098@celticblues.com> <200501142223.02445.edgaralwers@gmx.de> <20050114222158.M25348@celticblues.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050114222158.M25348@celticblues.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux <linux@celticblues.com>
Cc: Newbies-Linux <linux-newbie@vger.kernel.org>

On Friday 14 January 2005 23:21, you wrote:
> No objections at all....
>
> .... i just don't understand what to do
> yet.  I am REALLY new to linux so I am make very slow progress.  Thanks for
> your help.
>
> Ed

slow progress is better than none ;-)
Enter "localhost:631" administration and go through "printers" -> add printer. 
You will be asked for a description and a localtion - information data only - 
and for a device URI. This is the ip address of your remote printer. You also 
will probably have to choose the driver for your printer from the list of 
printers. Try in a shell "gs --help", this will show you the list of all 
printers suported by your software.

I would start trying to connect the printer to your box directly in the first 
approach, and later connecting the printer as a remote one. Is your remote 
printer a standalone device or is it connected to a server ? 

A very good start is the cups documentation in the "help" of the 
localhost:631.
Remember: try and error !
Good luck
BTW.: follow up through "newbies", not directly, as more persons may help you 
and others may also have a benefit from this emails.
Regards,
Edgar 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
