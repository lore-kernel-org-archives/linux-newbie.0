From: Adam Luchjenbroers <adam@luchjenbroers.com>
Subject: 1024x768 SVGA Shell - won't work
Date: Tue, 4 Jun 2002 17:40:16 +0930
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020604080752Z316530-22651+74203@vger.kernel.org>
Reply-To: adam@luchjenbroers.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I recently downloaded and built kernel 2.4.18 and I am no longer able to
boot up with my shell running at 1024x768 (or I think thats what it was at,
parameter was vga=791). I included the SVGA console drivers and my
video-card drivers when I compiled it.

My old kernel was 2.4.8-26mdk (Mandrake 8.1) - does it have any patches
applied to it to allow this or am I doing something wrong.

The only other thing that seems weird is that it doesn't seem to be
rebuilding the kernel headers. Anybody know how to make it do this?

Any help that can be offered would be appreciated
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
