From: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: request_mem_region
Date: Tue, 20 Oct 2009 20:00:26 +0300
Message-ID: <413a6a950910201000g792aa290tc99550f934e11101@mail.gmail.com>
References: <7783925d0910200925x1c24d728sbe2d0e5da114e772@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type;
        bh=64cnpHDvI80jbNZZ2k/XcbZ8ZUV/sQIKKGuVLDIdASg=;
        b=Ex3T8SkaQkosQolGF7td2RJ2UIG2W6ZveDOIXcxDraVoc9tC71n6pOcyitcdS5q35U
         Ha7Mthju4O/ZHkKsfKQNyxpAHbaMrXydHDoT4kEOeq9Ba4fH/BIaYReP66J+6oCSdOmo
         dP1H3bofnICXbCebu+JUp3Al8lN8uzCJ9qmlw=
In-Reply-To: <7783925d0910200925x1c24d728sbe2d0e5da114e772@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,
On Tue, Oct 20, 2009 at 7:25 PM, Rick Brown <rick.brown.3@gmail.com> wrote:
> Hi,
>
> I'm trying to write a simple driver using some registers of my hardware.
>
> Is a call to request_mem_region() advisory ("recommended") or
> compulsory before I ioremap the memory?

I think it is "compulsory" recommened.

>
> In other words, if I don't use request_mem_region() before I start
> using the memory; is my driver BOUND to fail, or it MAY fail?

You need to call request_mem_region in order to verify that no other
device is using the same address resource.

So your driver might FAIL if the address is already reserved for another device.

thanks,
Daniel.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
