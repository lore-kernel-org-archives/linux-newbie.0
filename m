From: Ray Olszewski <ray@comarre.com>
Subject: Re: Related to thread: which UNIX to use, but offtopic
Date: Wed, 29 May 2002 23:55:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020529234813.02082ec0@celine>
References: <F4D3DB9A18752A4F99FD880ABC5407179D144B@ccdc-exchg.careerco
 mmunity.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D144B@ccdc-exchg.careerco
 mmunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "'linux-newbie@vger.kernel.org'" <linux-newbie@vger.kernel.org>

At 09:55 AM 5/30/02 +0530, Sridhar J wrote:
>Hi
>
>Something offtopic, but one question, what is a hardware modem and what is a
>software modem?


A "hardware modem" uses a standard modem chipset to implement the modem 
functionality (encoding the computer's digital signal in an analog signal 
suitable for transmission over a phone line, and decoding such signals from 
the outside) and communicates with the computer as though it were a serial 
port (that is, through a UART).

A "software modem" uses a more general-purpose chipset (something similar 
to a DSP, I believe) and requires that the computer run software to control 
the chipset's D-A encoding and A-D decoding.

To get a better understanding, try these URLs:

         http://www.idir.net/~gromitkc/winmodem.html
         http://linmodems.org/




--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
