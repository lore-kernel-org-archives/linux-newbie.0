From: Ray Olszewski <ray@comarre.com>
Subject: Re: Retrieving deleted files
Date: Wed, 07 Apr 2004 10:37:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040407103249.01efa4a8@celine>
References: <20040407163633.GE3523@panix.com> <GNEPLLCIIBHICCOGIAKPAEGGCJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPAEGGCJAA.eatley@wow-corp.com>
References: <20040407163633.GE3523@panix.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:51 PM 4/7/2004 -0400, Eve Atley wrote:

>We had a user leave our company recently, and he deleted a folder on the
>server that wasn't backing up. I know on Windows that, when you delete an
>item, you can use often use Norton Systemworks or Utilities to retrieve that
>file, as it doesn't securely delete.
>
>What can I use on Linux to retrieve a deleted object?

This question is actually a bit dependent on what filesystem the Linux host 
uses. For ext2, a couple of possibilities are (these are the Debian package 
names; your distro may differ a bit) "e2undel" and "recover".



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
