From: simon guinot <simon.guinot@laposte.net>
Subject: Re: Exporting symbols between modules
Date: Wed, 24 Aug 2005 16:59:22 +0200
Message-ID: <20050824165922.6f0d8c08.simon.guinot@laposte.net>
References: <1124868488.3073.10.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1124868488.3073.10.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sergio Paracuellos <sparacuellos@lock-linux.com>
Cc: linux-newbie@vger.kernel.org

hello

On Wed, 24 Aug 2005 09:28:08 +0200
Sergio Paracuellos <sparacuellos@lock-linux.com> wrote:

> Hi all,
> 
> I'm new in this list and I have some problems exporting symbols in a
> module to see them in other module.
> 
> In the module I want to export the symbol I do:
> 
> tList list;
> EXPORT_SYMBOL(list);

ok... you've better to use the EXPORT_SYMBOL_NOVERS macro to export the symbol whiteout the versioning information...
don't forget to define EXPORT_SYMTAB before include module.h...
you can add a -DEXPORT_SYMTAB in your Makefile or a #define EXPORT_SYMTAB before 
#include <linux/module.h> in your source file...

> 
> I compile it and install without any problem.
> 
> And in the module I want to use them I declare list with "extern"
> prototype:
> 
> extern tList list;
> 
> When I compile the module It says me that list is undefined, and I don't
> know what I am doing wrong.

a compilation error or a loading error ?
are you sure to have well defined the type tList in your "client" module ?
may be a shareed header between your modules is missing :) 

regards

simon
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
