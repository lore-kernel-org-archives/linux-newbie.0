From: Ulrich =?ISO-8859-15?Q?F=FCrst?= <heimwill@compuserve.de>
Subject: Do not delete files by mistake (was Re: retrieval)
Date: Sun, 2 Jan 2005 09:32:40 +0100
Message-ID: <20050102093240.1675fba2@sarge>
References: <20041231045512.81128.qmail@web52901.mail.yahoo.com>
	<20050101060653.D86614E4F9@heisspf>
	<20050101135911.GA14555@imperial.ac.uk>
	<4b0d6e0d05010200016a7c3abe@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4b0d6e0d05010200016a7c3abe@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

joy merwin monteiro <joy.merwin@gmail.com> wrote: 
> its really a trivial thing..... just alias rm to rm -i in your
> .bashrc
> 
or you can put the following into your .bashrc
alias rm='mv --target-directory=/root/Desktop/Trash $1 '

Ulrich
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
