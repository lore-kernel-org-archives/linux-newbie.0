From: "Michael Anaya" <mianaya@edatatrace.com>
Subject: RE: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 14:39:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GCEJJNGGBACEIHHOKPPEKECDCJAA.mianaya@edatatrace.com>
References: <20040220213513.76258.qmail@web11401.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040220213513.76258.qmail@web11401.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


> You wrote:
> Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed
>  ifconfig eth0 192.168.0.1
> to set my box's ip address for my small LAN. What additional
> command
> should I use to write that address permanently, so that I do not
> have 
> to
> ifconfig each time I restart? I have read and reread O'Reilly's
> Running
> Linux and Learning Red Hat Linux; is there no process whereby
> the 
> settings
> are written to the correct files for startup, or must I (using
> vi, for
> example) edit certain files myself? 
> 
> Bill Stanard
> ***********************************************
> 
> I personally prefer editing a startup script but Redhat seems to
> do these things with GUI tools.
> Have a look here
> http://www.redhat.com/docs/manuals/linux/RHL-8.0-Manual/custom-guide/
> Especially the section III
> 
> cheers
> James
try using "linuxconf" as root. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
