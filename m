From: chuck gelm <chuck@gelm.net>
Subject: Re: messages in /var/log/
Date: Wed, 04 Aug 2004 11:54:27 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411106B3.2040807@gelm.net>
References: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.engin.umich.edu>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> I have a whole load of entries that look like: 
> 
> Aug  3 14:48:38 gandalf -- MARK --
> Aug  3 15:08:38 gandalf -- MARK --
> ...
> 
> 
> These are repeated every 20 minutes. How can I determine where are they
> coming from and what they mean? 
> 
> Thanks,
> 
> -K

Hi, K:

Tell us which distribution-release, and kernel version.
On my Slackware-9.1, 2.4.22, it comes from
  /etc/rc.d/rc.syslog
in the line
  /usr/sbin/syslogd
the default 'argument value' is 20 minutes
  -m 20
and can be set to zero (never) with
  -m 0

See 'man syslogd'.

  It may be used to determine, approximately, when a system 'died'.

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
