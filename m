From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: ssh - connection refused
Date: Sat, 13 Apr 2002 15:22:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0204131522350S.00302@unix.pa3gcu>
References: <2.2.32.20020413150459.00be7c58@[192.168.1.23]>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <2.2.32.20020413150459.00be7c58@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, Jerry T <linuxl1@hotmail.com>, linux-newbie@vger.kernel.org

On Saturday 13 April 2002 15:04, Ray Olszewski wrote:

> Also check if the Linux host can start an ssh session to itself (as
> localhost -OR- as its hostname). If it can, we might suspect some Windows
> weirdness. (For example, the RSA key still needs userids that match at both
> ends, and I'm a bit hazy about how putty and the CygWin stuff provide the
> userid portion of the authentication.)

Putty.exe asks you upon a firsttime connection if you want to store the key 
into the windows register.
I belive most windows ssh stuuf does simalar as well, penguinet is another i 
use but its copmplately different to putty.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
