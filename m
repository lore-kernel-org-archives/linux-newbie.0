From: "Axel Siebenwirth" <axel@hh59.org>
Subject: PPP connection TO ISP with PAP authentication
Date: Sat, 6 Jul 2002 23:08:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000001c22531$4bdfab50$8f6a07d5@prester>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I need to dial in to my ISP to get into the internet. ISP requires PAP
authentication.
Formerly I have used wvdial, but with Slackware I cannot use it anymore
because it needs the passwordfd.so plugin for pppd for PAP
authentication. And that plugin comes only with SuSE, binary only.
So now I have asked myself what I would need to do to set up a PPP
connection with PAP auth to my ISP "manually" i.e. without using any
tools. I'd like to know what is involved in that. I know about
pap-secrets file. I do not know how to dial, establish ppp connection,
do PAP authentication.
So I'd be really glad if someone could help in that direction. I also
know C, so if I would need to write some program myself, I could do so.
I just need to about the things that need to be done.
In my case it's an analog modem.

Thank you and my regards,
Axel


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
