From: "Jonathan Kallay" <yoni@kallay.net>
Subject: missing man and smbsh
Date: Fri, 20 Dec 2002 22:17:32 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <007801c2a89f$811fb340$6400a8c0@00arc>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I'm running Debian 3.0 and have been working on setting up my machine on a
Windows network.  I installed the packages samba, samba-common, swat, smbfs
and smbclient.  When using smbmount I've gotten an error from the kernel- I
tried running "modprobe smbfs", but the smbfs module couldn't been found.  I
also tried running smbsh but that couldn't be found either.

I thought that perhaps there were setting that I did not correctly set when
installing Samba (such as the -smbwrapper option).  So I tried using dselect
to remove and reinstall Samba.  However, before compilation dselect didn't
prompt for any options.

After Samba was reinstalled, I discovered that the system could no longer
find man!  Anyone have any suggestions on what could have happened, and how
to get smbsh or smbmount to work properly?

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
