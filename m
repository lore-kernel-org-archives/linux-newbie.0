From: "Armen Kaleshian" <akaleshian@kriation.com>
Subject: RE: Kernel seems to be blocking messages
Date: Sun, 22 Feb 2004 10:54:46 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <S261678AbUBVPwK/20040222155210Z+44333@vger.kernel.org>
References: <1077447455.8691.9.camel@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1077447455.8691.9.camel@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Paulo Jorge de Oliveira Cantante de Matos' <pocm@netvisao.pt>
Cc: 'Linux-Newbie' <linux-newbie@vger.kernel.org>

There is one more change you need to make so that you are able to do NAT.

In /etc/sysctl.conf, you need to add/change the line:
 net.ipv4.ip_forward = 1 

The above might be set to zero, and if it is, change it to 1. Unfortunately,
for this change to take effect, you'd need to reboot the system, but there's
a quicker way. After you add the above line to the file, do the following:

echo "1" > /proc/sys/net/ipv4/ip_forward

If routing has been setup correctly for this machine, then any machine using
it as its router should be able to access the outside.

Make sure that you set some rules for outside traffic, or else potential
crackers could break the machine in little time, especially if you have
services running on the box.

Good Luck!


: -----Original Message-----
: From: linux-admin-owner@vger.kernel.org 
: [mailto:linux-admin-owner@vger.kernel.org] On Behalf Of Paulo 
: Jorge de Oliveira Cantante de Matos
: Sent: Sunday, 22 February, 2004 05:58
: To: asterr
: Cc: linux-admin@vger.kernel.org; linux-newbie@vger.kernel.org
: Subject: Re: Kernel seems to be blocking messages
: 
: Hi,
: 
: You're right. The problem was the iptables configuration. I've done:
: iptables -F
: iptables -X
: 
: Then to share internet with my clients I've done:
: iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
: 
: however, it seems that it is not working, eth0 is my net connection.
: This should work, right? Maybe I'm doing something wrong in 
: my clients config.
: 
: Cheers,
: 
: Paulo Matos
: 
: 
: On Sat, 2004-02-21 at 03:22, asterr wrote:
: > I have seen this when iptables is running and pings are not 
: permissioned.
: > 
: > On Sat, 21 Feb 2004, Paulo Jorge de Oliveira Cantante de 
: Matos wrote:
: > 
: > > Hi all,
: > > I have a server running 2.6.2-rc1, and I was happily installing 
: > > vpopmail and reading the vpopmail gentoo guide (www.gentoo.org). 
: > > Somehow (don't ask me
: > > why) every net connections seem to stop and get blocked. Now I 
: > > cannot make any socket connection. For example:
: > > 
: > > # ping localhost
: > > PING descartes.geniousdomain (127.0.0.1) 56(84) bytes of data. 
: > > ping: sendmsg: Operation not permitted ...
: > > 
: > > Any ideas on how to unblock the situation? 
: > > 
: > > Cheers,
: > > --
: > > 
: > > Paulo J. Matos : pocm [_at_] mega . ist . utl . pt Instituto 
: > > Superior Tecnico - Lisbon Computer and Software Eng. - A.I.
: > >  - > http://mega.ist.utl.pt/~pocm
: > > ---
: > >         -> God had a deadline...
: > >                 So, he wrote it all in Lisp!
: > > 
: > > -
: > > To unsubscribe from this list: send the line "unsubscribe 
: > > linux-admin" in the body of a message to 
: majordomo@vger.kernel.org 
: > > More majordomo info at  http://vger.kernel.org/majordomo-info.html
: > > 
: > > 
: > > 
: > 
: > -
: > To unsubscribe from this list: send the line "unsubscribe 
: > linux-newbie" in the body of a message to majordomo@vger.kernel.org 
: > More majordomo info at  http://vger.kernel.org/majordomo-info.html
: > Please read the FAQ at http://www.linux-learn.org/faqs
: -- 
: 
: Paulo J. Matos : pocm [_at_] mega . ist . utl . pt Instituto 
: Superior Tecnico - Lisbon Computer and Software Eng. - A.I.
:  - > http://mega.ist.utl.pt/~pocm
: ---
:         -> God had a deadline...
:                 So, he wrote it all in Lisp!
: 
: -
: To unsubscribe from this list: send the line "unsubscribe 
: linux-admin" in the body of a message to 
: majordomo@vger.kernel.org More majordomo info at  
: http://vger.kernel.org/majordomo-info.html
: 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
