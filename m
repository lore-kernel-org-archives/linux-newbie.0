From: Ray Olszewski <ray@comarre.com>
Subject: Re: Tcsh: Append output to a file
Date: Tue, 14 May 2002 18:08:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020515010844.00e0918c@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: "Axel H. Siebenwirth" <axel@hh59.org>, linux-newbie@vger.kernel.org

At 03:01 AM 5/15/02 +0200, Axel H. Siebenwirth wrote:
>Hello!
>
>For example I use "/usr/local/sbin/dsniff >& dsniff.log &" in a start-up
>skript to log the output to a file. But everytime I start my computer a new
>file "dsniff.log" is created.
>
>My question is: How do I append to an existing file?

/usr/local/sbin/dsniff >>& dsniff.log &

The double >> is the "append" instruction.


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
