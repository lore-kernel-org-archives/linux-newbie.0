From: Ray Olszewski <ray@comarre.com>
Subject: Re: Make Linux bootdisk
Date: Fri, 04 Oct 2002 11:45:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021004114035.0257eec0@celine>
References: <B997C486.2F11%jimurl@montanaice.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021004162638.55122.qmail@web13409.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>, Linux Newbie <linux-newbie@vger.kernel.org>

At 09:26 AM 10/4/02 -0700, Abhijit Vijay wrote:
>Hi All,
>
>Could anyone please tell me how to make a linux
>bootdisk? Is it true that a linux bootdisk made for
>one computer cannot be used to boot another linux
>machine?


At the level of generality you ask, there is no simple answer, other than 
suggesting you read the Bootdisk HowTo (available at ibiblio.org, for 
example).

There are many types of bootdisks. Some (rescue disks like tomsrtbt, for 
example, or floppy-based distros like LEAF) are quite general and can boot 
on most any machine. Others, designed to boot a specific configuration on a 
particular machine, will work on a different machine only with luck (the 
two machines need not be identifal, but they need to be quite similar).

So ... read the HowTo for general advice. Repost here with more specific 
questions.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
