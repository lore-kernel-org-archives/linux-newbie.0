From: "Fred ." <eldmannen@gmail.com>
Subject: How to change delayed ACKs?
Date: Sat, 16 Oct 2010 23:57:30 +0200
Message-ID: <AANLkTi=AW6NMHkjkbFF=jUCc7YD3Z2T9VatpR5aeh9LW__14662.6216861934$1287266267$gmane$org@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:content-type;
        bh=b+ugcNCvmnzd4ieEW27ppTPlzOi3AZrLTrF8PmrmO6I=;
        b=LhL7qqmt+/jGvu+WdtBhn0YK9UoYYykSMJqD2NZzM5l9cbcIkDrspbuLTXLWSCbIHr
         c8cv8hNDQ5oWffGmWn0ClMPdGzOd+qiuactRk5z8Jxlz8Y2+nnXZi+6o0nnA/6H+nK95
         b4Ug57MQNgFd4xWXz+OoY97xyuXKS3KtnP5D4=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-net@vger.kernel.org

I play online games.
Someone told me about Leatrix Latency Fix.
http://www.wowinterface.com/downloads/info13581-LeatrixLatencyFix.html

ACKs are delayed. The latency fix works by changing setting to
decrease that delay.

On Windows it modifies 'TCPAckFrequency' in the registry.

On FreeBSD and Mac OS X;
sudo sysctl -w net.inet.tcp.delayed_ack=0

This key doesn't seem to exist on Linux.
error: "net.inet.tcp.delayed_ack" is an unknown key

Is there any way to reduce the delay of delayed ACKs in order to
increase performance in online gaming?

P.S im not subscribed to mailinglist
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
