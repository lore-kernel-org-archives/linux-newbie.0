From: Carl <carl@anexia.co.uk>
Subject: Re: Redhat 7.3 Samba Start at startup
Date: Mon, 03 Mar 2003 15:25:54 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20030303152122.01f0b438@pop3.demon.co.uk>
References: <004201c2e191$f5acb840$cdfea8c0@pkraus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004201c2e191$f5acb840$cdfea8c0@pkraus>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: pkraus@pelsupply.com, linux-newbie@vger.kernel.org

At 09:34 03/03/2003 -0500, Paul Kraus wrote:
>How can I set samba to start when the server starts.
>Every time I reboot the machine I have su, /sbin/service smb restart.
>
>Paul Kraus
>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs 


Paul,

use the command "chkconfig" as root

For samba it would be:

        chkconfig --level 2345 smb on

Where "2345" are the run-levels you want it to start in, "on" is to set it to start at entry to the run level.
"off" would be to turn it off.

You can check what gets started in each runlevel with:

        chkconfig --list

See "man chkconfig" for full details.

Regards
Carl
--

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
