From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: core file
Date: Thu, 11 Jul 2002 14:56:00 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020711145600.A1155@neutrino.particles.org>
References: <20020711101522.10749.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20020711101522.10749.qmail@web2.mailbox.hu>; from korosiakos@mailbox.hu on Thu, Jul 11, 2002 at 12:15:22PM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Korosi Akos <korosiakos@mailbox.hu>
Cc: Newbie <linux-newbie@vger.kernel.org>

On Thu, Jul 11, 2002 at 12:15:22PM +0200, Korosi Akos wrote:
> I am just curious in the next thing:
> What could one start with a core file, which was created
> when a program crashed.

% gdb ./foo ./core
...
% (gdb) where

Assuming foo is the crashed app, the above will show you where it
crashed. A stack backtrace (bt) is also useful.

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
