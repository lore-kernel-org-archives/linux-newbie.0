From: Carl <carl@anexia.co.uk>
Subject: Re: Is there a way to "test" a serial
Date: Mon, 14 Oct 2002 17:15:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021014171242.033c0128@interzone.anexia.co.uk>
References: <CPIMSSMTPU05i9yzu230000013a@cpimssmtpu05.email.msn.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.10.10210141648480.675-100000@oakley.chf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: "Majordomo leben.com" <linux-newbie@vger.kernel.org>

At 16:49 14/10/2002 +0100, Mike Ricketts wrote:
>On Mon, 14 Oct 2002, Alan Womack wrote:
>
>> What I'd like is a console app that would pick up any gibberesh the
>> mouse would generate while I scroll it 's test wheel.
>> 
>minicom, maybe?
>Or possibly a simple cat /dev/ttyS0 might work?
>

I have a modem type device that when i echo a specific set of characters
to it dumps the buffer back at me. To test the setup is correct i do:

   echo XXXX > /dev/ttyS0;cat < /dev/ttyS0

So this type of thing may work:

   cat < /dev/ttyS0

--
Carl

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
