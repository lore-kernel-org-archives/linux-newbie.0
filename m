From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange shutdown problem with KDE2.2.2.
Date: Sun, 14 Apr 2002 12:22:56 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <2.2.32.20020414192256.00ca4358@[192.168.1.23]>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:13 PM 4/14/02 +0000, Richard Adams wrote:
>On Sunday 14 April 2002 13:02, Ola Theander wrote:
>> Dear subscribers.
>>
>> I'm running a SuSE 7.3 Professional Linux installation with KDE 2.2.2 on my
>> Dell Inspiron 8000. Unfortunately I have a problem when I'm shutting down
>> KDE somtimes the shutdown result in some very strange graphical effect, it
>> looks pretty much like a sheet of papper burning into ashes. After that the
>> computer locks and I have to turn of the power. The problem occurs pretty
>> unprovoked, I could have runned a normal KDE session and when I turn of the
>> KDE the problem occurs.
>>
>> Any help on this matter would be greatly appciciated.
>
>You say locks, have you tryed ctrl-alt-backspace to escape from X.??
>If you have a network, can you ping the (locked)-machine from another host.?
>And forall what kernel do you have running.??

The symption as described doesn't suggest anything to me, but, like Richard,
I wonder how thoroughly "locked" the computer is. Beyond his question:

        can you CRTL-ALT-F* to a command-line vt (assuming 
                you have some running)?

        can you establish a telnet or ssh connection (assuming
                you have the relevant servers running)? [This may
                be the most important one, since if you can do a
                remote connection, you can find out all the usual
                things about the state of the host.]

        can you still connect to any other services you have running
                (e.g., SMTP, DNS, HTTP, ident ... I don't really know
                what you use the host for so these are wild guesses)?

        does the host still respond to pings (I guess Richard already
                asked this one)?

After you reboot, do the logs contain any useful information from KDE or
from X itself?

How much memory does the system have? (Actual RAM and swap)


--
------------------------------------"Never tell me the odds!"---
Ray Olszewski                                        -- Han Solo
Palo Alto, CA           	 	         ray@comarre.com        
----------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
