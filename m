From: "Phillp Morgan" <pmorgan@quickpages.net.au>
Subject: Blocking hackers
Date: Fri, 21 Jun 2002 13:57:48 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004701c218d7$cf274dd0$0c00a8c0@qpbd103>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

It looks like someone is trying to break into my system. This is out of my
apache error log...

>61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
/c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
/d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
/scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
/_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
r HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:34 +1000] "GET
/_mem_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
r HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:36 +1000] "GET
/msadc/..%255c../..%255c../..%255c/..%c1%1c../..%c1%1c../..%c1%1c../
winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
/c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
/d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
/scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
/_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+dir
HTTP/1.0" 404 -

Is there any way I can block this nasty person?

Who should I report this to?

Regards,

Phillip Morgan
Chief Information Offier
Quickpages Business Directories
----------------------------------------------------------------------------
------------
This email is intended for the above named recipient only, and may contain
priveledged information. If you are not the intended recipient please delete
this email immediately and notify Quickpages of the problem.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
