From: <Jessica_Schieffer@Dell.com>
Subject: RE: Setting quota on user's home folders?
Date: Wed, 23 Mar 2005 14:28:02 -0600
Message-ID: <570AB64E31B69C44BFC5A097E5F3EEA501745826@ausx2kmpc116.aus.amer.dell.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: eatley@wowcorp.com, peterg@fishinternet.com.au, ray@comarre.com
Cc: linux-newbie@vger.kernel.org

Quotas are supported by default in the RH kernels.  Here is the step by
step from RH site.
http://www.redhat.com/docs/manuals/linux/RHL-8.0-Manual/admin-primer/s1-
storage-quotas.html If you are using ext2, you must enable journaling
first since it is not default until ext3.  Steps to create disk quotas

In order to use disk quotas, you must first enable them. 
1. Modifying /etc/fstab
2. Remounting the file system(s)
3. Running quotacheck (quotacheck -avug)
4. Assigning quotas (edquota)

Example /etc/fstab
/dev/md0          /                  ext3    defaults        1 1
LABEL=/boot       /boot              ext3    defaults        1 2
none              /dev/pts           devpts  gid=5,mode=620  0 0
LABEL=/home       /home              ext3    defaults,usrquota,grpquota
1 2
none              /proc              proc    defaults        0 0
none              /dev/shm           tmpfs   defaults        0 0
/dev/md1          swap               swap    defaults        0 0

Example edquota
Disk quotas for user ed (uid 500):
  Filesystem      blocks       soft       hard     inodes     soft
hard
  /dev/md3       6617996    6900000    7000000      17397        0
0


Jessica Schieffer 
* (201) 248-3566

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Eve Atley
Sent: Thursday, March 17, 2005 2:01 PM
To: 'Peter'; 'Ray Olszewski'
Cc: linux-newbie@vger.kernel.org
Subject: RE: Setting quota on user's home folders?


Sorry about not including system info: it's RedHat 9 ATM (to upgrade to
RH
Enterprise 3).

>I noticed, on running ` locate quota` , that these lines appear in my
output

I ran this too, and it came back with this:

(truncated)
 /etc/warnquota.conf
/usr/bin/quota
/usr/sbin/edquota
/usr/sbin/quotastats
/usr/sbin/repquota
/usr/sbin/rpc.rquotad
/usr/sbin/setquota
/usr/sbin/warnquota
/sbin/convertquota
/sbin/quotacheck
/sbin/quotaoff
/sbin/quotaon

So, I'm wondering if it's already in my system.

- Eve

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
