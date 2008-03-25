From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: Detect Stack Overflows?
Date: Tue, 25 Mar 2008 10:44:10 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07FA7F76@GDCMX01.igglobal.com>
References: <ea11fea30803240252m3eaeeb80yc2791fa609aed276@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <ea11fea30803240252m3eaeeb80yc2791fa609aed276@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Manish Katiyar <mkatiyar@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org


Hi,

> 
> Kernel configuration has an option to "check for stack overflows"
> under kernel hacking section. Is that what you are looking for ?
> grep your .config for DEBUG_STACKOVERFLOW
> 

On examination, I found that this option only adds a check for stack overflow only at the time an IRQ occurs. But there is a lot more scope for stack overflow in scenarios other than IRQ. For instance, a function call sequence may become large enough, a function may allocate too much automatic variables etc. IS there a way to detect that?

Thanks,

Rajat

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
