From: Kev <savage-garden@hanikamail.com>
Subject: scrip help
Date: Wed, 04 Jan 2006 15:10:42 +0600
Message-ID: <20060104151025.A2B6.SAVAGE-GARDEN@hanikamail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

im seting up a scrip pipe for postfix + spamassassin as a filter in
postfix. 

this really works how ever i have a prb with the FWD depending on the
recipent, can any one help me with this line

if $EGREP -q -i "To: *kav@domain.net*" < /var/tempfs/out.$$

how can i tell egrep to check for any format of To: in the email heder.

===================

SENDMAIL="/usr/sbin/sendmail.postfix -i"
EGREP=/bin/egrep

EX_UNAVAILABLE=69

SPAMLIMIT=5

trap "rm -f /var/tempfs/out.$$" 0 1 2 3 15

cat | /usr/bin/spamc -u filter > /var/tempfs/out.$$

if $EGREP -q "^X-Spam-Level: \*{$SPAMLIMIT,}" < /var/tempfs/out.$$
then

KEV=kalinga@orbitsl.net

if $EGREP -q -i "To: *kev@domain.net*" < /var/tempfs/out.$$
        then

 $SENDMAIL admin@domain.net < /var/tempfs/out.$$

else

 $SENDMAIL spam@domain.net  < /var/tempfs/out.$$

fi

else
  $SENDMAIL "$@" < /var/tempfs/out.$$
fi

exit $?

======================================

thanks a lot

Kev


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
