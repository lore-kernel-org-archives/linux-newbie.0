From: Ray Olszewski <ray@comarre.com>
Subject: Re: problems with Apache, FTP, SAMBA
Date: Thu, 19 Jun 2003 12:27:49 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030619120722.0204d9a8@celine>
References: <1056047842.18934.15.camel@Gandalf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1056047842.18934.15.camel@Gandalf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:37 PM 6/19/2003 -0400, Alan Bort wrote:
>Ok... her is my problem:
>
>                 I have apache2, proftpd and samba on two machines. Though 
> I have them
>configured correctly (at least I think so) I have the fopllowing
>problem. Machine A has access to internet trough machine B. From A  I
>can see and use B's apache perfectly. BUT from B to A I can't... I keep
>getting 403 Forbidden. What am I missconfiguring on A?.

Hard to say.

Can A "see and use" its own apache server successfully? What about the 
Windows machine ("C") that you refer to later?

Are there any access restriction on A's apache (in access.conf, usually)?

Can whatever directory and file gets accessed via the URL you are using be 
executed (the directory) and read (the file) by the userid that apache runs as?

>                 FTP: I can't have access to anyone of the machines trough 
> FTP. I am
>having some troubles with the config... what should I configuree
>again... what are the files that I should edit. When trying to connect
>it just says conection refused.. nothing else. I'm having troubles with
>this. I use xinet.d's pro-ftpd.

"Connection Refused" most likely means that nothing is listening on the ftp 
port. Or it could mean that the particular  IP addresses you are connecting 
from are disallowed. Or, just barely possible, you could have a firewall 
rule in place that blocks access.

I surmise that you run ftp the usual way, through inetd (in your case, 
xinetd).

Use "netstat -l" to verify that something is listening on port 21.

Check the xinetd configuration file to make sure it is listening on that port.

Check hosts.allow and hosts.deny to see if they interfere with access.

Check your firewall ruleset (probably with "iptables -nvL", if you run a 
2.4.x kernel) to see if there are any rules that DENY access.


>                 SAMBA: while on A samba works perfectly, on B it doesn't 
> seem to
>work... whenever I try to connecto (from C, with windows) the server
>goes down. I am using a standalone SAMBA, I think it's the latest.
>Again... I think there might be some incompatibility problem with the
>config file... and I'm not sure it installed correctly.

This is too vague even to allow guessing ... I can't tell for sure if the 
problem is on A or B, and if "the server goes down" means the samba daemon 
process dies or the machine itself crashes. Check your logs and see what 
samba thinks happens. Run "top" while you are trying to connect and look 
for oddities.

>I would appreciate ANY help you can provide me. Thanks a lot.

As a general matter, to get good advice, you have to provide good 
information. That means including both basic background details -- what 
Linux distro and version? what kernel? what versions of apps? ("I think 
it's the latest" is meaningless, unless you do daily, sometimes hourly, 
reinstalls of all your apps from their CVS trees) -- and relevant specifics 
-- what URL you try to use, what IP addresses are involved, what the exact 
commands you send are, what the exact error messages are, and so forth.

If you have a hard failure ("goes down"), information about the hardware 
involved might be relevant.

Depending on the answers to some of the questions I posed, it might be 
useful to know the basic networking information for the two machines ... 
the output of

         ifconfig -a
         netstat -nr

or equivalents (e.g., "ip addr show" and "ip route show") if you don't have 
those commands.

>Oh, BTW: how does ssh file transfer work???

You use the scp command to transfer files over an ssh link. Its man page 
will provide the details.

>Thanks.
>
>PS: what CVS server do you recomend??? and webdav?


No recommendation on the first. On the second ... what's a "webdav"?


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
