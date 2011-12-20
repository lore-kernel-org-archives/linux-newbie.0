From: "Anatoly Sivov" <mm05@mail.ru>
Subject: tcp_mtu_probe implementation details
Date: Tue, 20 Dec 2011 22:31:34 +0400
Message-ID: <op.v6swewuufzo5me@stalin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail;
	h=Message-ID:From:Content-Transfer-Encoding:MIME-Version:Subject:To:Date:Content-Type; bh=Oo7nQJcMia+UYtbfyv3XzvctW0ypXWmWKy07j0QAAcg=;
	b=LDuzcd9jSBhuJecP8ndaVqzcEsDrSCz6DVm8wDOlDq8DLwRnU+moB3xz/XY5C986/K/ekH7Mxx6Q9AQKQ5qQU7PC6jhLBgBkQjNyP5aMViKvmxP33d9wXgyoL1SCs6TV;
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"; delsp="yes"
To: linux-newbie@vger.kernel.org

Hi all,

Looking on TCP implementation in Linux I see that there are some things
that I don't understand in tcp_mtu_probe() implementation.
Could someone clear them for me or share the link to Linux PMTUD
documentation, please?
The first thing I don't understand is tp->snd_cwnd < 11 in
if (!icsk->icsk_mtup.enabled ||
             icsk->icsk_mtup.probe_size ||
             inet_csk(sk)->icsk_ca_state != TCP_CA_Open ||
             tp->snd_cwnd < 11 ||
             tp->rx_opt.num_sacks || tp->rx_opt.dsack)
                 return -1;
What is magic number "11" here?
The other question is about size_needed variable.
It is assigned to value probe_size + (tp->reordering + 1) * tp->mss_cache
And that is not clear for me.
What is this "(tp->reordering + 1) * tp->mss_cache" addition?

Thanks.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
