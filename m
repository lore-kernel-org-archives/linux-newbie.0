From: Ray Olszewski <ray@comarre.com>
Subject: Re: Modem Identification
Date: Sat, 14 Dec 2002 17:19:56 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021214171540.020e0cb0@celine>
References: <200212142014.07963.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212142014.07963.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

At 08:14 PM 12/14/02 -0500, Frank Roberts - SOTL wrote:
>Hi All
>
>
>Question:
> >From the command line how does one determine which port a modem is on?


It depends on exactly what you mean. I'm guessing that you intend to refer 
to a situation where you have 2 or more serial ports in a computer, and a 
modem conencted to one of them, but the ports are unlabeled so you dont 
know which one the modem is attached to. In that case, I would use a 
terminal app (such as minicom) to connect to each port, and see which port 
(actuall, its associated /dev/ttyS* entry) gets responses from the modem to 
typical AT commands.

There are many more things you *might* mean, though. So if I've guessed 
wrong (and someone else does not guess right), please post a followup that 
asks the question in a different, more specific form.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
