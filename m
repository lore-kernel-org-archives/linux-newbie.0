From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: creating an ISO image of $HOME
Date: Sun, 25 Apr 2004 12:06:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040425160633.GA609@lnx2.w8mch.ampr.org>
References: <Pine.LNX.4.44.0404231827220.1505-100000@legolas.personal.engin.umich.edu>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44.0404231827220.1505-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

Greetings; I've seen no replies yet.

On 04-23, Karthik Vishwanath wrote:
> Hello,
> 
> I need to back up my home directory (from an account that I do not use
> frequently any more). I was thinking of creating an ISO image of the same.
> How can I do that? 

	Check out the program 'mkisofs' that comes with 'cdrecord'...



> While here I had another question relating to backups - whats a good
> way/tool to incremently back up my $HOME directory (on an active account)?

	Run 'mkisofs' and pipe it to 'cdrecord' making a temporary
backup to a RW CD...


HTH.


    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
           
	     Anyone can pile complexity upon complexity;
                  only a genius can truly simplify..
.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
