From: "Jonathan Kallay" <yoni@kallay.net>
Subject: Re: lpr problems with HP Deskjet 712C
Date: Mon, 20 Jan 2003 16:24:52 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001d01c2c0ca$6068c180$6400a8c0@ngaruahoe>
References: <5.1.0.14.1.20030120121028.02117b20@celine> <5.1.0.14.1.20030120130241.02119210@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

  I referred to PDQ simply as proof of an existing setup that does work.  I
think it's mostly irrelevant when it comes to using the Linux box as a
printserver over SMB.

here's my printcap file:
lp:\
  :lp=/dev/lp0
  :sd=/var/spool/lpd/%P:\
  :sh:

and the smb.conf blocks:
[printers]
        comment = All Printers
        path = /tmp
        create mask = 0700
        printable = Yes
        browseable = No

[lp]
        path = /tmp
        read only = No
        create mask = 0700
        guest ok = Yes
        printable = Yes
        print command = lpr -P'%p' %s
        printer name = lp




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
