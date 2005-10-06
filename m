From: chuck gelm <chuck@gelm.net>
Subject: Re: Netconfig Fail
Date: Thu, 06 Oct 2005 14:52:48 -0400
Message-ID: <43457280.4050609@gelm.net>
References: <20051006091512.7dd839e8.heisspf@skyinet.net>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051006091512.7dd839e8.heisspf@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:
> Hi,
> 
> Slackware 10.1 kernel 2.4.29

  I have this same distribution in a few workstations here at home.

> My onboard LAN card on the mobo failed and I had to switch to an external LAN card.
> 
> I disabled in BIOS Ethernet onboard. Then I did netconfig. 

  What did you do with 'netconfig' ?

> Slackware found the LAN card I entered all necessary data and the configuration went w/o any errors.

  What did you enter?

> However, I cannot connect to the Internet. 
 > on booting after the MAC address was found
 > it should produce the the IP address which it does not.
 > It just sits for a while then continues booting.

  What is 'it' ?

 > The same happens when I do /etc/rc.d/rc.inet1.

  Try '/etc/rc.d/rc.inet1 stop && /etc/rc.d/rc.inet1'.
  e.g. 'stop' before you 'start'.
  But, really, I would like to see how you configured your
  interface first.

> Ifconfig naturally shows no connection just the loop-back.
> 
> Where is the hitch?

  	I need:
  What you entered into 'netconfig' and this should match your
  /etc/rc.d/rc.inet1.conf file.

  The output of 'ifconfig -a'.

HTH, Chuck

> I had no problem in Fedora4 to configure the new Lan card and in the gem Damned Small Linux distro,
  where I am now, the new LAN card was found w/o me doing anything.
> 
> Help for slackware appreciated.
> 
> Thanks & regards
> 
> Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
