From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: incoming DNS request ?
Date: Thu, 24 Jun 2004 12:55:21 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <f8692ef89107.f89107f8692e@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for the exhaustive answer/query.
The "different machine" was in the same subnet. I did actually ping from it to make sure the DNS server is reachable. The DNS server is running myDNS.

I think the 'dig' actually tested the deamon, as I didn't touch the /etc/resolve.conf, and I have no nameserver setup.

I managed to solve the problem by playing with the firewall configuration (using the GUI). I just had the check "eth0" under "trusted devices", and
it worked.

Thanks.


> >It seems like DNS traffic is being firewalled off. Is that a 
> possibility?>If yes, how do I fix this?
> 
> A possibility? Yes. How to fix? Depends on what's causing it. You 
> don't 
> report enough to tell.
> 
> I assume you are talking about running BIND (named) on the host in 
> question. If you are using a different daemon, you need to mention 
> that, 
> along with any relevant details.
> 
> Are you even running any firewall on the DNS host? If so, checks 
> its rule 
> list using (probably - this assumes a 2.4.x kernel) "iptables -
> nvL" and 
> look for entries involving UDP/53. If there are none but there is 
> an 
> extensive ruleset, see if anything else might be DENYing or 
> REJECTing 
> UDP/53 ... or post the (complete, unedited) ruleset here to get 
> help with 
> analysis of it. (That you get a "connection timed out" makes DENY 
> more 
> likely than REJECT, BTW.)
> 
> Does "netstat -ln", run on the DNS host, confirm that it is 
> listening on 
> UDP/53 on the relevant interface?
> 
> Is the "different machine" you tried from on your LAN or offsite, 
> connecting through your ISP? In the first case, confirm that the 
> "different 
> machine" can ping the DNS host. In the second case, consider the 
> possibility that your ISP blocks traffic to UDP/53.
> 
> Are you sure the "dig" test actually tested the DNS daemon on the 
> host? And 
> not just that it can do DNS resolutuion *somehow*? For example, is 
> the ONLY 
> nameserver entry in /etc/resolv.conf a pointer to the host itself 
> (probably 
> as 127.0.0.1)?
> 
> Finally, could there be some configuration problem on the 
> "different machine"?
> 
> That's all that I can think of right now. Report in more detail 
> and I may 
> be able to offer more focused suggestions.
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
