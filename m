From: Prasad Joshi <prasadjoshi124@gmail.com>
Subject: New inode allocation
Date: Tue, 21 Sep 2010 14:59:05 +0530
Message-ID: <AANLkTi=8rfHGoVY93kyOdb0qXO9xTFm-1e0xC4a7bo8G@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type;
        bh=3ILNM4pJJ2bD4EzMuQUbm7Du9ECVKP1srPfisY2/ywM=;
        b=XBDRGJZmZohhpOJ9mCi9caUWThQxCKe25TzW8tHhBSfGXOnQpQHxHFstD10gdRpYPB
         v+MZu3m2yhx+tOn0u9OC1/ZhYaRuAsmnpII80wNTH29hRWjmdThjVl9WDn1MjI27/jKY
         sOnFsquC7TD3jUl+/pN9JnxEboI51qGhcnaeI=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi All,

I am bit confused with the use of iget_locked() and new_inode().

I am implementing mknod operations, which function should I use to
allocate a new inode?
Do I need to ensure each inode allocated has state I_NEW?
When should I use new_inode() and when to use iget_locked()?

Please advise?

Thanks and Regards,
Prasad
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
