From: ishare <june.tune.sea@gmail.com>
Subject: Mount two device on the same directory
Date: Wed, 27 Mar 2013 21:17:03 +0800
Message-ID: <20130327131703.GA2841@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=3yLscrSM0knFFHnrtblubu7Io+p8gAQ0OIrCG5crpJ0=;
        b=k9sgxPCk2qRXQ0LXNJ2FZoguN8ZDF+ISCLkvP3x8YZiFxzpheXpStijGdneFSIZR6v
         wctdf/4FeXqfi/j4zZWAaKe6BxW5D+DZeADj/Shn71mPKtYzK56j5cj+vifqmdZjHYwR
         Z+BWfuEfbZ0BM7hBaSYW2TDnb0TjbHYfkplcqx7tL55c8MergNU2TAk/TMX8GYAwlI4Z
         uuKyUUgfScmysjgJ4Uz8gZRM/ISPbzFQka8953+Q+aAjaf8levabEzk+7NjSZfPlNKdi
         iJ5Ru3j2PFekimsrWUU6Lmw6/cGER4u87jNPplsheUp0FMgQ5TLLna8QKBNamErfgIqm
         19NA==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  Can I mount two different device on the same dir ?

  If I first mount a superblock of vitual filesystem on / ,
 
  then I mount another real device /dev/sda1 also on / ,

  then, if I type " ls / " command , Are all files in the two device show up to me?

  thanks!
  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
