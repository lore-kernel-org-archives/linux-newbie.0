From: zavandi <zavandi@gmail.com>
Subject: Re: bash problem
Date: Wed, 2 Mar 2005 11:36:09 +0200
Message-ID: <321aa0d2050302013660343499@mail.gmail.com>
References: <321aa0d20503011009d1b9060@mail.gmail.com>
	 <42250CA7.6080103@comcast.net>
Reply-To: zavandi <zavandi@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <42250CA7.6080103@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Conway S. Smith" <beolach@comcast.net>, linux-newbie@vger.kernel.org

Conway S. Smith <beolach@comcast.net> wrote:
> [...]
> So, that means either I'm wrong and it's not something to do with the
> for loop being executed in a subshell, or else the bash script sets up
> the subshell's environment so that RANDOM works correctly.

It could very well be about the for loop being executed in a subshell,
but it's also about the particular number 0. If I replace "0" with "1"
(or any other 15-bit int) it works correctly.

> Anyway, good luck with whatever you're doing that needs this.

Actually, I was trying to find the maximum value for $RANDOM. Then I
read the man page and remembered I was never getting the minimum
value.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
