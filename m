From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: permission for alias file
Date: Tue, 7 Jan 2003 10:31:13 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301071531.h07FVDxN006826@hartford-hwp.com>
References: <200301061652.h06GqwTo000410@hartford-hwp.com> <5.1.1.6.0.20030107110951.01e9a090@pop3.demon.co.uk>
Reply-To: brownh@hartford-hwp.com
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.1.6.0.20030107110951.01e9a090@pop3.demon.co.uk> (message
	from Carl on Tue, 07 Jan 2003 11:17:31 +0000)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: carl@anexia.co.uk
Cc: linux-newbie@vger.kernel.org

> I remember doing an :include: statement for a mate and we found that
> 777 permissions on the file were OK but the directory must be set
> correctly. I seem to remember it couldn't have root ownership.
> 
> Check the sendmail faq at:
> http://www.sendmail.org/faq/section3.html#3.33

Thanks, Carl. I took at look at the document and checked ownership and
permissions, but it looks like I'm ok.

I've an :include that points to ~/aliases/test.aliases, but I get the
following error when using it:

  Cannot open /home/brownh/aliases/test.aliases: Permission denied.

The alias directory is owned by brownh and is rwx------. The
test.aliases file is also owned by brownh and is rw-------. I believe
this satisfies the permission requirements defined in the document.

I have a vague sense that my problem arose when I upgraded
sendmail. At the same time I began to get messed up headers so that a
simple Reply to this message is sometimes sent to the invalid address
"localhost@hartford-hwp.com." 
 

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
