From: Robert Hancock <hancockr@shaw.ca>
Subject: Re: Generic Disk Driver in Linux
Date: Thu, 24 Aug 2006 18:12:00 -0600
Message-ID: <44EE4050.7020608@shaw.ca>
References: <fa.RkJMFmeAVY9kZAODCPJ1Yc8Vtww@ifi.uio.no>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1030440AbWHYANw@vger.kernel.org>
In-reply-to: <fa.RkJMFmeAVY9kZAODCPJ1Yc8Vtww@ifi.uio.no>
Sender: linux-kernel-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vget.kernel.org

Daniel Rodrick wrote:
> Hi List,
> 
> I was curious that can we develop a generic disk driver that could
> handle all the kinds of hard drives - IDE, SCSI, RAID et al?
> 
> I thought we could use the BIOS interrupt 13H for this purpose, but
> ran into a LOT of real mode / protected mode issues.
> 
> Any other ideas?

Aside from the real/protected mode issues (which are pretty much a 
show-stopper right there), the performance would be horrible. Usually 
the Interrupt 13 code on especially the more advanced controllers like 
hardware RAID, etc. is designed solely to function, with little 
attention to speed, and the performance tends to be horrible - look at 
versions of Ghost that run into DOS and look how long it takes to image 
a drive connected to an IBM ServeRAID controller..

-- 
Robert Hancock      Saskatoon, SK, Canada
To email, remove "nospam" from hancockr@nospamshaw.ca
Home Page: http://www.roberthancock.com/
