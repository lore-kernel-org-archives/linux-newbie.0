From: Yurij Goncharuk <lnkgyv@gmail.com>
Subject: sk_buff free 2 bytes in headroom
Date: Mon, 14 Feb 2022 13:35:55 +0300
Message-ID: <519F1403-E3BB-40B8-B505-B52200BEBE52@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=sBcaS2ZWduN5Uh4O16LNB4JH09nsbQEjHmvJdTZvtQY=;
        b=K3XOk7MqZ5eqpIUDRq1okCPdfTVDCzrPo5g7aEchnYSgZCG8DIJ8zB3YptXtNEKvqV
         pV16FfV+fUpRuzgnVDxYLt2iFuaM77wOYnt49rmpFXkuySAWVmbZVd8VmcZQEGRBcen3
         svidIbLDGoBF55hisiM/Vvxn048CcEpnN6cLA0NlyOj1wi5/cmIJxL1hK3EE713dxkCt
         AU8AdwmeZdAFU+pNrw5SC0M/JCBeRQ+oeOEwww4iXFRQOaVGDE2/th+KhNcOH2GMxKW3
         51lgBK6YxT54++gBt5QQu7bvgxJ6ySR8ZK9tpgSUd8tNcGKseYXL/ikFKpuwrRXZ0DGY
         FqXw==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org
Cc: Yurij Goncharuk <lnkgyv@gmail.com>

Hello!

During NIC driver writing I read and understand about main struct =
sk_buff fields like headroom, data, tailroom, end, len, data_len. Main =
sources like: LWN(https://lwn.net/Articles/89597/) and Dave M =
posts(http://vger.kernel.org/%7Edavem/skb_data.html) told about there is =
2 bytes alignment used for IP header performance. This alignment should =
be used in every RX routine in NIC driver.

In my case when I've received struct sk_buff in start_xmit() I have =
struct sk_buff with 2 free bytes in headroom(skb_headroom(skb)). This 2 =
bytes I use for my purposes (skb_push(skb, 2)).

I'm worried of 3 things:

	=E2=80=A2 I've checked about 2 free bytes in headroom against =
several distros and find them in. This probably means that struct skb =
which passes to start_xmit() already aligned during TX. Is it true?
	=E2=80=A2 If it's true, why NET_IP_ALIGN macro during pr_info in =
start_xmit() print 0?
	=E2=80=A2 Can I check for free 2 bytes in headroom without =
module loading via sysctl, getconf or something else?

/*-----------------------*
Best regards!
Yurij Goncharuk
lnkgyv@gmail.com
/*-----------------------*

