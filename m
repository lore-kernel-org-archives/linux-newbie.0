From: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Subject: Re: String Functions in Linux Kernel
Date: Fri, 23 Sep 2011 14:26:17 +0530
Message-ID: <CAOG7oKxsBYC4f1QJemaa5XrEqwM5JuYsaL9QjB_UOoV_cSpWCQ@mail.gmail.com>
References: <CAOG7oKyfjT2gi1SXz6csBAqzUhgEYb4=jCw7=vcdztpgxVMf-A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=StZAQTxXp9JvgiQHmqTJ6fLcALUAxAahfkZorTziNeQ=;
        b=u+8f7segq0Q8PWWghRxBdEX8ge3s0IK1SE3y4bTCygdwfJg9avoVQN9jxq9iNrfm6A
         LkhaqU48yFpe14P32aAYBNuGKHOW+tQs5Qy6G5XuUjvfOjzrhEllFq15DtH66tytcUmW
         z6M0cYSgFwcC+77qDtjCCOutMuN0gSiZwMePg=
In-Reply-To: <CAOG7oKyfjT2gi1SXz6csBAqzUhgEYb4=jCw7=vcdztpgxVMf-A@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

#include<string.h> actually refers to /usr/include/string.h present on
the system whereas
#include<linux/string.h> refers to
/usr/src/linux-headers-2.6.35-22-generic/include/linux/string.h if
your linux kernel version is 2.6.535.22 or to corresponding kernel
directory you have targeted the compiler to.

linux/string.h contains functions optimized for kernel but I still
dont understand why does it still include string.h.

On Fri, Sep 23, 2011 at 11:21 AM, Chandrabhanu Mahapatra
<chandrabhanu.anand@gmail.com> wrote:
> Is it safe to use string.h functions in kernel which are mostly user
> level functions.
> What is the difference when I write
> #include<string.h>
> and
> #include<linux/string.h>
> Where does each of the above point to in the linux kernel directory?
> In Linux-3.0/include/linux/string.h I found an entry for
> #include<string.h>
> What does the above exactly mean?
> Are there string safe function present in linux as like in windows driver model?
>
> --
> Chandrabhanu Mahapatra
>



-- 
Chandrabhanu Mahapatra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
