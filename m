From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Error building 'Hello,World' kernel Module
Date: Fri, 6 Aug 2004 07:59:36 +0200
Sender: kernelnewbies-bounce@nl.linux.org
Message-ID: <200408060759.36069.pa3gcu@zeelandnet.nl>
References: <1091659420.5427.14.camel@bijar.nec-labs.com> <4112B836.2060703@nec-labs.com> <1091769646.1853.6.camel@shine.naturesoft.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1091769646.1853.6.camel@shine.naturesoft.com>
Content-Disposition: inline
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:riel@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: shinemohamed_j@naturesoft.net
Cc: Lei Yang <leiyang@nec-labs.com>, Kernel Newbies Mailing List <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Friday 06 August 2004 07:20, Shine Mohamed Jabbar wrote:
> In my case the soft link {KERNEL SRC}/include/asm was not defined.
> Without that soft link it was not possible to include arch specific
> header files.
>
> So when I did a "make" (for first/one time) that link came
> automatically (by some scripts). Am I right ?

You are correct in using make, but in 2.6 kernels you can use;
make symlinks
In 2.4 kernels 'make dep' does the job.
Its not a script its the Makefile via make that places symlinks in 2.6 
kernels.

> Thanks and Regards,
> Shine Mohamed Jabbar

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

