From: "Eve Atley" <eatley@wowcorp.com>
Subject: RE: Simple script to set permissions on folders daily - write script and cron it?
Date: Tue, 29 Mar 2005 10:54:35 -0500
Message-ID: <002f01c53477$9c88c9d0$580aa8c0@lanadmin>
References: <C6FD667B200BDF4F964C1BA77B796CE20F5E4A@cnbmail2.city.north-bay.on.ca>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C6FD667B200BDF4F964C1BA77B796CE20F5E4A@cnbmail2.city.north-bay.on.ca>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Mike Turcotte' <Mike.Turcotte@cityofnorthbay.ca>, linux-newbie@vger.kernel.org


That is my issue as well; Ray and others, I hadn't implemented umask because
it still appears Greek to me. I'm not against use umask; I just didn't 'get
it' upon reading stuff online. A link or two pointing to 'Umask for Idiots'
would be great!

Thanks,
Eve


P.S. For additional info, my setup is something like this:
Directories 'accounting' and 'hr' are created.
Groups 'accounting' and 'hr' are active in the system.
Users have been assigned to accounting and hr group.
Directories are then locked to those users with access to accounting or hr,
respectively.
Accounting and HR are currently set up as 
drwxrwx--T accounting
drwxrwx--T hr

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
