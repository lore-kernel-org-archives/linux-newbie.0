From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: kernel errors on boot
Date: Sun, 27 Feb 2005 00:23:30 +0000
Message-ID: <42211302.1090908@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I am getting strange error messages from the kernel as I boot ever since 
I upgraded from 2.6.10-gentoo-r5 to 2.6.10-gentoo-r6. 

Here is a sample from my log:

Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/2
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcs2"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa2"_No such file or directory_
Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/3
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcs3"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa3"_No such file or directory_
Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/4
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcs4"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa4"_No such file or directory_
Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/7
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcs7"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa7"_No such file or directory_
Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/a9
Feb 26 15:33:40 [kernel] devfs_mk_dev: could not append to parent for vcc/10
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa9"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcs10"_No such file or directory_
Feb 26 15:33:40 [devfsd] action_compat: error unlinking: "vcsa10"_No such file or directory_
Feb 26 15:33:40 [devfsd] error calling: "unlink" in "GLOBAL"_


I am running Gentoo, as if that wasn't obvious from my kernel ver.

I did recently emerge udev to eventually replace devfs since it is being 
deprecated, but have not done so yet.  Could this be part of the problem?

Thanks,
Jeremy

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
