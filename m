From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: USB Flash/Jump Drives-Linux??
Date: Sat, 29 Jan 2005 13:40:13 -0500
Message-ID: <41FBD88D.4010009@cwazy.co.uk>
References: <5.1.0.14.1.20050129075916.02be0cc0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050129075916.02be0cc0@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org, haltec@kvinet.com

Ray Olszewski wrote:
> At 09:03 AM 1/29/2005 -0500, Hal MacArgle wrote:
> 
> 
>> Greetings: Running Slackware 9.0 and 9.1; kernels 2.4.20 or 2.4.22,
>> bare.i installation, I've experienced good support for all USB
>> devices except Flash Drives.
>>
>> First one bought was a Link-Max UL-641 that, plugged in, was
>> immediately accessible by the kernel with no configuring by me..
>>
>> Later attempts with other brands, no such luck.. As I look at the
>> retail boxes not a single one mentions Linux, so was wondering what
>> others have discovered.. It's no fun buying then returning just to
>> see what works or doesn't... <grin>
>>
>> Most of the comments on the Web seem to indicate this is not a
>> problem but I've found otherwise.. One vendor, Kingston, said flat
>> out that Linux is not supported by their devices..
>>
>> Best and TIA.
> 
> 
> 
> I've only used one of these drives, a Lexar 256 MB JunpDrive Secure. 
> Since I compile my own kernels, I did have to recompile (2.4.21, I 
> think), turning on several USB options and SCSI (the standard way to 
> access USB drives uses SCSI emulation), but then had no difficulty on my 
> own systems ... and a couple of embedded Linux systems, using their 
> manufacturers' stock kernels, also accessed the drive with no difficulty.
> 

I have also had good success with my Lexar 128MB JumpDrive.  Just tested my 
brother's PNY Attache 128MB with a 2.6.10 kernel - works fine as well.

You may want to try a 2.6 kernel - Fedora core 3 or Slackware 10.  A lot of USB 
stuff has been merged into 2.6.

Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
