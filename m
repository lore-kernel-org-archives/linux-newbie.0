From: "Jamie Risk" <risk@advancedbioelectric.com>
Subject: 'sed' syntax ...
Date: Tue, 23 Sep 2003 10:58:10 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bkpmjt$rts$1@sea.gmane.org>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I can't figure out form sed's "info" or "man" pages how to make the
facsmilie of the following work;

sed `s/ +$//` source.txt

I hope it's obvious that I'm trying to strip trailing white space from the
file "source.txt".

I can do this in TCL/perl and I know how to make a script file for sed work
too, but I can never readily remember how to get the command line syntax of
sed straight.

- Jamie



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
