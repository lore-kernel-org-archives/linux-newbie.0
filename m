From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Slack9.0 and Loadlin???
Date: Thu, 19 Aug 2004 17:26:54 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040819212654.GA809@lnx2.w8mch.ampr.org>
References: <20040819184547.GA481@lnx2.w8mch.ampr.org> <20040820073610.595d8003.qwms-avib@dea.spamcon.org>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20040820073610.595d8003.qwms-avib@dea.spamcon.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: qwms-avib@dea.spamcon.org
Cc: linux-newbie@vger.kernel.org

On 08-20, qwms-avib@dea.spamcon.org wrote:
> Hal MacArgle wrote:
> >
> > loadlin e:\kernels\bare.i\bzimage initrd=e:\isolinux\initrd.img 
> 
> Normally I would expect to see an additional parameter:
>    root=/dev/ram

Greetings Steven: I tried that plus many others in the docs, both old
and new.. <grin>



> Also I believe loadlin expects a gzipped initrd.

	I never got that far.. If I tried without the rd I got
the same reply..

loadlin e:/kernels/bare.i/bzimage - still NG..

copied the bzimage to c:/ - same directory as loadlin invoking:

loadlin bzimage - still got the "loading............." stop, "Not an
image file."

Mind boggling to me.. Seems like loadlin didn't like that bzimage,
but I tried others - same problem..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20-1)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
