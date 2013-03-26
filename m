From: ishare <june.tune.sea@gmail.com>
Subject: call stack of a system call
Date: Tue, 26 Mar 2013 21:21:48 +0800
Message-ID: <20130326132148.GA3381@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=d1GtKwigS994yeKJOope68jHWn6/lWovYTLx4U355Qo=;
        b=XMgCIUdVsNTCVkTozlTglpwwj0HtvFhwAiIRli0ArU6R3niJfh0vwbWDJ4FO5JtO60
         CsKOore2UZDM40g8mNrSunIfMmcgYvdoMgqEajnjga1Z8C9FHBb11pcTS9l62/Gy+sbf
         v4psiLc4vWa8DnC1qxOGfOrHun+3WafnrpQ0CuzJZdym18I5idWCp7W2lCCtTGfEvdQv
         wZiSTt7ap0d9eqAzKv6060bmT4mJqmCG4Yhp+4jSNcotjCMRej9iKK2QNcwduIBPUfRK
         1sdCBWw+iAwvFzroAgfmazDM+hMxId30rVaczPZWs1vfCBkeYp/bYT87SXJYJOAQDZCU
         jzRg==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  At user level ,is there system interface to help printing the call stack of one system api ?

  for example: I want to print the send/receive call stack from kernel , is there 
  helper for user application to achieve this?  

  thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
