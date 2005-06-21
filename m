From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Peculiar problem mounting a harddrive
Date: Tue, 21 Jun 2005 14:39:25 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0506211436310.622-100000@hestia>
References: <4EE0CBA31942E547B99B3D4BFAB348115AB462@mail.esn.co.in>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB348115AB462@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 21 Jun 2005, Mukund JB. wrote:

> Dear all,
> 
> I have a peculiar problem mounting a hard drive on the mount point
> "/mnt/LinuxH1".
> 
> I have edited the /etc/fstab at as follows:-
> 
> 	Dev/hdb1	/home/LinuxH1	auto	defaults	0 0

You made some typo's... `Dev/hdb1' should be: `/dev/hdb1' . Just like you
are listing below in your message. That's why prob. the below works and
the previous not.

> But, I am able to mount the device with the mount command as follows
> 
> 	mount /dev/hdb1 /home/LinuxH1
> 
> Can someone suggest me what cont be the problem? Why am I not able to
> mount the device at mount time using the fstab entry?
> 
> Regards,
> Mukund Jampala

If that didn't solve it, put some error messages that occur in your next
message.

Cheers..

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
