From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: permission for alias file
Date: Tue, 7 Jan 2003 14:39:40 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301071939.h07JdeWi008146@hartford-hwp.com>
References: <5.1.1.6.0.20030107110951.01e9a090@pop3.demon.co.uk>
 <200301061652.h06GqwTo000410@hartford-hwp.com>
 <5.1.1.6.0.20030107110951.01e9a090@pop3.demon.co.uk> <5.1.1.6.0.20030107172131.01ee16a8@pop3.demon.co.uk>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.1.6.0.20030107172131.01ee16a8@pop3.demon.co.uk> (message
	from Carl on Tue, 07 Jan 2003 17:24:28 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org

Carl,

Aha, that may be it! I simply migrated the aliases directory and files
up to the upgraded environment without worrying about their ownership
and permissions.


> I spoke to my mate and we put his lists in a dir /etc/mail/lists with owner and group of root
> and permissions of 755 and the files themselves are again root owner/group with 777 permissions

If I understand you correctly here, the "mail" directory is owned by
root/root and has a 755 permission, while the *.aliases files it
contains have 777 permissions. 

In the sendmail document on permissions, it says this is too liberal,
but the ownership of the directory and file might make a
difference. I'll make the change and test the result.

Thanks.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
