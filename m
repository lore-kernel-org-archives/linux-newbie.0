From: David Stroupe <dstroupe@keyed-upsoftware.com>
Subject: Re: Shutdown / Halt Problem - Bad EIP Value
Date: Wed, 29 May 2002 20:50:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CF58556.3010007@keyed-upsoftware.com>
References: <20020528033642.YJMP11659.rwcrmhc53.attbi.com@there> <0205280614490A.01212@unix.pa3gcu> <20020530012232.HKR13253.rwcrmhc54.attbi.com@there>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linuxworks@attbi.com
Cc: Linux Newbie Mailing List <linux-newbie@vger.kernel.org>

Brent Eckhout wrote:

> I'm not sure if I can capture the console messages as the system is shutting 
> down.  I tried killing klogd process and restarting with -f (file) option to 
> see if the messages could be written to a file.  However, it looks file 
> system is closed and the klogd is shut down before the system executes the 
> halt command.  Any suggestions on how to capture the console messages at 
> shutdown would be appreciated.
> 
> Thanks, 
> Brent
> 


You could attach a serial console and see all the messages during shutdown.

See http://www.tldp.org/HOWTO/Serial-HOWTO.html

and

http://www.linuxplanet.com/linuxplanet/tutorials/3164/1/

as well as your linux/documentation/serial-console.txt file

HTH
David


>>On Tuesday 28 May 2002 03:40, Brent Eckhout wrote:
>>
>>>I've just started using Red Hat 7.2 (Enigma).  It installed successfully
>>>but whenever I shut down the system, I get an "oops" error--  Bad EIP
>>>Value.  It looks like it's bombing on the command "halt -i -d -p".  Any
>>>suggestions for fixing this problem?
>>>
>>>If I need to turn off some auto shutdown functions, that's fine (BIOS or
>>>others).  I tried a Google search-- there were several folks with similar
>>>problems but no quick and dirty solutions.
>>>
>>What you need to do is find out which process is causing the EIP, i suggest
>>you read /usr/src/linux/Documantation/oops-tracing.txt that will show you
>>howto find that out.
>>
>>Next time you require help please include your kernel version and as much
>>information as possable that will help us to help you.
>>
>>I have redhat-7.2 on my laptop and have no such problems.
>>
>>
>>>Brent
>>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
