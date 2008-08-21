From: Rene Herman <rene.herman@keyaccess.nl>
Subject: Re: PCI interrupt queries
Date: Thu, 21 Aug 2008 13:10:52 +0200
Message-ID: <48AD4D3C.3010703@keyaccess.nl>
References: <C86899CCB10A6C4E93D5978DCB232D4B091A399F@GDCMX01.igglobal.com> <48AB2E3C.2070600@keyaccess.nl> <C86899CCB10A6C4E93D5978DCB232D4B091A43F9@GDCMX01.igglobal.com> <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1CADFA951940554D86FBD8B24BBFF3A001E7390E@LONMLVEM08.e2k.ad.ge.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Welch, Martyn (GE EntSol, Intelligent Platforms)" <martyn.welch@gefanuc.com>
Cc: Rajat Jain <Rajat.Jain@infogain.com>, kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On 21-08-08 11:31, Welch, Martyn (GE EntSol, Intelligent Platforms) wrote:

> Rajat Jain wrote:

>> OK. But who does it in an embedded environment (PPC for eg) where 
>> there is no POST software. The first piece of code that gets
>> executed is U-boot and then the kernel. So who writes the LINE
>> value into the config space?
> 
> U-boot does. There is a fairly standardised way to connect PCI interrupt
> lines, especially for PCI slots where various cards can be plugged in:

How peculiar, a boot loader doing hardware programming...

Rene.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
