From: "Jake" <pacha@gmx.at>
Subject: RE: Question on character device
Date: Thu, 28 Aug 2003 16:18:02 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <005601c36d6f$31948400$f400a8c0@Mary>
References: <36993D449C7FA647BF43568E0793AB3E061DB8@nevis_pune_xchg.pune.nevisnetworks.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <36993D449C7FA647BF43568E0793AB3E061DB8@nevis_pune_xchg.pune.nevisnetworks.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: 'Girish Kale' <girish.kale@nevisnetworks.com>
Cc: 'linux-newbie' <linux-newbie@vger.kernel.org>

> When I want to write to a character device driver from the=20
> user space, is there any limitation on the size of data that=20
> can be transferred. I want to write approx 64M of data to the=20
> character device driver from the user space.

I=B4m not absolutely sure, but I believe there are no limitations on ho=
w
much data can be sent to a character device. If you store all the data,
the only limit will be your memory. If you write more data than there i=
s
free memory, you=B4re system will start swapping, get really sloppy and
will eventually die.

		Jake

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
