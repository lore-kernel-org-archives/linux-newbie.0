From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: Fwd: Re: tuning iptables (was Who is running Red Hat 8.0
  and Roaring Penguin?)
Date: Thu, 5 Dec 2002 22:10:10 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212060310.gB63AA708375@hartford-hwp.com>
References: <5.1.0.14.1.20021204163620.021046c0@celine>
 <5.1.0.14.1.20021204163620.021046c0@celine> <5.1.0.14.1.20021205154648.022562e0@celine>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <5.1.0.14.1.20021205154648.022562e0@celine> (message from Ray
	Olszewski on Thu, 05 Dec 2002 16:20:50 -0800)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Ray,

Thanks for the pointers. They were a big help.

I gather that the simplest thing for me to do is first to make sure
that the INPUT chain's POLICY is set to ACCEPT:

      # iptables -nvL ...Chain INPUT (policy ACCEPT 1472 packets, 565K
      bytes)...

If the INPUT chain is set to ACCEPT, I guess I could change it with: #
iptables -P INPUT ACCEPT.

Then I can flush all rules associated with the INPUT chain by running:

	   # iptables -F INPUT

This would drop the packets to the INPUT chain's POLICY, which if set
to ACCEPT all packets will allow them to get through.

Then I can briefly connect on line and run fetchmail to see if files
get downloaded.

If this succeeds, Then it beomes a question of rebuilding appropriate
rules for the INPUT chain.

> >As for the services I actually run, perhaps the services defined
> >for my current machine will be indicative.

Unfortunately, I did not make myself at clear, for I was reporting the
result of my "current machine," not the one I'm trying to set up (I
swap two hard disks, one with RH 8.0, which I'm trying to set up, and
the other, with RH7.3, which because it is the only one from which I
can communicate, becomes my "current machine." I hoped that the
example of my current machine would give some idea of what I wanted,
but you have shone that it contained a lot of useless fossils.

Taking this list of "Active Internet Connections" that is reported for
my current machine and cutting out these fossils, and limiting myself
to tcp connections, I would want something like:

> >Active internet connections (only servers):
> >
> >tcp 0 0 hartford-hwp.com:32769 *:* LISTEN tcp 0 0 *:printer *:*
> >LISTEN tcp 0 0 *:x11 *:* LISTEN


Apparently, since I only use SMTP to send mail, I don't want the SMTP
server. I run fetchmail now from cron every half hour, and I could
readily combine that with whatever is needed to "help with queued
messages" (about which I'm unclear).

> Offhand, I don't know how to disable X11, because I don't normally
> enable it.

Unfortunately, I'm not clear if at this point I'm trying to remove
rules for the INPUT chain or add them. If I initially flushed rules,
then I need commands to restore a rule for my domain, for my printer,
and perhaps X11 (but you speak of disabling the fule, not createing
it).

I can only guess, but am I looking at a set of commands like this:

  # iptables -A INPUT printer
  # iptables -A INPUT hartford-hwp.com
  # iptables -A INPUT x11

The man iptables did not define or illustrate what it meant by
"rule-specifications."

> Or you might find it easier to add in this pair of iptables rules,
> which should block incoming connections while allowing responses to
> outgoing connections (though I'd very much welcome someone else here
> checking both my logic and my syntax, as I didn't test these):
> 
> iptables -A INPUT - -m state --state ESTABLISHED,RELATED -j ACCEPT
> iptables -A INPUT -m state --state NEW,INVALID -j DENY

If the syntax is correct here, are you saying these create all the
rules I need for my INPUT chain? Is the -A append command the way to
restore rules that have been flushed?

> If I'm right that you use pop3 to get e-mail, then none of this
> involves running services on your machine.

Yes, that's correct.

> >I'd like telnet, but have concluded its too risky to enable.
> 
> Good. Consider ssh if you want a way to shell-connect in from the
> Internet (though the quicky firewall I outlined above will block
> incoming ssh ...  you'd need a rule that opens port 22 to --state
> NEW traffic).

I'll consider once I've got things running.
 
> >Ping, though, I find reassuring.
> 
> ping is handled by the kernel so is not a service in the same sense
> that the other things are. If you want others to be able to ping
> you, you'll need to precede the 2 rules above with this one:
> 
> iptables -A INPUT -p icmp -t echo-request -j ACCEPT

No, I don't wish others to ping me.

> >Etc.

Well, I was just fumbling about for the kind of information you
needed, and the "etc" meant anything else that is usual and
necessary. I didn't have the savy to specify what those things might
be.

Haines 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
