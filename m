From: Carl <carl@anexia.co.uk>
Subject: Re: Mail
Date: Tue, 22 Oct 2002 16:42:59 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021022162717.0339c138@interzone.anexia.co.uk>
References: <005601c279dd$da9f1ff0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <005601c279dd$da9f1ff0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 11:15 22/10/2002 -0400, Paul Kraus wrote:
>I want to set up one of our servers as a mail server for internal mail
>and external mail. But I wont external mail forwarded to our real mail
>server which is hosted by a 3rd party. That part is easy. But I also
>want all incoming mail to filter through this server. Do I  need to run
>fetchmail to have it get the mail from our isp or is there a better way?
>
>Red Hat 7.3
>Qmail

mail collection from the isp will depend on the isp setup.

if your isp pushes an smtp feed at you when you login (assuming dial-up
connection/dynamic ip address) then just use the smtp server. otherwise
use fetchmail for pop3/imap etc...

if you are on an always on connection with static ip then you don't need the
isp at all except for dns and connectivity purposes.

fetchmail can be a little daunting for the newbie to start but when you get the
config file right it takes very little admin.

it is also worth noting that if your isp has seperate pop3 mailboxes for
all your users they can sometimes be convinced to move your feed to smtp
rather than pop3 to save them admin time at their end. some isp's charge
for smtp but when you point out that their "unlimited pop3 accounts" is really
going to be unlimited they might start to see sense.

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
