From: "Shan Sinha" <sks@alum.mit.edu>
Subject: TCP as a module
Date: Sat, 26 Jul 2003 11:25:41 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000501c3538a$2cd22e30$6400a8c0@bombay>
Reply-To: <sks@alum.mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi everyone-

My web searches on this seem to turn up very little.  

Many people have suggested that TCP as a loadable module would be nice.
I am actually in a position where I think it might be necessary.

I am working on a research project on an ad-hoc 802.11 network spanning
through a local neighborhood.  There are multiple people developing on
the network with dozens of nodes all running 2.4.  Various kernels
across the network are updated at various times, but upgrades do happen
frequently.  Occassionally, kernels are uniformally updated across the
entire network.

My work specifically requires some TCP hacking.  As a result, I would
like to insulate my work from other kernel upgrades, so as not to have
to redo work.  Creating an isolated sandbox, while possible, is not
optimal, b/c the kernel upgrades are usually necessary and worth
incorporating. 

As a result, I would like to implement a new transport layer module
based on the TCP code, but with its own address family.  I realize I
might have to re-compile a few tools, but I use few enough of those,
that it should be no problem.  

Looking at the code, I assume that a starting step would be to figure
out how to implement TCP as a module.  

+ Has anyone actually done this or know of someone who has?  Any
advice/links would be useful.  
+ Or does anyone know for certain that doing this is just not possible?
If so, why not?

I'm willing to live with idiosyncracies in how such a TCP module would
behave for making my development life easier, I think this is necessary!
The idea would be that once some of my work actually demonstrates
positive results, to re-implement back into the core kernel code.

If you have a better solution, I would love to hear it!

Cheers-
Shan

Shan Sinha
Networks and Mobile Systems
Laboratory for Computer Science and AI
MIT

For information on the research project, visit
http://pdos.lcs.mit.edu/roofnet

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
