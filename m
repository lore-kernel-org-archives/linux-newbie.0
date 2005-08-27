From: Jeff Woods <Kazrak+kernel@cesmail.net>
Subject: Re: human readable format?
Date: Fri, 26 Aug 2005 23:32:33 -0600
Message-ID: <6.2.3.4.0.20050826231813.04377b30@no.incoming.mail>
References: <deosbv$8ps$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <deosbv$8ps$1@sea.gmane.org>
References: <deosbv$8ps$1@sea.gmane.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: _z33 <timid.Gentoo@gmail.com>
Cc: linux-newbie@vger.kernel.org

At 8/27/2005 10:39 +0530, _z33 wrote:
>When using commands like 'ls', 'du' & 'df', I fnd special switches 
>to the commands that convert the usage details reported by these 
>programs into human readable format. I am still not able to 
>understand why these switches aren't enabled by default?

"backward compatibility"

These commands are all used by scripts and other sorts of programs to 
provide information that's then parsed by the program.  If you change 
the default behavior you break all those programs.

--
Jeff Woods <kazrak+kernel@cesmail.net> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
