From: Ray Olszewski <ray@comarre.com>
Subject: Re: (OT) Re: Compiling sg.o only (2.4.20)
Date: Thu, 18 Sep 2003 17:31:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030918172743.01f7cfe8@celine>
References: <20030918.171104.16221.402161@webmail11.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030918.171104.16221.402161@webmail11.lax.untd.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:10 AM 9/19/2003 +0000, beolach@juno.com wrote:

>What does EXTRAVERSION do?
>
>-- pa3gcu <pa3gcu@zeelandnet.nl> wrote:
> > edit the Makefile change line 4 from;
> > EXTRAVERSION =
> > to
> > EXTRAVERSION = -1
> > save file;

It adds another "layer" of naming to the kernel. For example, if the kernel 
is 2.4.21, and you edit the Makefile to read
         EXTRAVERSION=-mykernel

then the compiled kernel will think its name is 2.4.21-mykernel . The 
kernel's "true" name, that is, not the name of the file that holds the kernel.

This affects some minor things, like what the kernel reports in response to 
"uname -a", and some bigger things, like the name of the directory in which 
it looks for modules. This last one probably matters to you ... I don't 
actually recall why Richard made this suggestion.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
