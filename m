From: Jeff Woods <Kazrak+kernel@cesmail.net>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively
  change all directories/files to 777
Date: Thu, 09 Dec 2004 14:12:23 -0700
Message-ID: <6.1.2.0.0.20041209140942.02faeb18@no.incoming.mail>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
 <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
 <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com
Cc: linux-newbie@vger.kernel.org

At 12/9/2004 04:11 PM -0500, Eve Atley wrote:
>Second question...
>How can I recursively set all files/directories to 777?
>Chmod -R 777 *.* ... Didn't seem to hit everything.

"Linux is not Windows."  Lots of filenames on Linux (and other Unix-ish 
systems) don't have a period in them.

If you *really* mean "everything" then:
         chmod -R 777 /


--
Jeff Woods <kazrak+kernel@cesmail.net> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
