From: Robin Doer <robin@robind.de>
Subject: Re: breaking up a zip file
Date: Tue, 1 Oct 2002 19:05:37 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021001170537.DA6A85466B@basicbox3.server-home.net>
References: <1033392605.3245.44.camel@Zebra>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033392605.3245.44.camel@Zebra>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Paul Furness wrote:
> I seem to remember seeing somewhere a handy Linux prog that will take a
> gz or zip file, and re-package it into a number of smaller zip files. I
> don't remember the command, but it was used something like:

An easy way to split a file into several pieces is 'split'. You can use it 
with files in text- and binary-format.
After it use 'cat' to merge the files.

Hope it helps
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
