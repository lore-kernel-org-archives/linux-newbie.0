From: Ray Olszewski <ray@comarre.com>
Subject: Re: Cron
Date: Tue, 20 Aug 2002 06:20:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020820061541.0224c250@celine>
References: <Pine.LNX.4.33.0208210534310.363-100000@C893988-a.stcla1.sd
 ba.home.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.33.0208210534310.363-100000@C893988-a.stcla1.sd
 ba.home.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Mike Keithley <mkeithley@pobox.com>, linux-newbie@vger.kernel.org

At 05:35 AM 8/21/02 -0700, Mike Keithley wrote:
>How does one get started using cron?  Thanks


Depends on what you mean. Assuming crond is running on your system (it 
usually will be, with out-of-the-box installs of the major distros), the 
usual way, on modern Linux systems at least, is for a user to create his or 
her list of cron jobs using the command "crontab -e". The man page for the 
crontab *file* (not the *app* -- access it with "man 5 crontab") will tell 
you the format needed.


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
