From: Haines Brown <brownh@hartford-hwp.com>
Subject: old fetchmail problem resurrected
Date: Thu, 17 Oct 2002 18:10:52 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210172210.g9HMAqC11249@hartford-hwp.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@hartford-hwp.com

I had a problem before with fetchmail hanging, and after deleting the
first message from the server, I get the problem back. 

After the mail server reports the number of messages waiting and the
size of each, I get the following. The fist line here reports the size
of the last (15th) file on the mail server:

...
fetchmail: POP3< 15 4539
fetchmail: POP3< .
fetchmail: POP3> TOP 1 99999999
fetchmail: POP3< +OK 5004 octets
reading message 1 of 15 (5004 octets)
About to rewrite Return-Path: <linux-newbie-owner@vger.kernel.org>
Rewritten version is Return-Path: <linux-newbie-owner@vger.kernel.org>

About to rewrite From: 	"Paul Kraus" <pkraus@pelsupply.com>
Rewritten version is From: 	"Paul Kraus" <pkraus@pelsupply.com>

About to rewrite To: 	"'Ray Olszewski'" <ray@comarre.com>, <linux-newbie@vger.kernel.org>
Rewritten version is To: 	"'Ray Olszewski'" <ray@comarre.com>, <linux-newbie@vger.kernel.org>

About to rewrite Sender: 	linux-newbie-owner@vger.kernel.org
Rewritten version is Sender: 	linux-newbie-owner@vger.kernel.org

fetchmail: SMTP< 220 hartford-hwp.com ESMTP Sendmail 8.11.6/8.11.6; Thu, 17 Oct 2002 17:37:39 -0400
fetchmail: SMTP> EHLO localhost
fetchmail: SMTP< 250-hartford-hwp.com Hello hartford-hwp.com [127.0.0.1], pleased to meet you
fetchmail: SMTP< 250-ENHANCEDSTATUSCODES
fetchmail: SMTP< 250-8BITMIME
fetchmail: SMTP< 250-SIZE
fetchmail: SMTP< 250-DSN
fetchmail: SMTP< 250-ONEX
fetchmail: SMTP< 250-ETRN
fetchmail: SMTP< 250-XUSR
fetchmail: SMTP< 250-AUTH GSSAPI
fetchmail: SMTP< 250 HELP
fetchmail: forwarding to localhost
fetchmail: SMTP> MAIL FROM:<linux-newbie-owner@vger.kernel.org> BODY=7BIT SIZE=5004
fetchmail: SMTP< 250 2.1.0 <linux-newbie-owner@vger.kernel.org>... Sender ok
fetchmail: SMTP> RCPT TO:<brownh@localhost>
fetchmail: SMTP< 250 2.1.5 <brownh@localhost>... Recipient ok
fetchmail: SMTP> DATA
fetchmail: SMTP< 354 Enter mail, end with "." on a line by itself
#*************************.************************.**************************.*******fetchmail: SMTP>. (EOM)
fetchmail: SMTP< 250 2.0.0 g9HLbdO11116 Message accepted for delivery
 flushed
fetchmail: POP3> DELE 1
fetchmail: socket error while fetching from pop.registeredsite.com
fetchmail: Query status=2 (SOCKET)
fetchmail: SMTP> QUIT
fetchmail: SMTP< 221 2.0.0 hartford-hwp.com closing connection
fetchmail: Deleting fetchids file.
fetchmail: normal termination, status 2
fetchmail: Deleting fetchids file.
You have new mail in /var/spool/mail/brownh

The first gets download ok, but only after a few minutes
delay. However, the problem terminates the connection befor the file
is flushed, and so it remains on the server. I'm running RH 7.3. I can
visit the server with Mozilla, read, save and delete message, but that
has no effect on fetchmail.

My questions:

The second line reported above returns a ".", which I guess is the
current folder (my e-mail folder on the server). Later on there's an
ENTER command that seems to write a "." Is all this proper and normal?

After the server and host shake hands, the download of the first
message (only) takes place. Why the perodic "." in the series of
asterisks? This never happened  before. What could it mean? 

The DELE 1 command fails, and it is immediately followed by a socket
error. Is that an error at a socket at the server end in that
fetchmail is not being allowed to flush? 

I should add that shortly before, gnus ceased to function because it
entered into a loop. I've been working on that over a week with no
luck. 

Haines Brown
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
