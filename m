From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: su fails
Date: Thu, 17 Jul 2003 12:55:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprsga90v2hmmv6x@smtp.arrakis.es>
References: <3F133105.7010309@bcgreen.com>	 <5.1.0.14.1.20030714080202.01ef9e68@celine>	 <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es>	 <200307142023.43039.pa3gcu@zeelandnet.nl>	 <oprsbc6ofjhmmv6x@smtp.arrakis.es> <3F133105.7010309@bcgreen.com>	 <5.1.0.14.1.20030715074706.01faa538@celine>	 <oprsc1u8ichmmv6x@smtp.arrakis.es> <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net> <3F15F7AE.8060705@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F15F7AE.8060705@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Wed, 16 Jul 2003 18:11:10 -0700, Stephen Samuel <samuel@bcgreen.com> 
wrote:

> I haven't had the timer for a full report, but, althought I'm not
> CLEAR that his box has been rooted, things like minor changes to
> su, and other wierd things failing are signs of a rootkit (yes,
> a clumsy one) being installed.  Having su suddenly start to
> give different messages is a sign  that SOMEBODY has changed
> SOMETHING.

It's not actually certain it has.

> At the very least, I think he should run something like chkrootkit to see
> if any well-known root kit is being used.

I've taken your advice here and the only possible anomaly it comes up with 
is "Warning: '//root/.sc_history' file size is zero".
All the rest is "nothing found", "not infected", "nothing detected", "not 
found", and "nothing deleted". Search for uspicious files and directories 
turns up 2 .packlist files, which I gather is fairly normal. One is 
identical to the one on the installation CD and the other corresponds with 
the Foo-matic packet I installed.
Now can I relax and have a beer?
Thanks,
Andrew
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
