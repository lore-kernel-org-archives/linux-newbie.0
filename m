From: Bryan Whitehead <driver@jpl.nasa.gov>
Subject: Re: devfs + PCI serial card = no extra serial ports
Date: Fri, 07 Mar 2003 16:59:04 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E694058.50101@jpl.nasa.gov>
References: <11E89240C407D311958800A0C9ACF7D1A33DD5@EXCHANGE>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ed Vance <EdV@macrolink.com>
Cc: 'Theodore Ts'o' <tytso@mit.edu>, linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

Quick question: What PCI serial port add on card works with devfs in 
kernel 2.4.19 out of the box? No pissing around?

While I'm messing around with the one I got (that doesn't work) I need 
one that does... any suggestions??

Thanks to all for the help!!

Ed Vance wrote:
> On Fri, Mar 07, 2003 at 3:39 PM, Theodore Ts'o wrote:
> 
>>On Fri, Mar 07, 2003 at 02:51:45PM -0800, Bryan Whitehead wrote:
>>
>>>It seems devfsd has an annoying "feature". I bought a PCI 
>>>card to get a couple (2) more serial ports. The kernel doesn't 
>>>seem to set up the serial ports at boot, so devfs never 
>>>creates an entry. However, post boot, since there is no 
>>>entries, I cannot configure the serial ports with setserial. 
>>>So basically devfsd = no PCI based serial add on?
>>
>>Yep.  This I pointed this out as a flaw to devfs a long, long time
>>(years!) ago, but Richard chose not to listen to me.  Personally, I
>>solve this (and other) problems by simply refusing to use devfs.
> 
> 
> Ted,
> 
> Will Bryan get the proper devfs entries if he patches serial.c to 
> recognize his card at kernel initialization, or is there more 
> weirdness expected? 
> 
> Best regards,
> Ed
> 
> ---------------------------------------------------------------- 
> Ed Vance              edv (at) macrolink (dot) com
> Macrolink, Inc.       1500 N. Kellogg Dr  Anaheim, CA  92807
> ----------------------------------------------------------------
> -
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/


-- 
Bryan Whitehead
SysAdmin - JPL - Interferometry Systems and Technology
Phone: 818 354 2903
driver@jpl.nasa.gov

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
