From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: block-major-33
Date: Sun, 29 Sep 2002 15:09:40 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020929150940.H1156@neutrino.particles.org>
References: <200209282047.g8SKl3v06435@ev6.be.wanadoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200209282047.g8SKl3v06435@ev6.be.wanadoo.com>; from hammer@revobild.net on Sun, Sep 29, 2002 at 09:31:25AM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

On Sun, Sep 29, 2002 at 09:31:25AM +0000, Heimo Claasen wrote:
> With that fstab line I would get a "[Failed]" message with booting,
> but a manual 'mount /cf-card' when needed will indeed mount it, if it
> wouldn't mount automatically when the card is inserted or taken out
> (task of that "cs-mgr" which obviously watches one of those pins.)

The kernel hasn't load the appropriate module when fstab is parsed
during the boot process, so you get the error.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
