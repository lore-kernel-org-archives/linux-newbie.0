From: Ray Olszewski <ray@comarre.com>
Subject: Re: /etc/named.conf
Date: Sun, 28 Apr 2002 08:14:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020428151417.0102681c@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Petre Bandac <g38@rdsbv.ro>, linux-newbie@vger.kernel.org

At 03:32 PM 4/28/02 +0300, Petre Bandac wrote:
>when defining zones, what's the diference between a type slave zone and a 
>type master zone ?
>
>I admit I haven't RTFM yet :-)


Tsk tsk.

A slave-zone entry in named.conf is one for which the nameserver will
periodically attempt to get an update from another nameserver (the master).
Since you should have two nameservers for any domain that you are
authoritative for, this mechanism lets you do updates on just one of them;
the other will synchronize automatically. 

For the technical details on implementation, the man page for bind or named,
or the examples that usually distribute with the BIND package, should suffice.


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
