From: ishare <june.tune.sea@gmail.com>
Subject: root_fs_names
Date: Mon, 18 Mar 2013 19:44:47 +0800
Message-ID: <20130318114447.GA22395@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Wv74te+QYf8FafOJ2XrLTmVDzP4G9D3r4EUQOWAUVgw=;
        b=Lv6K2ck1GCN9qix3XWJVQbv1hpaHUduIHwQXyRpiZRGDJ43/RwLB1vOogbCuQyg0ni
         Zil+xXWg0Du30RVVqRVks2h7PguI7o5+f10sw/ViAdSWR5V5+XA6tmuOcFOSPW4i0fYX
         ypFz/EGH97hz3Tba3rNXqQ0fMRBOvjbODUcCY+EBPfdhMJXOdSjyCXbLaavJ5k74GlMV
         wY1wh7t5RuVIZY+stvFBWpl3fagJblV1HVl2mPAlikiLvbnf6+cKZd2xddP0kaRos1jm
         fOQ68pEGDFwLKStIwL/jOGw2bklSZPyVM3HkyD4Qb4f73klkNWcFqKNReD+COcZG4n+A
         jGsQ==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  Need I set "root_fs_names=xxx" at grub booting command line?
 
  If I have not pass root_fs_names to kernel,which filesystem will be used to mount /dev/root?

  thanks!

  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
