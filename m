From: ishare <june.tune.sea@gmail.com>
Subject: optimization of  kernel compilation
Date: Tue, 19 Mar 2013 12:39:20 +0800
Message-ID: <20130319043920.GA25133@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=h7wTev5vnxWCBPT3+Ze8dPft6QBBsM3XCErCwXEl4Xw=;
        b=CAC4tm+WJrYrP/YshQCwmnlKwf9l+wRrZvz4tWCZNYDg5nZ/GbBvVq1Bl8uOVQ0DWT
         v1HNhcsXg56OJOdAhkivlhoq2HE46k0MWt1xU2ZoXjrVNFlfyJcZzDco6TqIjnDh1xun
         Yl/hBS+EIiUZrgkf9c7ObhVGbV+mthg2DUbDOrF3d8OsHJUs1/pDOEPHRe1Q+s/xojFm
         Li6f+ZFeyr+0kHA/pU/c3sZc1OQ937vYmmfa1rGydO4in7LgzNvCI/samKer/zjGyoJV
         3O673gTfawW5rO/1YYn90/zuHDRl/p4YDbEzZpB66KvEYw7nuXVMwkKZWrYyCKTfGxM8
         hTxQ==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


   If do not set -O2 to kernel compile option , I will get somw error aue to several symboles 
   is undefined reference to  ,for example:

             in ext3/super.c :  undefined reference to `ntohl'

   I take a lppk at the definition in source code for ntohl, it seems affected 
   by the __OPTIMIZE__ macro , which make this symbole defined as a macro .just
   like this : #define ntohl(x) ___ntohl(x)

   
   But if I do not define __OPTIMIZE__ ,which means I need not any optimization, 
   How can I compile successfully? Is there the corresponding ntohl() function in kernel ?
   I kave not found that yet. Does this mean I must use __OPTIMIZE__ by -O2 ?


   thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
