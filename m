From: Chuck Gelm <nc8q@gelm.net>
Subject: renaming really long filenames
Date: Sun, 11 May 2003 17:14:49 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EBEBD49.2D45C5FE@gelm.net>
References: <5.1.0.14.1.20030510082110.01eae2b0@celine>
	 <20030510100903.GA1586@localhost.localdomain>
	 <5.1.0.14.1.20030510082110.01eae2b0@celine> <5.1.0.14.1.20030510091650.01eae530@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

 Howdy, Y'all:

 I have some very long filenames that I would like to shorten.
The filenames contain 'spaces' and some characters with tics or
apostrophes, and tildes over them.  I tried to change them from
a console session, but I don't know how to generate those special
characters from the keyboard...and I really don't want to type
the long filenames anyway.  :-|
OBTW, I have no GUI (X windows) on this computer.

 Is there a way to remove all characters < 023h && > 06fh
from these filenames?

find - sed - mv  ???

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
