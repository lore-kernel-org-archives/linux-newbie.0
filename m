From: Amin <raihan@citech-bd.com>
Subject: Re: How do I stop GUI from autoloading?
Date: Sat, 10 May 2003 21:43:03 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030510154303.GA776@localhost.localdomain>
References: <20030510100903.GA1586@localhost.localdomain> <Pine.NEB.4.33.0305101323240.10717-100000@sdf.lonestar.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.NEB.4.33.0305101323240.10717-100000@sdf.lonestar.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, May 10, 2003 at 01:29:37PM +0000, Charlotte Miller wrote:

> These instructions sound rather convoluted.  Why would this individual
> need to boot from an installation CD just to edit a file?  I assume one
> needs root priviledges to edit /etc/innitab, but wouldn't it be alot
> easier to open a console, then su to root, then invoke a word processor
> and open the file with it?  Or invoke MC from that root console, navigate
> to the file using it, then use MC's editor to edit the runlevel argument?
> Please clarify on the need to do the editing from other bootable media.
> 
> Thanks, James

My reasoning was, the original poster couldn't get into a
graphical console (such as ``xterm'') because his/her X
configuration was incorrect and graphical environment was
unworkable.  Also, if he/she tried to do a
[Ctrl]-[Alt]-[Backspace] to go to text mode, the only effect
that had was, X restarted itself --- because ``inittab''
only allows the system to run in runlevel 5.

For the same reason, the OP couldn't boot into text mode
when the system started up.  So, I thought he/she should
access the file by using the installation CD.

Yawar Amin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
