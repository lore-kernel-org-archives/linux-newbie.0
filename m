From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Samba issues
Date: Mon, 17 Mar 2003 13:44:34 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0303171342320.26190-100000@router.windsormachine.com>
References: <20030317180721.70272.qmail@web13403.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030317180721.70272.qmail@web13403.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 17 Mar 2003, Abhijit Vijay wrote:

> Hi All,
>
> I came to know from some of my labmates who did a
> performance test, that Linux Samba access is
> *significantly* slower (order of three times) than
> Windows SMB. Is there any reason why this could be tru
> and can this problem be fixed at all?

If anything, I'd report the opposite.  I've seen pentium 200's on Linux
walk all over high end P4's.

Perhaps the Linux system has port 445 firewalled off, and the W2k server
is attempting to connect to that and then timing out?

Please publish these test results, as I suspect there are major
differences between the two test beds.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
