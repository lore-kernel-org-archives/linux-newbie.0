From: Narsimha Reddy CH <creddy@npd.hcltech.com>
Subject: How to hide few disk file systems ??
Date: Mon, 27 Jan 2003 17:33:59 +0530
Sender: linux-fsdevel-owner@vger.kernel.org
Message-ID: <3E35202F.44C4BDD2@npd.hcltech.com>
Reply-To: creddy@npd.hcltech.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-fsdevel-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org, linux-fsdevel@vger.kernel.org

Hi,

  I am having a linux system with a single hard disk.
I have lot of important data on this hard disk. For
experimental purpose I want to build a new kernel image
from a source  which will contain modified code for file
system implementation (the code contains some modifications
to ext2 implementation). Also it may contain lot of bugs
which may corrupt data on the disk. So, after loading the
new linux kernel image, I want to make sure that my old
data stored on the disk must be safe.

 In order to achieve this,  I want to create a new 
partition on the disk. After loading the system with new
kernel image, I want to access only the new partition
that I created. And I want to hide the old ext2 partitions.

  Now the problem is how can I hide the old partitions
after booting the system with new kernel image (to avoid
corruption of my old data on disk ) ??

Any configuration is needed to hide file systems ??

Can anybody help me how to solve this problem ??

TIA,
-- 
Narsimha Reddy CH
Storage Area Networking, HCL Technologies
Contact  +91-044 2372 8366 ext 1128

http://san.hcltech.com
http://www.hcltech.com
