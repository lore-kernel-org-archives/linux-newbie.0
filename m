From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: rpm installation help
Date: Tue, 11 Nov 2003 12:59:02 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5839b0589eb1.589eb15839b0@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,
I am trying to upgrade from glib-1.2.10-8 to
glib-1.2.10-10 in my RH 8.
The problem is that while installing the RPM, i get
dependency error with glibc 2.3.2, which in turn
needs glibc-common 2.3.2. When I try to install
glibc-common 2.3.3, it conflicts with an earlier
version. Removing that earlier verison also fails,
as there are many installed programs depending on it.
I have tried using the force, replacepkgs,
replacefiles options in the rpm command, but they
failed too.

Any clue how I should procede?

Thanks,
Anshuman

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
