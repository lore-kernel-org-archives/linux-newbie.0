From: ishare <june.tune.sea@gmail.com>
Subject: struct inode
Date: Fri, 15 Mar 2013 12:21:17 +0800
Message-ID: <20130315042117.GF5057@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jXne2yWWSXHjhpiHmeisMIuRmNJuxTjAtWJ1W+E7jpY=;
        b=ShKydKIwbMBavjyKaTT37jMHxrfAqFm3FEA7Qpx2m17K76gXRojUgzTt51fYT5Axh0
         nugPQK66Vgsr31AizoqFSWIt8S2YxOMX8vbf/XuMJDdk4jiYK1QUpgI47BymN6zdaXq4
         eQT2HjO+tjU3V0PHwlGT5S+ZMpgVN8gMCZDVcG/hXaj+ng6KHBO6CT/c+CqAY3Iwdf0s
         jq7sHua2HVSwHLd3OnEVG4oyQwdSoj+AuBC4wNs3N1Vo+2VpHl2U1MCjX4TDYbt0fiTG
         NWC6PScFAgB2/+8koP2whyN8mu+Zo22ddvCr9sw4IZeQUZRnZp/Bo5b7gKIyUabvsvH/
         NI2Q==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  there is a member  *i_dentry*  with type list_head in struct inode , what is the use of it ?

  after doing  inode_init() , in the inode_cache , 
  is every inode and thier i_dentry member valid and can be linked to other list_head?


  thanks!  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
