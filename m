From: Ray Olszewski <ray@comarre.com>
Subject: Re: Firewall's performance
Date: Thu, 31 Oct 2002 23:15:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021031230329.020baa10@celine>
References: <20021101050514.47069.qmail@web40404.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20021101050514.47069.qmail@web40404.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:05 PM 10/31/02 -0800, Mike Ni wrote:
>folks,
>
>I am looking for information that can help me better
>understand firewall's performance. Could anyone point
>me out any good web site or mailing list where I can
>get such information?

Since this is a Linux list, I assume you are asking about Linux-based 
firewalls. There are many; the one I am most familiar with is LEAF 
(leaf.sourceforge.net), a collection of specialized Linux distributions 
(software only, runs on most any i86 hardware). You might look to it for 
more focused help.

Or you might ask your questions here a bit more directly. "Persormance" is 
such a vague topic that I don't know where to begin.

>We are working on a project * it is becoming obvious
>we need to watch out the network security. In short,
>the question we are working on are:
>
>(1) Whether there is a need to allocate a dedicated
>firewall to protect the website rather than the entire
>enterprise network due to performance concern.

Again, what do you mean by "performance"? Speed? Safety (tightness of the 
firewall ruleset)? Isolation of the DMZ (the network containing 
externally-visible servers) from the LAN ("the entire enterprise network")? 
Something else?

Without knowing a lot more about your circumstances, I could not begin to 
advise you. I suppose the key questions involve how much external bandwidth 
you have, how much traffic you expect (or see) to the Web server(s), what 
OS(s) and Web-server software the Web servers run, and what the 
capabilities of your existing firewall are. In almost all cases, I would 
recommend putting all your externally-visible servers (not just the Wevb 
server; your e-mail server and any externally-authoritative DNS servers) on 
a different LAN from your internal workstations and servers, but many 
firewalls -- including most of the LEAF configurations available -- support 
such DMZ networks.

Running a good firewall is no substitute for keeping the Web server itself 
secure (since a firewall is *supposed* to let port-80 traffic through to a 
Web server).

>Is it common to see a firewall get overrun by the
>Internet traffic?

What do you mean by "overrun"? A DoS attack? (I don't know how common they 
actually are.)  A security breach? (Depends on the specific firewall and 
the competence of the local sysadmin.) Something else?


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
