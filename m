From: Ray Olszewski <ray@comarre.com>
Subject: Re: Fwd: Re: tuning iptables (was Who is running Red Hat 8.0
  and Roaring Penguin?)
Date: Thu, 05 Dec 2002 16:20:50 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021205154648.022562e0@celine>
References: <5.1.0.14.1.20021204163620.021046c0@celine>
 <5.1.0.14.1.20021204163620.021046c0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200212052135.gB5LZwi04232@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:35 PM 12/5/02 -0500, Haines Brown wrote:
[...]
> > >Overall, these rulesets are a mess. Just to get things working at
> > >the test level, I'd suggest you simply delete them and set policies
> > >to ACCEPT.
>
>I'm looking at packet-filtering-HOWTO and trying to make sense of
>it. I guess: # iptables -X will flush all chains. I assume I can do
>this while not on line, for else within thirty seconds a good portion
>of the world's population will be messing with my innards ;-(

No. -X deletes a chain completely, and it only works on the non-built-in 
chains (for example, on your setup you can -X RH-Lokkit-0-50-INPUT, but not 
a chain like INPUT or OUTPUT). To delete all the rules in a chain, you 
flush it with (for example) "iptables -F INPUT").

> > >If you verify that everything works right with that setup,
>
>Is flushing all chains a "setup"? That is, does it mean the table
>still exists in the kernel, but there is no longer any filtering of
>anything.

Not quite. It means that all packets drop through to each chain's POLICY. 
If you also set the policies all to ACCEPT (your setup already does this) 
as I said above, then all packets will pass through.

>By "working right," does that mean going on line with myself
>exposed in this way, and once there, try a fetchmail to see if it
>works?

That will do. Looking at your actual services list (below), you are not 
very "exposed". A five-minute test will be no big risk.

> > >you can begin to investigate setting up a working firewall. To
> > >comment on that part, I'd need to know a bit about the system in
> > >question, specifically ..
>
>I'm running a stand-alone workstation, with its sole NIC attached to a
>DSL adapter.
>
>As for the services I actually run, perhaps the services defined for
>my current machine will be indicative.

Is this the list that "netstat -l" generates? It appears to be, and that is 
exactly the list you want to consult (the first part of it, that is; the 
Unix sockets are irrelevent here).

>Active internet connections
>(only servers):
>
>tcp        0      0 *:32768                 *:*  LISTEN
>tcp        0      0 *:wnn4_Kr               *:*  LISTEN
>tcp        0      0 hartford-hwp.com:32769  *:*  LISTEN
>tcp        0      0 *:printer               *:*  LISTEN
>tcp        0      0 *:sunrpc                *:*  LISTEN
>tcp        0      0 *:x11                   *:*  LISTEN
>tcp        0      0 hartford-hwp.com:smtp   *:*  LISTEN
>udp        0      0 *:32768                 *:*
>udp        0      0 *:sunrpc                *:*

Offhand, I don't know why you have ANY of these services running (except 
"printer", assuming you have a printer attached to the system), given that 
your host connects only to the Internet, not to a LAN. I don't recognize a 
couple of them -- 32768, 32769, and wnn4_Kr .

If you only use SMTP to send mail (receiving it via a pop3 client like 
fetchmail), then you don't need to run an SMTP server. (It helps for queued 
messages, but you can periodically run the queue with a cron job.)

sunrpc is the portmapper, used mainly for NFS sharing of filesystems. 
Again, you don't need to run the portmapper if you aren't sharing 
filesystems; I'd suggest disabling it in /etc/rcd.#/ or whatever its RH 
equivalent is (the directory that contains the symlinks to the init scripts 
for your default runlevel).

Offhand, I don't know how to disable X11, because I don't normally enable it.

Or you might find it easier to add in this pair of iptables rules, which 
should block incoming connections while allowing responses to outgoing 
connections (though I'd very much welcome someone else here checking both 
my logic and my syntax, as I didn't test these):

iptables -A INPUT - -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT  -m state --state NEW,INVALID -j DENY


>Active UNIX domain sockets (only servers)
[deleted as irrelevant]

>I send and receive e-mail, upload and download via ftp but no one FTPs
>to my machine from the outside.

If I'm right that you use pop3 to get e-mail, then none of this involves 
running services on your machine.

>I'd like telnet, but have concluded
>its too risky to enable.

Good. Consider ssh if you want a way to shell-connect in from the Internet 
(though the quicky firewall I outlined above will block incoming ssh ... 
you'd need a rule that opens port 22 to --state NEW traffic).

>Ping, though, I find reassuring.

ping is handled by the kernel so is not a service in the same sense that 
the other things are. If you want others to be able to ping you, you'll 
need to precede the 2 rules above with this one:

iptables -A INPUT  -p icmp  -t echo-request -j ACCEPT

>Etc.

I trust you won't find it surprising that I cannot help you with "Etc". You 
need to ask about something specific.



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
