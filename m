From: Kurt Sys <Kurt.Sys@rug.ac.be>
Subject: safety/permissions
Date: Mon, 17 Mar 2003 12:31:52 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1047900712.3e75b228b4b8b@mail.rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello all,

I have a quite serious problem (I guess) and I know, I can only blame myself.
Anyway, I want to solve it in a 'nice', non-drastic way.

I wanted to make my system somewhat safer, so I started, as it is recommended,
changing the permissions and groups. This seemed to work and I thought my system
was safe. But now, going online again, it seems as if I cannot mail... OK, this
is contraditionary, since I'm mailing, but now, I'm using webmail, but may
qmail-fetchmail won't work anymore.

So, I have installed qmail and fetchmail on a Debian system (Woody). Things were
ok before I changed (a lot of) permissions, since it is recommended here and
there to make nothing world-wide readable, and also writable and/or executable.
Initially, I had some problems other programs not working (due to wrong
permissions and/or groups), but most of them, I could solve, except this mailing
things.

If I run:
> echo "To: kurt.sys@rug.ac.be" | qmail-inject
I don't get an error or warning message. I can find all the messages I send
somewhere in /var/qmail/queue/mess/?? (?? to be replaced by a number), so they
are queued, but not sent.
> cat 155788 #This is a message I found in /var/qmail/queue/mess/9
Received: (qmail 18953 invoked by uid 1000); 17 Mar 2003 11:30:59 -0000
Date: 17 Mar 2003 11:30:59 -0000
Message-ID: <20030317113059.18953.qmail@ksys.rug.ac.be>
From: kurt@ksys.rug.ac.be
To: kurt.sys@rug.ac.be


I can't receive or send any mail. Anyone any idea how to solve this?

tnx a lot,
Kurt
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
