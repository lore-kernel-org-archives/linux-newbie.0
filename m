From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: suddenly the "device" identification changed
Date: Sun, 22 Jun 2003 10:19:39 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EF5E52B.8090307@bcgreen.com>
References: <20030621.214715.1932.0.beolach@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030621.214715.1932.0.beolach@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: beolach@juno.com
Cc: hammer@revobild.net, linux-newbie@vger.kernel.org

beolach@juno.com wrote:
> What I would guess happened is somehow your IDE channels got reversed.
> This an option designed for those (like myself) who have their main
> disk drives on an offboard IDE controller. On a "normal" setup, the
> motherboards onboard IDE controller's two channels would be ide0
> and ide1, and any offboard controllers (which, on a laptop, you would
> most likely not have) would have channels ide2 and ide3.  If the
> option to reverse the IDE channels is selected, ide0 is swapped with
> ide2, as are ide1 and ide3.  This also affects the drive device ids.

The reason why this wouldn't bother DOS/Windows is that dos/windows
automatically renumbers devices.  Since the CD-ROM is still the
second IDE device on your box, it will still show up as D:

RedHat has a program called Kudzu that probes for changes like that...
It's reall good at popping up at boot time with messages like (The
Cdrom Drive at XX has been removed yes?? /// There is a new cdrom
drive at YYYY Yes??)

I'm surprised that mandrake doesn't have something similar.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
        the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
