From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Minicom and Modem
Date: Sun, 2 Feb 2003 13:37:29 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020213372901.19519@unix.pa3gcu>
References: <200302011710.46462.sotl155360@earthlink.net> <03020209383900.19519@unix.pa3gcu> <200302020745.13455.sotl155360@earthlink.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302020745.13455.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Robers _ SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sunday 02 February 2003 12:45, Frank Robers _ SOTL wrote:
> Hi
>
> Thanks for the help. I greatly appreciate your taking the effort to
> respond.
>
> Now for the principal issue.
>
> If I issue the above commands will that screw up Kppp from seeing the
> builtin modem and stop normal Internet connections.

Why use minicom at all for simply transfering fies via a serial cable.?

Simply configure the device on both sides with slattach or dip and make sure 
both have routes to each other, its a simple network then not a complicated 
thing with minicom.


-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
