From: "Peter H." <heisspf@skyinet.net>
Subject: Mail Filtering with Broadband
Date: Wed, 02 Mar 2005 16:27:27 +0800
Message-ID: <20050302082727.BAE3D20862@heisspf>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <12796.1109752047.1@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Problem solved. I still used the pid of pppd
which is obsolete now.

Hi,

I get my mail with getmail and I am using procmail for mail filtering and it 
has worked well with my dial-up modem connection. Now with the broadband 
connection it seems to miss some of the entries in .procmailrc such as:

:0 wc:${MAILDIR}/$LOCKEXT
* ^From:
* $^From:${GETTEXT}
#| echo $FOO >> ~/Frommail
| echo "From: ${MATCH}" >> ~/Frommail 


:0 wc:${MAILDIR}/$LOCKEXT
* ^Subject:
* $^Subject:${GETTEXT}
| echo "Subject: ${MATCH}" >> ~/Frommail

Which then shows me on a small xterminal what mail is coming in,
and most important my blacklist

LOCKEXT=.lock
:0 Whic :$BLACKLIST$LOCKEXT
 | (formail -x received: -x X-Envelope-From: -x Message-id: -x from: -x 
sender:
-x reply-to: -x  return-path:| fgrep --quiet --ignore-case --file=$BLACKLIST)
#
:0 Wa 
/dev/null

The filtering into various mail boxes of the mail program exmh is still 
working properly. I have not touched .procmailrc since changing to broadband.

Could is be that the mail comes in too fast now or what else could be the 
reason?

Thanks & regards
-- 
Peter







-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
