From: "Alan Bort" <333101@personal.net.py>
Subject: Re: problems with Apache, FTP, SAMBA
Date: Thu, 19 Jun 2003 16:39:03 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004f01c336a2$d28836d0$1f04810a@PCBORTM>
References: <5.1.0.14.1.20030619120722.0204d9a8@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I didn't mean to do a HUGE mail about this... so I made as short  as
possible.
----- Original Message -----
From: "Ray Olszewski" <ray@comarre.com>
To: <linux-newbie@vger.kernel.org>
Sent: Thursday, June 19, 2003 3:27 PM
Subject: Re: problems with Apache, FTP, SAMBA


> At 02:37 PM 6/19/2003 -0400, Alan Bort wrote:
> >Ok... her is my problem:
> >
> >                 I have apache2, proftpd and samba on two machines.
Though
> > I have them
> >configured correctly (at least I think so) I have the fopllowing
> >problem. Machine A has access to internet trough machine B. From A  I
> >can see and use B's apache perfectly. BUT from B to A I can't... I keep
> >getting 403 Forbidden. What am I missconfiguring on A?.
>
> Hard to say.
>
> Can A "see and use" its own apache server successfully? What about the
> Windows machine ("C") that you refer to later?
A... well. I didn't try... perhaps it would be a good idea. But that's not
really the problem. I need access from other machines, not local access.
I'll make sure when I get home. C doesn't work very well. when I tried to
close the FTP client it crashed. and whenever I try to open Internet
Explorer it opens infinite IEs. I'm getting a copy of windows to re-install.

>
> Are there any access restriction on A's apache (in access.conf, usually)?
No unless the default install comes with any sort of restritions there. But
i will check it when I get home.

>
> Can whatever directory and file gets accessed via the URL you are using be
> executed (the directory) and read (the file) by the userid that apache
runs as?
Of course. All files and the DocumentRoot are RWX for all users, and belong
to user:group alan:alan

>
> >                 FTP: I can't have access to anyone of the machines
trough
> > FTP. I am
> >having some troubles with the config... what should I configuree
> >again... what are the files that I should edit. When trying to connect
> >it just says conection refused.. nothing else. I'm having troubles with
> >this. I use xinet.d's pro-ftpd.
>
> "Connection Refused" most likely means that nothing is listening on the
ftp
> port. Or it could mean that the particular  IP addresses you are
connecting
> from are disallowed. Or, just barely possible, you could have a firewall
> rule in place that blocks access.
But the daemon is running (at least it should) I'll check when I get home.

>
> I surmise that you run ftp the usual way, through inetd (in your case,
> xinetd).
Yes. I do.
>
> Use "netstat -l" to verify that something is listening on port 21.
I'm not at home right now.  But I will ASAP.

>
> Check the xinetd configuration file to make sure it is listening on that
port.
HOW? I have in /etc/xinetd.d/pro-ftpd.conf the line disable=no. That should
be enough... right?

>
> Check hosts.allow and hosts.deny to see if they interfere with access.
Nothing wrong there.

>
> Check your firewall ruleset (probably with "iptables -nvL", if you run a
> 2.4.x kernel) to see if there are any rules that DENY access.
I tried #service iptables stop and still didn't work.

>
>
> >                 SAMBA: while on A samba works perfectly, on B it doesn't
> > seem to
> >work... whenever I try to connecto (from C, with windows) the server
> >goes down. I am using a standalone SAMBA, I think it's the latest.
> >Again... I think there might be some incompatibility problem with the
> >config file... and I'm not sure it installed correctly.
>
> This is too vague even to allow guessing ... I can't tell for sure if the
> problem is on A or B, and if "the server goes down" means the samba daemon
> process dies or the machine itself crashes. Check your logs and see what
> samba thinks happens. Run "top" while you are trying to connect and look
> for oddities.
Problem Solved. There was a version incompatibility. and I installed the new
samba wrong. I'm downloading the latest tarball and installing it today. The
problem, as usual, was the config File.

>
> >I would appreciate ANY help you can provide me. Thanks a lot.
>
> As a general matter, to get good advice, you have to provide good
> information. That means including both basic background details -- what
> Linux distro and version? what kernel? what versions of apps? ("I think
> it's the latest" is meaningless, unless you do daily, sometimes hourly,
> reinstalls of all your apps from their CVS trees) -- and relevant
specifics
> -- what URL you try to use, what IP addresses are involved, what the exact
> commands you send are, what the exact error messages are, and so forth.
I know... but I am a little newbie on linux, and I have troubles finding
logs sometimes.

>
> If you have a hard failure ("goes down"), information about the hardware
> involved might be relevant.
>
> Depending on the answers to some of the questions I posed, it might be
> useful to know the basic networking information for the two machines ...
> the output of
>
>          ifconfig -a
>          netstat -nr
>
> or equivalents (e.g., "ip addr show" and "ip route show") if you don't
have
> those commands.
>
> >Oh, BTW: how does ssh file transfer work???
>
> You use the scp command to transfer files over an ssh link. Its man page
> will provide the details.
Thanks. I'll read it.

>
> >Thanks.
> >
> >PS: what CVS server do you recomend??? and webdav?
>
>
> No recommendation on the first. On the second ... what's a "webdav"?
Sorry, I'm not sure if it's really called that way. but for webdav I mean a
web interface for the CVS server.



Thanks for your answer

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
