From: Ray Olszewski <ray@comarre.com>
Subject: RE: ADSL connection failed
Date: Sun, 20 Feb 2005 21:29:33 -0800
Message-ID: <5.1.0.14.1.20050220212005.0209f008@celine>
References: <000201c517d3$09632d00$6510ea0a@acbi.local>
Mime-Version: 1.0
In-Reply-To: <000201c517d3$09632d00$6510ea0a@acbi.local>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: ogut <frans@acbi.co.id>, linux-newbie@vger.kernel.org

At 12:05 PM 2/21/2005 +0700, ogut wrote:
># fx > and
># fx > how is that application sending it? And what does "222.154.xx.xx"
># fx > refer to
>This is one of the actual rebounce report ( I tried sending from several
>machines/senders/places ), from the system administrator :
>
>Your message did not reach some or all of the intended recipients.
>       Subject:
>       Sent:     2/18/2005 12:30 PM
>The following recipient(s) could not be reached:
>       Ray Olszewski on 2/18/2005 12:30 PM
>             450 4.7.1 <ray@comarre.com>... Relaying temporarily denied.
>Cannot resolve PTR record for 222.124.57.160
>       Linux newbie list on 2/18/2005 12:30 PM
>             450 4.7.1 <linux-newbie@vger.kernel.org>... Relaying temporarily
>denied. Cannot resolve PTR record for 222.124.57.160
>
>( 222.124.xxx.xxx is off-LAN address )

Hmmm ...  well, I can't resolve it either, and your problem is that 
whatever host is issuing this bounce report (you left that part out) is 
unwilling to relay (forward mail to another domain, that is) from whatever 
IP address it sees your e-mail as coming from.

If 222.124.57.160 is **your** off-LAN IP address ... that is, the address 
your router NATs LAN hosts to ... then the problem is that you are using a 
mail forwarder that will not relay for that address.

If it is not your NATing address, then I don't have enough information to 
suggest anything concrete ... except to observe that you don't have a Linux 
problem per se, but some sort of an authentication problem with whatever 
SMTP server your e-mai client uses to send mail.

The problem may be with the true lack of the referenced PTR record ... an 
error indicating a misconfiguration by whoever (probably some ISP) is 
authoritative for that IP address.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
