From: "Cristian CHIRILOV" <Cristian.Chirilov@ipsec.ro>
Subject: Re: Configuring mail\mailx to use an external smtp server.
Date: Wed, 9 Feb 2005 18:33:21 +0200
Message-ID: <002c01c50ec5$11dc3ec0$140319ac@atmos>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"; reply-type="original"
To: linux-newbie@vger.kernel.org

Hello,

I don't know for sure if it's possible to configure mail/mailx to use an
external SMTP server.

You can use nail instead.

ls -all /usr/bin/mail

lrwxrwxrwx    1 root     root            4 Jan  1  1996 /usr/bin/mail ->
nail*

man nail

smtp Normally, nail invokes sendmail(8) directly  to  transfer messages.
If the smtp variable is set, a SMTP connection  to the server specified
by the value of this variable is used instead. If the SMTP server does
not use the stan-dard port, a value of server:port can be given, with
port  as a name or as a number.

cat ~/.mailrc
set smtp=mail.example.com

bye.


From: "Adam" <adam@luchjenbroers.com>

To: <linux-newbie@vger.kernel.org>
Sent: Wednesday, February 09, 2005 7:21 AM
Subject: Configuring mail\mailx to use an external smtp server.

>
> I'm trying to configure either mail or mailx to use an external smtp
> server
> (using sendmail locally is not an option).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
