From: whitnl73@juno.com
Subject: Re: file transfer via telnet
Date: Fri, 21 Feb 2003 13:55:11 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030221.140308.8.0.whitnl73@juno.com>
References: <3E55D572.1B60BF79@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E55D572.1B60BF79@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ichi@ihug.co.nz
Cc: linux-newbie@vger.kernel.org

On Fri, 21 Feb 2003 ichi@ihug.co.nz wrote:

> I year or two back, I remember reading about a way to transfer
> a file using telnet.  It think it involved redirection from one
> tty to another, but I don't remember the details.  I now find
> myself in a situation with telnet access, but no ftp (or anything
> else I could use to upload files).  Do any of you guys know the
> telnet method?
>
> Cheers,
> Steven
>
I think that was rsh, not telnet, and man rsh tells the rules for that,
in case you have rsh.

However, to downoad a file by telnet, capture stdout so:

telnet hostname | tee logfile
....
uuencode remotefile remotefile
exit
tr -d "r" < logfile | uudecode

Note remotefile is named twice in the uuencode: first is the name it is
to be uudecoded to, next is the input to uuencode (uou could use
redirection or a pipe instead, by default uuencode operates on stdin.

To upload, I guess you could use telnet's ! command, but how exactly
excapes me.

Lawson

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
