From: lawson_whitney@juno.com
Subject: Re: setting up X under Slackware
Date: Fri, 16 Aug 2002 09:12:01 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020816.094311.134670320.14.lawson_whitney@juno.com>
References: <5.1.0.14.1.20020815230501.02105300@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020815230501.02105300@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: matthewstapleton@juno.com, linux-newbie@vger.kernel.org

On Thu, 15 Aug 2002, Ray Olszewski wrote:

> 3. What errors get reported when startx runs?

To see these, you are probably going to need to do something like:

startx >~/oops 2>&1

~/oops should then give the X version, driver used, and some interesting
error messages.

If your shell is bash, you can use

startx &>~/oops

Lawson
---oops---


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
