From: sannikov <sannikov@cs.karelia.ru>
Subject: Re: what is the fs type of root filesystem =?UTF-8?Q?=3F?=
Date: Tue, 12 Feb 2013 11:51:15 +0400
Message-ID: <130950179aaa0cd1356dd6984d87ab47@cs.karelia.ru>
References: <20130211063823.GA5824@debian.localdomain>
 <20130211162903.GW71256@thebe.jupiter.sigsegv.be>
 <20130211212638.GA2433@debian.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20130211212638.GA2433@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: horseriver <horserivers@gmail.com>
Cc: linux-newbie@vger.kernel.org

Kristof, bootloader read memory image from boot partition
(usually it is  same partition to root) and initiate work of kernel=20
from that image.
After that kernel can work with any FS built-in in it's image.
So your root file system will by any of supported by kernel,
and your boot file system should be supported by bootloader.

If you use one for boot and root - you should choose FS from=20
intersection of that sets.

You can read more there:=20
http://www.ibm.com/developerworks/linux/library/l-linuxboot/index.html

WBR, Alexander

horseriver =D0=BF=D0=B8=D1=81=D0=B0=D0=BB 2013-02-12 01:26:
> On Mon, Feb 11, 2013 at 05:29:03PM +0100, Kristof Provost wrote:
>> On 2013-02-11 14:38:23 (+0800), horseriver <horserivers@gmail.com>=20
>> wrote:
>> >   root fs is ext3 or ext4 ?
>> >
>> That depends on what the installer chose. The kernel doesn't
>> require the root to use any specific file system.
>
>   thanks!
>   You mean a root filesystem will be installed on the harddisk when I
> install kernel on it ?
>
>>
>> Regards,
>> Kristof
>>
> --
> To unsubscribe from this list: send the line "unsubscribe=20
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
