From: Ray Olszewski <ray@comarre.com>
Subject: Re: Printer error (errata)
Date: Tue, 17 Dec 2002 22:15:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021217220641.0210c590@celine>
References: <5.1.0.14.1.20021216085528.02134570@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DFFEF39.10801@myfreei.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

You did not provide some of the information I asked for (namely, the 
contents of /etc/resolv.conf), but from what you did provide, the likely 
source of the lprm problem is an inconsistency between your lpr setup and 
/etc/hosts . As you report below, your /etc/hosts file only identifies the 
machine as localhost.localdomain and not also as just localhost. 
Consequently, the resolver cannot associate localhost with your machine, as 
is illustrated by the ping failure you also report.

Probably you can fix the lprm problem by editing the entry (yeah, I know it 
says "Do not remove", but this is editing, not removing) so it reads:

         127.0.0.1    localhost.localdomain localhost

Do that and see if lprm now works. If not, tell us what the problem now 
loks like.

As to the underlying problem ... by "Additional attempts to print", do you 
mean trying to print different files? Preferably something nice and easy, 
like a short text file (/etc/hosts itself will do for a test)? Does "lpq" 
show anything significant? If you power-cycle the printer, does it now 
start to print? DId the printer successfully print other files prior to 
failing with the final page of the MapQuest one?

At 10:44 PM 12/17/02 -0500, Bill Pleasants wrote:
[...]
>>More immediately, how does your system do name-to-address resolution? 
>>Does it rely on /etc/hosts? If so, what are the contents of that file? Or 
>>does it use a nameserver? If so, is it accessable? And what are the 
>>contents of the /etc/resolv.conf file?
>
>I have some notion of what name-to-address resolution is for the internet 
>but not what it is for the Linux OS.  /etc/hosts contains:
>   "# Do not remove the following line, or various programs
>   # that require network functionality will fail.
>   127.0.0.1    localhost.localdomain
>
>>
>>Does the message really say "local host" rather than "localhost"? What 
>>result do you get if (from the command line) you try "ping localhost"?
>
>This is cut and paste:
>    "[bill@localhost bill]$ lprm
>    Get_local_host: 'localhost' IP address not available!"
>
>    "[bill@localhost bill]$ ping localhost
>    ping: unknown host localhost"
[...]
>>Finally, as to your immediate problem ... if the third page of a epecific 
>>document continues to fail to print, while other docs print fine (do 
>>they? you haven't said), i'd suspect something odd about the specific 
>>document. Generically, you need to investigate how general the printing 
>>problem is before we can tackle it systematically.
>
>I did not retain the file I first tried to print.  Additional attempts to 
>print have produced no response from the printer.  Thank you for your 
>offer to help.
[...]
--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
