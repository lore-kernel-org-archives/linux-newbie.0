From: Ray Olszewski <ray@comarre.com>
Subject: Re: Need a network traffic monitor
Date: Sat, 27 Nov 2004 19:00:58 -0800
Message-ID: <5.1.0.14.1.20041127184126.01f3a688@celine>
References: <10444189897.20041127192716@wa5rrh.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <10444189897.20041127192716@wa5rrh.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:27 PM 11/27/2004 -0600, Jim Reimer wrote:
>How can I set up to monitor what's coming and going on my gateway?
>Network is all hubs, no switches, and all I need to do is count
>bytes going to and coming from 192.168.0.1 - don't care where it
>came from or where it's going, I just need to count it.

Is 192.168.0.1 the gateway? Is it a Linux box? If both answers are yes, 
then just write a script that gets the bytes count for the various 
interfaces from "ifconfig -a" (or an equivalent) and subtracts the new 
value from the last value saved. Then run it on some regular basis through 
chrond.

If it is not a Linux box ... that's trickier, mainly because it is hard for 
a host to monitor a network it is not physically connected to, and you (in 
normal setups) have no other host that is conencted to both interfaces of 
the gateway. So in this case you'll need to describe the setup a bit more 
and be more exact about what data you are looking for.

Since it is all hubs, you can use any standard sniffer -- tcpdump and 
ethereal are the two I use here ... there are a couple of others whose 
names I forget --- to accumulate packet information on the LAN side. But I 
don't really know what to suggest for the external side.

There is an enormous number of specialized apps that offer pretty displays 
of one sort or another. Examples are nload, mrtg, iftop, the ttt* program 
set, ntop, and darkstat. It's hard to say what might best fill your exact 
needs, so check the package list of whichever distro you use (these 
examples all comes from the Debian-Sid package list, searching under 
"traffic").




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
