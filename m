From: Chris Largret <largret@gmail.com>
Subject: Re: Keyboard Indicator
Date: Thu, 15 Dec 2005 20:27:03 -0800
Message-ID: <1134707223.5806.1.camel@shogun.daga.dyndns.org>
References: <20051214103854.7f327198@localhost.localdomain>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051214103854.7f327198@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On Wed, 2005-12-14 at 10:38 +0800, Peter wrote:

> One problem is I sometimes forget to change back to let say US KB. I
> thought of having an xmessage display when I have switched the kb layout.
> 
> In the command line for the applet where I have e.g. "setxkbmap de" I tried to
> add " xmessage Kb set DE" which does not work.
> 
> Is there a way to put 2 commands or more in a command line applet?

A semi-colon character should work to achieve this:

$ echo "first command"; echo "second command"
first command
second command
$ 

I haven't tried this in the applet, but it should work.

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
