From: "Jonathan Kallay" <yoni@kallay.net>
Subject: lpr problems with HP Deskjet 712C
Date: Mon, 20 Jan 2003 14:12:26 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000701c2c0b7$df4cdda0$6400a8c0@ngaruahoe>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi all,
  I'm trying to configure my box as a printserver over Samba, to connect it
to our HP Deskjet 712C (formerly attached to a laptop, which I want to make
more portable).  With a little bit of work I've got PDQ printing fine.
However, if I try printing directly to the parallel port ("cat filename >>
\dev\lp0") I get the message "lp0: compatibility mode" but  nothing actually
prints out.  I get the same message when using PDQ but something will
actually print.  Since this HP printer uses a proprietary file format, I
figured perhaps a plaintext file wouldn't have the instructions to actually
print embedded in it.  So I've tried sending files from the Windows laptop
(which has the printer's drivers installed) to the printer over Samba- with
the same results.

I'm running Debian Woody with kernel 2.4.18.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
