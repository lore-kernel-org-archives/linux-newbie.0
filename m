From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: add a directory to initramfs cpio archieve
Date: Fri, 24 Aug 2007 10:50:49 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B05ED4B34@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@kernel.org


Hi,

I have a kernel image (2.6.16) that is booting fine. It came with an =
initramfs cpio archieve that doesnot contain the /sys directory and =
hence sysfs is not accessible (initramfs continues as root FS in my =
case, even after system boots up). So how do I add /sys directory to my =
cpio archieve? I know it sounds stupid, but but here it is:

I am able to see the contents of cpio:

[rajat@qnx-server temp]$ cpio -itv < data.cpio
drwxrwxrwx   2 root     root            0 May 25  2006 /lost+found
drwxrwxrwx   2 root     root            0 May 25  2006 /bin
-rwxrwxrwx   1 rajat    root        19000 May 19  2002 /bin/basename
-rwxrwxrwx   1 rajat    root       968064 May 16  2002 /bin/bash
...
...
...

But when I try to extract it, it tries to overwrite my host root FS =
(/etc, /usr etc) which ofcourse I don't want:

[rajat@qnx-server temp]$  cpio -idv <data.cpio
cpio: /lost+found: Operation not permitted
/lost+found
cpio: /bin: Operation not permitted
/bin
cpio: /bin/basename not created: newer or same age version exists
/bin/basename
cpio: /bin/bash not created: newer or same age version exists
/bin/bash
cpio: /bin/cat not created: newer or same age version exists
/bin/cat
...
...
...

Any help?

Thanks,

Rajat

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

