From: jbradford@dial.pipex.com
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 24 Oct 2002 12:11:44 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210241111.g9OBBiFR000758@darkstar.example.net>
References: <0210232036180A.00497@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <0210232036180A.00497@unix.pa3gcu> from "pa3gcu" at Oct 23, 2002 08:36:18 PM
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

> > Does anyone know a way around this?  I can't hardly believe that all the
> > millions of Linux users have been, and still are, stuck with CD-RWs that
> > have to masquerade as SCSI devices.
> 
> There is no way around it, simply read the proper documentation, in this case 
> the CD-Writing HOWTO.
> IDE-ATAPI CD-RW devices only work with SCSI emulation as they only do in 
> widows as well.
> If you find a better way you can tell us millions how you did it then.

There will soon be a better way - Linus himself mentioned using the
standard IDE devices for cd recording, last Tuesday.

Expect to see cd recording with native IDE devices once the 2.6 kernel
is ready.

Incidently, IDE devices masquerading as SCSI is not as unusual as it
might first appear - ATAPI is basically a way to send SCSI commands
over the IDE bus.

John.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
