From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: inb parameter physical/Virtual.
Date: Tue, 12 Apr 2005 17:24:08 +0545
Message-ID: <652016d3050412043952bdd8d9@mail.gmail.com>
References: <4EE0CBA31942E547B99B3D4BFAB3481124BC15@mail.esn.co.in>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB3481124BC15@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

On Apr 12, 2005 10:51 AM, Mukund JB. <mukundjb@esntechnologies.co.in> wrote:
> 
> Hi all,
> 
> I am into writing Linux device drivers. I have a query regarding usage
> of inb, outb instruction in the drivers.
> 
> What is the address we need to pass to inb, oub instructions? I mean, Is
> it a Physical address or a Virtual address?
> 
> Regards,
> Mukund jampala

No,
  It is I/O port address. It is different from Memory address. In x86,
I/O Port addresses are 16bit.

Regards
Manish Regmi

-- 
---------------------------------------------------------
"Owning a hammer doesn't make one an architect"
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
