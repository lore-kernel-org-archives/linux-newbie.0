From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: directory size measurement
Date: Wed, 7 Aug 2002 19:02:30 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208071900140.8397-100000@Consulate.UFP.CX>
References: <200208062211.g76MBYk13820@hartford-hwp.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208062211.g76MBYk13820@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Haines.

> I need to address a situation in which somewhere, among thousands of
> directories and subdirectories, there's something taking up a lot of
> space.
> 
> What I need is a utility something like this: it reports the size of
> the ten largest subdirectories of a specified directory. Seems to me
> I did that with a pie chart utility under OS/2.
> 
> Is there such a thing for Linux? I'm running RH7.2.

Here's the command that I use to do just that...

	( cd $BASEDIR ; du */ | fgrep -v / | sort -n ) | tail

...and this ignores any files in the current directory.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
