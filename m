From: Prashant Batra <prashant0100@gmail.com>
Subject: initrd and initramfs image for linux kernel
Date: Mon, 24 Dec 2012 15:45:55 +0530
Message-ID: <CAG+XuE7zg7Ti1dxE5yCyp4vB0UPb6Ki1cFxz=0qi=SeJkAzQUw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=9J/dce+n05OTdqhGh1RQ79z0abNQ2O6Gvu9e4RYWFDs=;
        b=xqXCCbFqILYz4E5rGgDNWOTfrF8gd3nE4Qa1W+Bp5fEJfXYSjNnh6WZoFEM/SdeHG6
         3Ku2lP39z4GgU4qhZ4W1UzMmDhZUzzIIPoGYbr+Lz9DX9DDnY9k56oSkuJ4yxXZc+cyM
         Tb+V5sJx8VA6mAVQsmqytvGlryrnXL7/9trfKZue0rXDAqMmEdNxfPOjWi7VXmHXxQKU
         gUUOLdA1LkLwvGJXlAxMurQf6JA31f0pxJfF1ZhbnUJSy03oJgxRwBvKbCHQlc4b3lIi
         T7pA/YM4Hyp4GL/c0wggWbd+GYiISQEw4vGttK3B8Tekr48OqqE3ftsPo5/URKYJu4Qj
         tqCw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi team,

Any good references on the steps to building initrd or initramfs image
from scratch for kernel. I have found couple of links, but none of
them explains how to specify the modules that would be included in the
image.

I am aware of the commands, but wanted to understand in detail as to
how everything that goes into the image helps kernel boot.

Right now I am living up by building everything into the kernel image
to boot up my machine.

--
Thanks
Prashant Batra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
