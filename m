From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: RE: Location of syscall wrappers
Date: Thu, 7 Feb 2008 14:12:38 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B07A66B7D@GDCMX01.igglobal.com>
References: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
In-Reply-To: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sachin Gaikwad <sachin.kernel@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

> 
> Use syscall(SYSTEM_CALL_NUMBER, arg1, arg2, arg3);
> 
> _syscall3() macro are are not supported nowadays.
> 
> http://lkml.org/lkml/2007/7/5/314
> 

Who is supposed to provide syscall()?? C library? Where do I find its definition (not declaration)?

What is an application supposed to do if it does not want to use the library?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
