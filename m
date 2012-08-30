From: Javier Sanz <jsanza@gmail.com>
Subject: ramdisk using hugetlb page ram
Date: Thu, 30 Aug 2012 17:09:10 +0200
Message-ID: <CAOLSsAwHFh=V1r1d6k-=mLgXdmCC2tR=Cy1NuJV7Z5q=kh3dCw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=YAHkTj3cbEPwfYas+GeIipbwiz5r/MfKTymmyOWRxUw=;
        b=b/KADAUPVFpfiB64vSb2LBFz8BA1eqyk+Wo8k5Xr3tu38JkKJ9NiDEAZICNd+OBfaS
         c0dIxrLEmYJqM5bvyyo2M+yQGujdGOmzee0uZroW7JtFHVK6UYQcut0l7QeGZV1oKUVM
         Tzvm7UWPxAZFvEu8XY18Rp7JrywbcVQ/eyjPYh5GA4BWptYUU2yll+K64DRTangmHgCG
         FGst4y3RlXeuNMeuFE6RlnLQ/ZvWwjai2P1vk5Lp/0VQ9nVFkqez5KsR9kofBR8qHtIO
         NnswsBQ/o5u7j40kPeP0Wo31UzobuoXVC51T1MEjUHRz6gkYUEFEic4IwaxUSQKc03ab
         EmAQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I am trying to use hugetlb to make a faster ramdisk .. but ...

I do,
#mount -t hugetlbfs none /media/ramdisk -o size=256M,mode=0777
#df
none 262144 0 262144 0% /media/ramdisk

all seem ok ...
going to the ram disk , and
#touch a.txt
-rw-r--r-- 1 root root 0 Aug 22 22:22 a.txt

ok, but

# ls > a.txt
ls: write error: Invalid argument

i cannot write any file inside .. why can i create?

why can i not use hugetlb for working with ramdisk?

anonymous pages and theses stuffs?

tx
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
