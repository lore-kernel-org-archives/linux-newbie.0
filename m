From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Samba Mount File Corruption
Date: Wed, 9 Oct 2002 16:23:53 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <001301c26fd1$c9d67bc0$64fea8c0@pkrausxp>
References: <001201c26fce$5c1855c0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001201c26fce$5c1855c0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I noticed this in /var/log/messages. This is a brand new 180gb ide
drive.

Log
----
Oct  9 10:32:08 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:08 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:08 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:08 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:08 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:08 redhat-fax kernel: hde: write_intr error1:
nr_sectors=74, stat=0xd0
Oct  9 10:32:08 redhat-fax kernel: hde: write_intr: status=0xd0 { Busy }
Oct  9 10:32:08 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:08 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:08 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:08 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:08 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:08 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:09 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:09 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:09 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:09 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:09 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:20 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:20 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:20 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:20 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:20 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1086898448,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:22 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:22 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:23 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:23 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:23 redhat-fax kernel: attempt to access beyond end of
device
Oct  9 10:32:23 redhat-fax kernel: 21:01: rw=0, want=1409830948,
limit=175823361
Oct  9 10:32:25 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:25 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:25 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:25 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:25 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:25 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:25 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:25 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:25 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:25 redhat-fax kernel: ide2: reset: success
Oct  9 10:32:55 redhat-fax kernel: hde: status error: status=0x58 {
DriveReady SeekComplete DataRequest }
Oct  9 10:32:55 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:55 redhat-fax kernel: hde: status timeout: status=0xd0 {
Busy }
Oct  9 10:32:55 redhat-fax kernel: hde: drive not ready for command
Oct  9 10:32:55 redhat-fax kernel: ide2: reset: success
Oct  9 10:33:57 redhat-fax su(pam_unix)[2861]: session closed for user
root
Oct  9 10:33:58 redhat-fax login(pam_unix)[2815]: session closed for
user pdk
Oct  9 10:34:04 redhat-fax su(pam_unix)[2776]: session closed for user
root
Oct  9 10:34:05 redhat-fax login(pam_unix)[2729]: session closed for
user pdk
Oct  9 10:38:59 redhat-fax login(pam_unix)[2919]: session opened for
user pdk by (uid=0)
Oct  9 10:38:59 redhat-fax  -- pdk[2919]: LOGIN ON pts/2 BY pdk FROM
192.168.254.100
Oct  9 10:39:41 redhat-fax login(pam_unix)[2919]: session closed for
user pdk
Oct  9 11:40:28 redhat-fax login(pam_unix)[2494]: session closed for
user pdk
Oct  9 11:40:28 redhat-fax su(pam_unix)[2540]: session closed for user
root
Oct  9 11:58:30 redhat-fax login(pam_unix)[2637]: session closed for
user pdk
Oct  9 16:09:14 redhat-fax kernel: smb_trans2_request: result=-104,
setting invalid
Oct  9 16:09:15 redhat-fax kernel: smb_retry: successful, new pid=2807,
generation=2

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Paul Kraus
Sent: Wednesday, October 09, 2002 3:59 PM
To: linux-newbie@vger.kernel.org
Subject: Samba Mount File Corruption


Has anyone had any issues when copying a file from a samba/windows
mounted drive (mount -t smbfs) to there Linux box? I had a 1 gig file I
transferred that was a tar file. On the Linux machine I then tried to
untar it received errors and failed about half way through. The file
size was correct. I then copied it back to the windows machine as a test
and tried to untar it there and the file had the same results. However
the original file is good. Any ideas?

Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"
in the body of a message to majordomo@vger.kernel.org More majordomo
info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
