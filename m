From: Sergio Paracuellos <sparacuellos@lock-linux.com>
Subject: Exporting symbols between modules
Date: Wed, 24 Aug 2005 09:28:08 +0200
Message-ID: <1124868488.3073.10.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,

I'm new in this list and I have some problems exporting symbols in a
module to see them in other module.

In the module I want to export the symbol I do:

tList list;
EXPORT_SYMBOL(list);

I compile it and install without any problem.

And in the module I want to use them I declare list with "extern"
prototype:

extern tList list;

When I compile the module It says me that list is undefined, and I don't
know what I am doing wrong.

Does anybody know what is happening? 

Maybe a makefile example would be appreciated... 

Thanks in advance.

Regards,

	Sergio 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
