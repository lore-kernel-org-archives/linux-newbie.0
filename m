From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Re: && - Help
Date: Mon, 30 Sep 2002 13:55:03 -0400
Sender: hylafax-users-bounce@hylafax.org
Message-ID: <000b01c268aa$81564980$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <hylafax-users-bounce@hylafax.org>
In-Reply-To: 
Errors-To: hylafax-users-bounce@hylafax.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: hylafax-users@hylafax.org, linux-newbie@vger.kernel.org

&& refers to another command. The echo simply places a blank line.

-----Original Message-----
From: Paul Kraus [mailto:pkraus@pelsupply.com] 
Sent: Monday, September 30, 2002 1:31 PM
To: 'linux-newbie@vger.kernel.org'; 'hylafax-users@hylafax.org'
Subject: && - Help


What does && represent?

Here is the command that I saw it in.
watch -n 1 "/hylafax/etc/errorstats.sh /hylafax/etc/xferfaxlog &&
faxstat -asl && echo && tail /var/log/messages"

Also why is the echo necessary.

Cross Posted due to relevancy.


Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com


____________________ HylaFAX(tm) Users Mailing List _______________________
  To subscribe/unsubscribe, click http://lists.hylafax.org/cgi-bin/lsg2.cgi
 On UNIX: mail -s unsubscribe hylafax-users-request@hylafax.org < /dev/null
  *To learn about commercial HylaFAX(tm) support, mail sales@hylafax.org.*

