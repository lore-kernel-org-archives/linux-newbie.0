From: Hal <haltec@kvinet.com>
Subject: Re: ADSL & Sending Mail? Was: DialUp and ADSL.......
Date: Tue, 28 Nov 2006 13:21:04 -0500
Message-ID: <20061128182104.GA2357@lnx2>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

	Disregard my request for help below.. I found a fix.. :^).
Hal..

	Meanwhile maybe I can ask for more help with the scheme now
being used in two parts; bash script follows:
------------------------------------------------------------------------------
#!/bin/bash
# /usr/local/sbin/postmail (script to sendmail via kvinet.com..

# Disable ppp.adsl
/bin/rm /etc/ppp

# Setup to use dialup modem
/bin/ln -s /etc/ppp.dial /etc/ppp

# Run ppp for DialUp
/usr/sbin/ppp-go

# need a waitfor here :
# "NO CARRIER Local: 146.82.214.57 -> Remote: 10.1.4.1 ppp0"
# Needs a new line after that before invoking sendmail....
# The 146.x.x.x may be different considering dhcp.


#One of my many trys to make it one script, all failing..
if grep  Local:
then	 /bin/echo -e ""
fi
# Invoking postmail1, thence hitting enter and invoking postmail2, does
# the trick...
#
# TEMPORARY: The above, before the if,  is postmail1 and the below is
# postmail2..
#

# Sending mail via kvinet.com relay. See /etc/mail/submit.cf DS
# Need to check to see if any outgoing mail in queue..
# Not really necessary as it'll exit gracefully with no mail in the queue..

# Running sendmail 8.13.3, secure, as user smmsp - /var/spool/clientmqueue.
/usr/sbin/sendmail -q -v -Ac

# Stop ppp Dialup
/usr/sbin/ppp-off

# Disable ppp.dial
/bin/rm /etc/ppp

# Setup to use ADSL Modem
/bin/ln -s /etc/ppp.adsl /etc/ppp

echo  " Back to ADSL StandBy."
#
------------------------------------------------------------------------------
-- 

         Hal.      GNU/Linux -- Slackware 10.1, kernel 2.4.29
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
