From: Ray Olszewski <ray@comarre.com>
Subject: Re: PPP Question
Date: Tue, 24 Sep 2002 08:27:12 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020924082159.025e33a0@celine>
References: <200209240738.g8O7ct403062@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209240738.g8O7ct403062@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>, linux <linux-newbie@vger.kernel.org>

Nothing comes to mind based on the info you posted. Perhaps I (or someone) 
could suggest something if you posted

         1. the relevant portions of /etc/interfaces
         2. whatever the log files contain about an unsuccessful attempt

I omit the ppp config stuff from this list since you say it works if run 
directly (or at least I think you are saying that - I've never used kppp so 
am not *sure* that it relies on the same config files - if not, please post 
that info too, concealing only your password).

At 03:38 PM 9/24/02 +0800, Peter wrote:
>Hi,
>
>I have 3 ISPs of which one with 2 phone numbers (ppp1 and ppp2). Using the
>command /sbin/ifup pppx I can connect only to ppp0 and ppp1; ppp2 and ppp3
>will just sit doing nothing. The same happens using the guis rp3 and usernet,
>on the window waiting the bar just moves for ever back and forth.
>
>Yet using rp3-config -debug or kppp I can dial-up and connect with all 4
>numbers.
>
>Is there an explanation to this and can correction be made that command
>/sbin/ifup which I prefer can be used for all ppps?
>
>In wvdial.conf all looks correct the same in pap/chap-secret.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
