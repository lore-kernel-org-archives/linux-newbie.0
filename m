From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: courier-imap RPM help!
Date: Thu, 25 Sep 2003 07:39:58 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200309250739.58080.pa3gcu@zeelandnet.nl>
References: <BNEEIMBDCFOEJALDEFJAMEDICCAA.tim@kerryandtim.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BNEEIMBDCFOEJALDEFJAMEDICCAA.tim@kerryandtim.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tim Merkel <tim@kerryandtim.com>, linux-newbie@vger.kernel.org

On Thursday 25 September 2003 06:15, Tim Merkel wrote:
> Why is it saying "libcrypto.so.4 is needed by python.2.2.2-26"?  I am not
> trying to install python.
>
> Can somebody please enlighten me to where I am stuck?  Maybe an RPM 101
> guide would help me. Thanks in advance for your help!
>
> Tim Merkel

When i get things like this on an rpm system i simply use the --nodeps option.
In most cases the program concerned will work, however if you have trouble 
(say the program wont start) do the following.
ldd /path/to/program
Too see which libary is "Not Found".
Then of course install the libary seperatly.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
