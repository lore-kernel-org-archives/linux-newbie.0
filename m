From: Jojy Varghese <jojy.varghese@gmail.com>
Subject: regulator api
Date: Tue, 26 Apr 2011 19:00:39 -0700
Message-ID: <BANLkTik8BdNHwoKiuEuf_q3YLf5Dc19kuA@mail.gmail.com>
References: <BANLkTi=UPAQvz1jrQdJ7z7fjaUuiUydt4A@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type:content-transfer-encoding;
        bh=sUOrvxzOElT13ehcNSEzUYlccnK3NXxCiLK2ZjWeSHU=;
        b=rAnIFbC6qSMXJRjsRhvschjsppz7hHhye871J180bveFJ8+on9vzicNjkyfmRK8UKn
         6v2MHkS0lZ78KBlqOZSOFuKbFzskkS2Nl7IIuCuiwYngiwpbqqIUXzglmVIDGiZYRX4h
         7m4xwwQM/kkn+FY3Ib/su/Jw0iO+rzy6QYuY4=
In-Reply-To: <BANLkTi=UPAQvz1jrQdJ7z7fjaUuiUydt4A@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org

Hi
=C2=A0=C2=A0 I am not sure if the question belongs here (probably belon=
gs to
linux-power list which I didnt find). My questions is about the usage
of regulation_constraints. How do we initialize the constraints for a
regulator which needs to be powered on at boot time only?=C2=A0 I tried=
 the
"always_on" flag but that seems to be causing "regulator_disable" to
bypass the call to regulator_ops->disable. I need to disable the
regulator, say during power off.
=C2=A0Also if we turn on "has_full_constraints" for the board, any
regulator which is not "always_on" is disabled during initialization.
On the other hand, if the "has_full_constraints" is turned off, we get
warnings from the core.=C2=A0 So I am confused about the usage of the
regulator core API for the case of a regulator which needs to be
"enabled" only during init.


Thanks in advance,
Jojy G Varghese
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
