From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Setting permissions via SSH upload to 777
Date: Wed, 13 Oct 2004 15:11:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000901c4b158$6dbc1e60$500aa8c0@lanadmin>
References: <15DCB059E3814E448A1CFFF04F78F7A703917246@s99mail08>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15DCB059E3814E448A1CFFF04F78F7A703917246@s99mail08>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "'Little, Chris'" <Chris.Little@okdhs.org>
Cc: linux-newbie@vger.kernel.org


Will that allow any read/write? I suppose not at 555. Is there another
way to give write ability, short of the user setting it him/herself?

At any rate, how can I go about giving the most permissions upon upload?

Thanks again,
Eve

-----Original Message-----
From: Little, Chris [mailto:Chris.Little@okdhs.org] 
Sent: Wednesday, October 13, 2004 3:07 PM
To: 'eatley@wowcorp.com'
Subject: RE: Setting permissions via SSH upload to 777


At best, I believe, you will get 555.  I don't think it will allow the
execute bit to be set.

-----Original Message-----
From: Eve Atley [mailto:eatley@wowcorp.com]
Sent: Wednesday, October 13, 2004 1:43 PM
To: linux-newbie@vger.kernel.org
Subject: Setting permissions via SSH upload to 777



When someone SSH's into our Redhat Linux box, all files that are
uploaded are set to read-only. How can I set it so files are
automatically set to 777, or 775 at the very least?

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
