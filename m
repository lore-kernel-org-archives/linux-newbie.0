From: sean@tcob1.net
Subject: Re: Maildrop doesn't filter or log filters
Date: 1 May 2003 08:09:02 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <n2m-g.428061.a14921@tcob1.net>
Reply-To: sean@tcob1.net
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 26.04.2003 09:19:10, Chris Rose wrote:

 CR> Here's how i have things:  I'm using postfix as a local MTA, and it's
 CR> calling maildrop with
 CR> mailbox_command = /usr/bin/maildrop
 CR>
 CR> I have only one user that receives mail on my system, and that user
 CR> account has/d a ~/.mailfilter file.  The problem is, whenever that file
 CR> exists, no mail whatsoever makes it into my Maildir.  I've tested this -
 CR> i send a message to myself, and i receive nothing as long as there's a
 CR> mailfilter file existing.  As soon as i rename it, i'm fine.
 CR>

What are the permissions on the .mailfilter file, they must be 0600. I had
problems like this and this caused problems similar

Sean

--
I Didn't Climb to the Top of the Food Chain to Be a Vegetarian.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
