From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Blocking hackers
Date: Fri, 21 Jun 2002 06:26:44 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02062106264400.00250@unix.pa3gcu>
References: <004701c218d7$cf274dd0$0c00a8c0@qpbd103>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004701c218d7$cf274dd0$0c00a8c0@qpbd103>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Phillp Morgan <pmorgan@quickpages.net.au>, linux-newbie@vger.kernel.org

On Friday 21 June 2002 03:57, Phillp Morgan wrote:
> Hi,
>
> It looks like someone is trying to break into my system. This is out of my
> apache error log...
>
> >61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
>
> HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
>
> /c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
>
> /d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
>
> /scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
>
> /_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
> r HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:34 +1000] "GET
>
> /_mem_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
> r HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:36 +1000] "GET
>
> /msadc/..%255c../..%255c../..%255c/..%c1%1c../..%c1%1c../..%c1%1c../
> winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
>
> HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
>
> /c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
>
> /d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
>
> /scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>
> >61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
>
> /_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+dir
> HTTP/1.0" 404 -
>
> Is there any way I can block this nasty person?

Depends on which kernel you use, with a 2.2.x kernel one can use;
/sbin/ipchains -A input -j REJECT -s 61.243.140.78

>
> Who should I report this to?

No idea, all the IP#'s shown with traceroute are unresolveable so who knows 
who he actually is, the last resolvable ip# with traceroute was 
linx01.hkt.net but thats 5 hops before 61.243.140.78.

>
> Regards,
>
> Phillip Morgan
> Chief Information Offier
> Quickpages Business Directories

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
