From: Kees Cook <kees@oNsOdSPAMl.org>
Subject: Re: Is a process running ?
Date: Mon, 28 Jul 2003 09:32:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bg3j6t$4ob$1@build.pdx.osdl.net>
References: <NGBBLGNMLJPKEPIFPKLHKEEFGAAA.tfletcher@netfactoriel.com> <000701c3550a$41308a80$ed64a8c0@descartes>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

John T. Williams wrote:
> ps -A | grep -e "[ /]python2.1\>" 1> /dev/null 2> /dev/null

A quick short-cut for the last part:

ps -A | grep -e "[ /]python2.1\>" >/dev/null 2>&1

"1" (stdout) is used by default, and then 2>&1 takes "2" (stderr) and 
sends (>) it to the same location (&) as "1".

-- 
Kees

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
