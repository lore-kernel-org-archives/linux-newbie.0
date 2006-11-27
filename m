From: Hal <haltec@kvinet.com>
Subject: Re: ADSL & Sending Mail? Was: DialUp and ADSL.......
Date: Mon, 27 Nov 2006 14:19:03 -0500
Message-ID: <20061127191903.GA2460@lnx2>
References: <e0O5uQ5D.1164229866.0313500.haltec@kvinet.com> <4568AEEB.1030007@Gelm.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4568AEEB.1030007@Gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <Chuck@Gelm.net>
Cc: linux-newbie@vger.kernel.org

On 11-25, Chuck Gelm wrote:
> http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2372
> 
> Hal:  Try these settings:
> 
> DSL settings
> 
>    * Primary DNS: */4.2.2.1/*
>    * Secondary DNS: */4.2.2.2/*
>    * Domain: dsl.verizon.net
>    * Network protocol used: TCP/IP
> 
> Mail server settings
> 
>    * Incoming mail server (POP3
>      <http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2330>):
>      */incoming.verizon.net/*
>    * Outgoing mail server (SMTP
>      <http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2066>):
>      */outgoing.verizon.net/*
>    * Your Verizon Online user name
>    * Your Verizon Online password

	Greetings and thanks a million for all the leg work and
suggestions, etc.. My relationship with giant Verizon is paper thin
now so I had better not try much more than my expertise for fear I'll
really break something.. It is confirmed, that I didn't know before,
that Vz does support POP3 as you've noted.. In fact they do support
so much Unix stuff I'm familir with except they add their own twists
to the commands, etc.. I, finally, figured out how to set up a simple
web page with FTP support without using their eye candy s/w.. <grin>

	It seems the problem is not all me in that others I've
queried in the complex have more problems, for a longer time, than I
including a nearby hospitals MIS, all using XP and their bundled
software..

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

I have Unix books on Bourne scripting but the solution escapes me
since it might be the changes from Unix to Linux.. :^(..

-- 

         Hal.      GNU/Linux -- Slackware 10.1, kernel 2.4.29
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
