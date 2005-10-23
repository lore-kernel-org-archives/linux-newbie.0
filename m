From: Laurence Pithie <pithie@tiscali.co.uk>
Subject: Re: Epiphany Browser Fails
Date: Sun, 23 Oct 2005 22:40:35 +0100
Message-ID: <m3ll0j9ajw.fsf@countzero.home>
References: <20051022104721.2ae3957d@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051022104721.2ae3957d@localhost> (Peter's message of "Sat, 22 Oct 2005 10:47:21 +0800")
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

the mozilla binary that comes with slackware 10.2 is in
/usr/lib/mozilla-1.7.11/mozilla-bin running ldd on that will give you
the (missing) libraries (As you installed an old version the version
suffix may differ). I'd uninstallthe old copy of mozilla you
regressed to and reinstall the one that comes with Slack 10.2. 


10.2 has dropped support for gnome. The gnome support was never one of
slacks strengths. I've installed dropline-gnome which is built for
slack and it just works here. YMMV of course :-)

HTH
-- 
The intelligence of any discussion diminishes with the square of the
number of participants.
		-- Adam Walinsky
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
