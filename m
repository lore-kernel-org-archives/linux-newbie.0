From: Bill Pleasants <Bill_Pleasants@aaahawk.com>
Subject: Re: Printer error
Date: Wed, 18 Dec 2002 23:33:13 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E017639.57A68A01@aaahawk.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

Ray Olszewski wrote:

> You did not provide some of the information I asked for (namely, the
> contents of /etc/resolv.conf), but from what you did provide, the
> likely source of the lprm problem is an inconsistency between your lpr
> setup and /etc/hosts . As you report below, your /etc/hosts file only
> identifies the machine as localhost.localdomain and not also as just
> localhost. Consequently, the resolver cannot associate localhost with
> your machine, as is illustrated by the ping failure you also report.

I failed to mention there is no resolv.conf file.

>
> Probably you can fix the lprm problem by editing the entry (yeah, I
> know it says "Do not remove", but this is editing, not removing) so it
> reads:
>
>         127.0.0.1    localhost.localdomain localhost
>
> Do that and see if lprm now works. If not, tell us what the problem
> now loks like.

    "[bill@localhost bill]$ lprm
    Printer 'Print@localhost' - cannot open connection - No such file or
directory
    Make sure the remote host supports the LPD protocol
    and accepts connections from this host and from non-privileged
(>1023) ports"

>
> As to the underlying problem ... by "Additional attempts to print", do
> you mean trying to print different files? Preferably something nice
> and easy, like a short text file (/etc/hosts itself will do for a
> test)? Does "lpq" show anything significant? If you power-cycle the
> printer, does it now start to print? DId the printer successfully
> print other files prior to failing with the final page of the MapQuest
> one?

After the change in the hosts file, I tried printing the hosts file from
gedit, another file from Open Office and your email from Mozilla.  (I
did not reboot.)

    "[bill@localhost bill]$ lpq
    Printer 'Print@localhost' - cannot open connection - No such file or
directory
    Make sure the remote host supports the LPD protocol
    and accepts connections from this host and from non-privileged
(>1023) ports"

Power cycling the printer did not print.  There is no error light
showing.  I don't remember if more than 2 pages printed.  It was a while
ago.  While I was logged on as root, I also changed the boot run level
from 3 to 5.

And then .. the Network Device Control failed to function so I rebooted.
And then .... the printer started and printed the 2 MapQuest pages (from
10/15 I see) and stopped with the "toner out" light flashing.  I pulled
the parallel plug, cycled the power, got the "ready" light, plugged the
parallel back and got the error light again.  clicking to print this
message did not change the printer.
And then ...... The NDC failed again so I changed the hosts file back,
rebooted and still no go.  So I copied this message to a floppy to take
to my MS computer to send.  So that's what the problem looks like.

>
> At 10:44 PM 12/17/02 -0500, Bill Pleasants wrote:
> [...]
>
>>> More immediately, how does your system do name-to-address
>>> resolution? Does it rely on /etc/hosts? If so, what are the contents
>>> of that file? Or does it use a nameserver? If so, is it accessable?
>>> And what are the contents of the /etc/resolv.conf file?
>>
>>
>> I have some notion of what name-to-address resolution is for the
>> internet but not what it is for the Linux OS.  /etc/hosts contains:
>>   "# Do not remove the following line, or various programs
>>   # that require network functionality will fail.
>>   127.0.0.1    localhost.localdomain
>>
>>>
>>> Does the message really say "local host" rather than "localhost"?
>>> What result do you get if (from the command line) you try "ping
>>> localhost"?
>>
>>
>> This is cut and paste:
>>    "[bill@localhost bill]$ lprm
>>    Get_local_host: 'localhost' IP address not available!"
>>
>>    "[bill@localhost bill]$ ping localhost
>>    ping: unknown host localhost"
>
> [...]
>
>>> Finally, as to your immediate problem ... if the third page of a
>>> epecific document continues to fail to print, while other docs print
>>> fine (do they? you haven't said), i'd suspect something odd about
>>> the specific document. Generically, you need to investigate how
>>> general the printing problem is before we can tackle it systematically.
>>
>>
>> I did not retain the file I first tried to print.  Additional
>> attempts to print have produced no response from the printer.  Thank
>> you for your offer to help.
>
> [...]
> --
> -------------------------------------------"Never tell me the
> odds!"--------
> Ray Olszewski                    -- Han Solo
> Palo Alto, California, USA              ray@comarre.com
>
-------------------------------------------------------------------------------

>
>
> -
> To unsubscribe from this list: send the line "unsubscribe
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
