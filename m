From: Chuck Gelm <nc8q@gelm.net>
Subject: Who is running Red Hat 8.0 and Roaring Penguin?
Date: Sun, 24 Nov 2002 13:55:11 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE1208F.F3D58506@gelm.net>
References: <200211232355.gANNtx703441@hartford-hwp.com> <3DE102FA.85D8F85D@gelm.net> <200211241801.gAOI1Wa28470@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>, Linux Newbie <linux-newbie@vger.kernel.org>
Cc: linux-newbie@hartford-hwp.com

 Please address your linux-newbie messages to
linux-newbie@vger.kernel.org
 and not to 
linux-newbie@hartford-hwp.com
 and not to
nc8q@gelm.net without linux-newbie@vger.kernel.org

 as I cannot 'reply' to linux-newbie@vger.kernel.org
 without adding that address manually &
 I see no reason to reply to you alone.

 If you cannot do this, I'll edit to suit. ;-)

Haines Brown wrote:
> 
> Chuck,
> 
> >  I use Roaring Penguin PPPOE. http://www.roaringpenguin.com/pppoe/ I
> > selected permanent connection, but I am unsure if this applies to
> > eth# or ppp#. :-| 'adsl-setup' and 'adsl-start' are script names
> > with my application (Roaring Penguin).  I am assuming that your
> > using the same or similar.
> >
> >  How do you know "I definitely have eth0 set to be permanently up" ?
> >  Actually, I'm betting that it is ppp# that is set to demand or
> >  permanent.
> 
> Yes, I also use the roaring penguin, My eth0 is made active during
> boot, for I can run ifconfig and see that it is up as soon as I've
> finished booting. 

 Yes, AFAIK, the eth# device that PPPOE is going to use should be up.
However, it should not have an IP address.

>  The ppp0, on the other hand, is not up until
> adsl-start is run. That is, ppp0 is on demand, while eth0 is
> permanent. That's my impression, anyway. pppd is a daemon which I
> assume is meant normally to be on demand.

 This is your choice for ppp#: demand or permanent.
For a DSL connection, I recommend permanent, especially if you are
having problems with demand.

> Actually, when I run redhat-configuration-network, I see not only
> eth0, but also ppp0 (trying to be active). That's not right. ppp0
> should not appear (or at least it does not show up under RH7.3 as I
> speak to you). I may have some kind of problem in that pppd is trying
> to start ppp, rather than my starting pppoe by means of adsl-start

Seems reasonable.

> >  It seems that your dsl connection (PPPOE?) application is setting
> > up IPCHAINS, but your kernel is using IPTABLES.
> 
> That may be, but then a good percentage of folks who get RedHat 8.0
> must reconfigure and recompile their kernel, which I doubt.

Who is running Red Hat 8.0 and Roaring Penguin?

 I run Roaring Penguin v3.3 and it created IPCHAINS.
I run kernel 2.2.19 as it uses IPCHAINS by default.
IIRC, kernel 2.4.x uses IPTABLES by default.

So, perhaps your Roaring Penguin installation created an
IPCHAINS ruleset and your kernel is using IPTABLES.

Again:

- Create an IPTABLES ruleset for your current kernel.
  Roaring Penguin did not do this. (?)

- Rebuild your current kernel to use IPCHAINS.
  The IPCHAINS ruleset you choose when you configured Roaring Penguin.

HTH, Chuck

> > - configure IPTABLES to replace your dsl-connection application's
> > attempt to use IPCHAINS.
> 
> This was my inclination, for I gather IPTables are better. I've got a
> copy of Bastille, which should make my life a lot easier, not only
> spotting the source of any difficulty, but setting up a secure set of
> rules.
> 
> Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
