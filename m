From: Joseph Jackson <skoidat@lvcm.com>
Subject: Re: Blocking hackers - Thanks
Date: Fri, 21 Jun 2002 11:21:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D136EC4.2070109@lvcm.com>
References: <Pine.LNX.4.21.0206211210320.14599-100000@minotaur.colorado.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Chris Omland <omland@minotaur.colorado.edu>
Cc: Phillp Morgan <pmorgan@quickpages.net.au>, linux-newbie@vger.kernel.org

Chris Omland wrote:

> Ya I get this on my apache server at work a lot to. While this could be
> code red it could also be a dumbass idiot...you'd think people would do a
> little homework first to find out if the server they are trying to
> "hack" is running IIS or apache....*sigh*
> -Chris
> 


  It is most likely a random scan of an entire range of ip addresses so they are 
just tring to find one out of the thousands that they do scan that is open to 
that hole.  I wouldn't worry about random scans you have to start worrying when 
you see scans from the same host over and over attacking your machines in a 
human like way.







> On Fri, 21 Jun 2002, Phillp Morgan wrote:
> 
> 
>>Thanks for your advice guyz.
>>
>>
>>
>>>-----Original Message-----
>>>From: Joseph Jackson [mailto:skoidat@lvcm.com]
>>>Sent: Friday, 21 June 2002 4:31 PM
>>>To: Phillp Morgan
>>>Subject: Re: Blocking hackers
>>>
>>>
>>>Phillp Morgan wrote:
>>>
>>>
>>>>Hi,
>>>>
>>>>It looks like someone is trying to break into my system. 
>>>>
>>>This is out of my
>>>
>>>>apache error log...
>>>>
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET 
>>>>>
>>>/MSADC/root.exe?/c+dir
>>>
>>>>HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
>>>>>
>>>>>
>>>>/c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
>>>>>
>>>>>
>>>>/d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
>>>>>
>>>>>
>>>>/scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
>>>>>
>>>>>
>>>>/_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
>>>>r HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:34 +1000] "GET
>>>>>
>>>>>
>>>>/_mem_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+di
>>>>r HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:36 +1000] "GET
>>>>>
>>>>>
>>>>/msadc/..%255c../..%255c../..%255c/..%c1%1c../..%c1%1c../..%c1%1c../
>>>>winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:29 +1000] "GET 
>>>>>
>>>/MSADC/root.exe?/c+dir
>>>
>>>>HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:30 +1000] "GET
>>>>>
>>>>>
>>>>/c/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:31 +1000] "GET
>>>>>
>>>>>
>>>>/d/winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:32 +1000] "GET
>>>>>
>>>>>
>>>>/scripts/..%255c../winnt/system32/cmd.exe?/c+dir HTTP/1.0" 404 -
>>>>
>>>>
>>>>>61.243.140.78 - - [21/Jun/2002:13:58:33 +1000] "GET
>>>>>
>>>>>
>>>/_vti_bin/..%255c../..%255c../..%255c../winnt/system32/cmd.exe?/c+dir
>>>
>>>>HTTP/1.0" 404 -
>>>>
>>>
>>>This is the pattern of the CodeRed virus that was going 
>>>around the net a few 
>>>months ago.  You are safe from it of course since it is 
>>>targeted at windows 
>>>machines running unpatched versions of IIS.
>>>
>>>
>>>
>>>
>>>
>>>
>>>>Is there any way I can block this nasty person?
>>>>
>>>>Who should I report this to?
>>>>
>>>>
>>>
>>>
>>>As to who you should report this to I did a lookup on the ip 
>>>address and this is the data
>>>
>>>
>>>
>>>Search the APNIC Whois database
>>>Search results for '61.243.140.78'
>>>
>>>inetnum              61.240.0.0 - 61.243.255.255
>>>netname              UNICOM
>>>descr                China United Telecommunications Corporation
>>>descr                Beijing Railway Station East Avenue
>>>country              CN
>>>admin-c              RX9-AP, inverse
>>>tech-c               RX9-AP, inverse
>>>mnt-by               MAINT-CNNIC-AP, inverse
>>>mnt-lower            MAINT-CN-CNNIC-UNICOM, inverse
>>>changed              hostmaster@apnic.net 20010817
>>>changed              ipas@cnnic.net.cn 20010828
>>>source               APNIC
>>>
>>>
>>>Since it seems to come from a user in China I doubt there is 
>>>anything at all you could do.
>>>
>>>Even tring to get ahold of the system admins in China is very 
>>>very hard.  I 
>>>wouldn't worry about it at all it looks like a random scan of 
>>>your domain and 
>>>from a client that is set up to scan whole ranges of 
>>>addresses no worries.
>>>
>>>
>>>
>>>Joseph Jackson
>>>
>>>
>>>
>>>
>>-
>>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>the body of a message to majordomo@vger.kernel.org
>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>Please read the FAQ at http://www.linux-learn.org/faqs
>>
>>
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
