From: joy <gracecott@sancharnet.in>
Subject: Re: C Compiler
Date: Sun, 28 Dec 2003 09:51:39 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3FEE5A53.4010401@sancharnet.in>
References: <200312270820.hBR8Ked01366@skyinet.net>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:

>Season Greetings!
>
>Trying to install a program I get:
>
>checking for C compiler default output... configure: error: C compiler cannot 
>create executables
>
>when doing ./configure in RH9.
>
>How do I correct this error?
>
>Thanks & regards
>  
>
I used to get the same message on my Deb system. I had not installed 
glibc ( I was trying to do everything manually :-) and some other 
packages related to gcc.
reinstall gcc from scratch and you are done.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
