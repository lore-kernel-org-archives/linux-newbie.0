From: cr <cr@orcon.net.nz>
Subject: Re: ppp ain't talking
Date: Sun, 15 Jun 2003 01:22:27 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306140109.h5E19tgZ031253@dbmail-mx2.orcon.co.nz>
References: <5.1.0.14.1.20030613072033.0200b6b0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030613072033.0200b6b0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Saturday 14 June 2003 02:35, Ray Olszewski wrote:
> At 08:47 AM 6/14/2003 +1200, cr wrote:
> >I just installed Debian 3.0, (my second attempt), and after some effort
> > got kppp to log on to my ISP without immediately dying with an exit
> > status 2...
> >
> >However, now, while kppp logs on and stays on,  Kmail, Konqueror and
> > Galeon are not communicating with it.   I get 'SMTP error' from Kmail and
> > 'Can't find URL' from Konq, and nothing's going out on the modem lights. 
> >   There are no more informative error messages.
> >
> >I assume pppd uses some sort of stack to communicate with its clients, I
> >might even guess that maybe there are permissions that need setting.   Can
> >someone tell me where to look or point me to a good HOWTO?
> >
> >(I can't give detail diagnostics since I'm no longer 'in' Debian, I've
> >refitted the drive that has RedHat 7.2 on it - a straightforward but
> >non-trivial job - and when I think I know enough for another attempt, I'll
> >stick the Debian drive back in.   One advantage of using a stack of old
> > 2GB drives.... )
>
> pppd creates an interface ppp* (usually ppp0). What you call "its clients",
> really just applications that use TCP/IP, communicate over this interface
> in (from their point of view) the same way they would communicate over an
> eth* interface ... that is, by passing the packets on to the kernel, which
> uses the system's routing table to route them.
>
>  From the error report you post, I would be inclined to suspect a routing
> problem, or just possibly a DNS problem. After you have kppp running,
> examine your routing setup using these commands:
>
>          ifconfig -a
>          netstat -nr
>
> See if you can ping by address (a) the other end of the Pt-to-Pt route to
> your ISP and (b) the default gateway in your routing table.
>
> Next, are you running any firewall script for (probably) iptables? If so,
> it needs to re-run whenever a ppp connection is made, to handle the
> newly-assigned address properly.
>
> Finally, check /etc/resolv.conf to verify that the pppd startup script has
> added the ISP's DNS servers here, and verify (in /etc/nsswitch.conf, I
> think) that you have the system set up to use DNS.

Yes, KPPP when I first started it said it needed an /etc/resolv.conf  "with 
appropriate read and write permissions" (it didn't say what they were).   So 
I created one (just copied some other .conf file!), permissions -rw-r--r--,
owner root,  group dip     which appears to have been right since I noticed, 
looking later, it had added the DNS addresses.    I'll check the 
nsswitch.conf but I expect (since pppd has added the addresses) that it'll be 
right.

> pppd itself normally logs a bunch of stuff to /var/log/messages when it
> makes a connection. kppp probably does not change that. You might want to
> review the messages to see if they hint at the source of the problem.

KPPP shows a 'log' window which I suspect is probably just a copy of pppd's, 
since KPPP is (I think) just a front-end for pppd.    The KPPP log just 
showed a normal connection - login sequence - no sign of a problem. 

> If you need help interpreting the results of any of those commands, please
> post their output unedited, in full. Don't paraphrase or tell us "it looks
> right".

Yes, I do know that rule   ;)     However, there weren't any (plainly 
evident) error logs to post, (or if there were, I didn't know where to look 
for them).    I'll check /var/log/messages and others and save all that stuff 
for posting if I have to.    My problem is, of course, that while I'm 
actually experiencing the problem (under Debian), I can't get online to ask 
about it - I have to swap back to RedHat.

> One final long-shot possibility: an actual problem with the modem. Is it
> known good with Linux on this system? That is, does your alternate Red Hat
> setup work with it, or can you make a minicom connection to it and execute
> AT commands?

First thing I checked   ;)     Modem's a Dynalink, Hayes compatible, works 
fine with every Linux since RedHat 5.0.    And I did try KPPP's 'terminal' 
and yes, AT commands worked.    
With Debian, I had a little trouble with 'pppd died' as soon as the 
connection to my ISP was established, some fiddling with /etc/ppp/options and 
/etc/ppp/peers/provider fixed that.   Now KPPP dials up my ISP, logs in, and 
just sits there on line until I tell it to disconnect - which it wouldn't do 
if any of the settings were wrong, I think.    

> Oh, there is a PPP HowTo, which you can find at the usual places. I haven't
> looked at it in years, though, so I can't say how good it is.

I did look at it - had plenty of info on setting up the Internet side of 
things, but if there was anything on how PPP communicates with local apps, I 
couldn't spot it.

Anyway, many thanks for the information so far - I'll save this email to 
refer to when I put the Debian system back in.   Hopefully with its help I'll 
be able to find the problem.

Regards

Chris
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
