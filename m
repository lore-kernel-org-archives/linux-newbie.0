From: "Thiago F.G. Albuquerque" <tfga@terra.com.br>
Subject: Re: file transfer via telnet
Date: Sat, 22 Feb 2003 06:55:03 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030222065155.00a194f0@pop.bsb.terra.com.br>
References: <3E55D572.1B60BF79@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030221.140308.8.0.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


>However, to downoad a file by telnet, capture stdout so:
>
>telnet hostname | tee logfile
>....
>uuencode remotefile remotefile
>exit
>tr -d "r" < logfile | uudecode

Ok, I understand. But what is this 'tr -d "r"' for?

Thiago

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
