From: Matthew Frederico <matt@ultrize.com>
Subject: Re: Parallel I/O??
Date: Wed, 30 Jun 2004 17:48:02 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1088635682.3022.1.camel@cs68206114-130.stx.rr.com>
References: <6CE6A442029B3347890ED9FCA94FAE0701EEB0CF@nsxmail.netscout.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6CE6A442029B3347890ED9FCA94FAE0701EEB0CF@nsxmail.netscout.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linux Newbie (E-mail)" <linux-newbie@vger.kernel.org>

On Wed, 2004-06-30 at 17:06, Gosselin, Mark wrote:
> Hi everyone,
> 
> Just a shot that someone might have read the same article I did. I read somewhere that there is a way to increase I/O 
> to IDE drives by using sysctl to set parallel I/O on or off... Is anyone familiar with this concept. If so, what's the proper 
> syntax for an entry in the /etc/sysctl.conf file to enable such an animal??? I'm running Red Hat Linux... on an IBM 
> desktop. Will gladly provide more info if needed...

I believe you are looking for /sbin/hdparm
# /sbin/hdparm --help

You'll see all the settings you can tweak.

# /sbin/hdparm -tT /dev/hda 
will give you a quick diagnostic of throughput.

Regards,

Matthew Frederico

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
