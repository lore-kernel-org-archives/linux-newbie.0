From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't run links as non root user
Date: Sun, 25 May 2003 08:17:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030525080839.01ec6770@celine>
References: <baptsp$gmm$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <baptsp$gmm$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:14 PM 5/25/2003 +1000, Robert wrote:
>When I try to run links in graphical mode I get the message:
>
>svgalib: cannot get I/O permissions
>
>How do I fix this?


It is difficult to say without more information. I assume you are referring 
to the Web browser called "links" here, and under that assumption:

1. The Subject implies, but does not say, that the program runs properly if 
run by root. Is this correct?

2. Aa a non-root user, are you attempting to run links from a console, from 
an xterm, or from a remote connection (or some other way)? Whatever the 
methodm did you log in as the non-root user or su to it from a root login?

3. What does "ls -l /usr/bin/links" report? (Change the PATH if I have 
guessed wrong about where your system puts links.)

4. Is the non-root user account involved here a member of whatever group 
links is in (check tis in /etc/group, based on the results from #3 above).

5. Does anything infomative precede the svgalib message you quote?

6. What Linux distro and version are you using, and what kernel ("uname -a" 
for the last part)? There is no special reason for my asking this one; it 
is just baseline information that should always accompany a trouble report.

 From the little you told us, the problem is with permissions, but exactly 
what permission is missing is unclear. So without the details, any specific 
suggestion is no more than a guess.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
