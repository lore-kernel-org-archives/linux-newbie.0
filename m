From: Ray Olszewski <ray@comarre.com>
Subject: Re: Networking issue
Date: Fri, 03 Jan 2003 08:20:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030103080553.0211e270@celine>
References: <5.1.0.14.1.20030102230450.0211b230@celine>
 <5.1.0.14.1.20030102230450.0211b230@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200301032101.07628.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:01 PM 1/3/03 +0930, Adam Luchjenbroers wrote:
>On Friday 03 Jan 2003 4:39 pm, Ray Olszewski wrote:
>
>Got everything pretty much fixed, except for one thing.
>
>Something perioically seems to re-add a line to hosts.deny that forbids
>connections from everything but localhost.
>/proc/sys/net/ipv4/icmp_echo_ignore_all also gets reset to 1 (but this
>happened at a different time)
>
>/var/spool/cron has no entries

I infer (from the comment about cron) that these changes occur while the 
server is running, rather than as the result of a reboot. And when you say 
"/var/spool/cron has no entries", I understand you to mean that it does not 
have the usual subdirectories (since /var/spool/cron is a directory, not a 
file). Beyond that ... you'd get better help from someone who uses Mandrake 
than from a Debian user like me, since this behavior most likely reflects 
something idiosyncratic to Mandrake.

So ... all I can offer is some reflection on how I'd try to investigate an 
unknown problem of this sort. Putting aside obvious things like a Google 
search,  I'd first try to ping down "periodically" to a more precise value.

When you discover the change in /etc/hosts.deny, what is the timestamp on 
the file?

Look through your process list and see if there is some daemon running that 
might do things like this. Have you installed a firewall package (though 
I'd be astounded if Shorewall, the one you mentioned trying, did anything 
this silly ... it is a well-designed app)?

Might one of the other cron-job files (the ones in /etc) be running 
something that makes these changes?

For example, is something running one of your init scripts with the 
"restart" switch? Check (using "grep") all the init scripts (does Mandrake 
keep these in /etc/init.d or somewhere else?) for any references to 
hosts.deny or "icmp_echo".

That's about all I can think of for starters.


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
