From: Don Petrowski <dpetrowski@ci.collierville.tn.us>
Subject: Re: Bash Scripts
Date: 10 Oct 2002 16:13:20 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034284400.3222.7.camel@workwatcher>
References: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <003301c2709c$7ac11b00$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

1.  the first value passed from the command line would be referenced as
$1 the second as $2

2. run command  as part of an if statement. if the command execute
successfully the error result will be 0 and follow the then branch other
wise the else.

On Thu, 2002-10-10 at 15:34, Paul Kraus wrote:
> I have a script that mounts an samba shared drive, copies the contents
> if newer to the Linux box, and then umounts the share.
> 
> Sample script
> ---
> mount -t smbfs -o username=x,password=y //machine/share /mnt/network
> cp --recursive --preserve --verbose --parents --update /mnt/network/*
> /backup/machine \
> 	> log1.txt 2>log2.txt
> umount /mnt/network
> ------------
> End script
> 
> A couple of easy questions I can't seem to find answers to.
> 1. How can I pass in parameters from the command line to use as
> variables. 
> 	myscript value1 value2
> 2. How can I have it dump a message to a log file if something fails and
> then cease running the script. 
> 	if mount fail append to end of log1.txt "mounting failed",
> terminate script.
> 
> I was under the impression that you could have a script terminate if a
> command failed by having && separate the commands but this just
> generates an error.
> 
> Paul Kraus
> Network Administrator
> PEL Supply Company
> 216.267.5775 Voice
> 216-267-6176 Fax
> www.pelsupply.com


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
