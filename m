From: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Subject: getting kernel symbols list in FC2
Date: Wed, 24 Aug 2005 12:19:54 +0530 (IST)
Message-ID: <Pine.LNX.4.60.0508241215180.17781@lantana.cs.iitm.ernet.in>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
  <200508130940.51347.pa3gcu@zeelandnet.nl>  <Pine.LNX.4.60.0508141137540.20130@lantana.cs.iitm.ernet.in>
 <4a618d08050814073217c78a5@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4a618d08050814073217c78a5@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hai,
    In redhat 9 we can get the kernel symbols list by executing the command
   /sbin/ksyms -a
But the same when I do in Fedora core 2,
it is giving the following error,
ksyms: QM_MODULES Function not implemented

I updated the module-init-tools rpm to 3.2.X
But still the same error I am getting.

Can anybody suggest on this.

Thanks& Regards
P.Manohar.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
