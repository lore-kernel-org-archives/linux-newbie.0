From: ishare <june.tune.sea@gmail.com>
Subject: memory zone and slab
Date: Thu, 7 Mar 2013 22:35:14 +0800
Message-ID: <20130307143514.GD2467@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uuQgmah/whFBzysq8IflzBUTrl7mIp9wbFbW7CMY41k=;
        b=NuCB6AE0RFaUXQ9iYEJ//76U7RO+TCmD0B90XkrJxJdPGF+jCyQ/FgjnkVKgkt/flk
         indi8yk6dJgv58/5oJkLRY033BkJUCIfT6rUXaQ6Iw2OXg6Ad0DPTjJSAzAbkjkWdbIG
         /lLrhIMTgXDWEPOFBjKATLmpHV8w4cUhT3UX9axPPqedCVwUzayXXwHGshoIauTH/e88
         BcaJp5mggytuh2rzi/3JxOA1O/hgaomRgIHoFjnVJjPLK/DzQCX4VSzIRur1pS8cEhij
         Uqxq0W0tGguzyloPcTnREAQfLOVkjUiJjPPx9p1/Dh600vDEJrVa18d4T2/gyUZJif5U
         UYDQ==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


   when does the memory zonelist initialized in kernel ?

   what is the difference between zonelists and slab for memory manage .

   are there some man docs or sites  helpful to understand this ?
   
   thanks! 
  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
