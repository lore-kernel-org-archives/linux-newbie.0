From: cr <cr@orcon.net.nz>
Subject: Re: recursively removing directories
Date: Sun, 30 Jun 2002 18:57:17 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206300548.g5U5m6O27285@virtualmail.orcon.net.nz>
References: <20020629.214414.-257403.0.matthewstapleton@juno.com> <3D1E63F7.1050200@lvcm.com>
Reply-To: cr@orcon.net.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D1E63F7.1050200@lvcm.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Joseph Jackson <skoidat@lvcm.com>, Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

On Sunday 30 June 2002 13:50, Joseph Jackson wrote:
> Matthew Stapleton wrote:
> > How do I recursively remove all the subdirectories and contents of a
> > particular directory in Linux? I know of 'rmdir', but this only works for
> > empty directories.  I need something like DOS's 'deltree'.
> >
> > Thanks,
> > Matthew Stapleton
> >
>
> Like this rm -rf /whatever  the -r is ofcourse recursive and the -f is
> force is it won't ask you.
>

... and be VERY CAREFUL using it!!!!

(man rm   will give you the syntax).

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
