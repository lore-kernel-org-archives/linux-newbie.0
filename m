From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Make Linux bootdisk
Date: Sat, 5 Oct 2002 08:08:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02100508081801.00234@unix.pa3gcu>
References: <20021004162638.55122.qmail@web13409.mail.yahoo.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021004162638.55122.qmail@web13409.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Abhijit Vijay <abhijit_v@yahoo.com>, Linux Newbie <linux-newbie@vger.kernel.org>

On Friday 04 October 2002 16:26, Abhijit Vijay wrote:
> Hi All,
>
> Could anyone please tell me how to make a linux
> bootdisk? Is it true that a linux bootdisk made for
> one computer cannot be used to boot another linux
> machine?

Ray explained in great detail, however to expand on what he said about 
booting other computers, the created bootdisk will only boot another machine 
to start with if it has the same root partition, for example /dev/hda3 would 
be the root partition, if another machine has /dev/hda2 as it root partition 
then it would boot the other machine as is, you would need to use 'rdev' to 
change the boot params of the disk.

'man rdev' and 'rdev -h' will help you more.

Then as Ray said the machines would need to be somewhat the same.


>
> Regards,
> Thanks in Advance,
> Abhijit.
>

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
