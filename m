From: Amin <raihan@citech-bd.com>
Subject: Re: gq<motion> not reformatting quote chars
Date: Sat, 22 Mar 2003 10:29:58 +0600
Message-ID: <20030322042958.GA907@localhost.localdomain>
References: <Pine.OSX.4.51.0303211820070.520@ackema.apple.com>
Mime-Version: 1.0
Return-path: <vim-return-33757-vim=quimby.gnus.org@vim.org>
Content-Disposition: inline
In-Reply-To: <Pine.OSX.4.51.0303211820070.520@ackema.apple.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: vim@vim.org

On Fri, Mar 21, 2003 at 06:22:57PM -0800, Matt Ackeret
wrote:

> I seem to remember there's a variable to set for the
> various quote chars, but I don't see that set on my other
> system.

Try ``:h fo-table''.  You might find something relevant
there.  Vim, as I'm using it right now, is reformatting
quoted text quite nicely.  My ``formatoptions'' are:
``tcql''.

HTH,
Yawar Amin
