From: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Subject: how to use appl of one image in another
Date: Thu, 19 Jun 2003 03:12:17 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030619101217.99432.qmail@web20501.mail.yahoo.com>
References: <5.1.0.14.1.20030618101820.02f53830@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030618101820.02f53830@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: ganesh.venkatesan@intel.com



I have installed RH8.0 in my system.

Then I have downloaded the linux kernel 2.4.18 and
configured it and compiled it to get new image.
I have used the old configuration(make oldconfig) with
my RH8.0(2.4.18-14).

when I boot into the new image,I have observed the
following things form the /var/log/boot.log
  
  sshd:starting sshd
  sshd:execvp:no such file or directory
  sshd:failed
  rc:starting sshd:failed

  rpc.yppasswdd:execvp:no such file or directory
  yppasswdd:rpc.yppasswdd startup failed

  gpm:execvp:no such file or directory
  gpm:gpm startupj failed

  httpd:execvp:no such file or directory
  httpd:startup failed

  crond:execvp:no such file or directory
  crond:startup failed

  rc.sysinit:mounting proc filesystem succeeded
  sysctl:net.ipv4.ip_forward=0
         net.ipv4.conf.default.rp_filter=1
         net.ipv4.kernel.core_user_pid=1
  rc.sysinit:configuring kernel parameters:succeeded
  mount:mount:mount point /proc/bus/usb does not exist
  
  rc.sysinit:mounting usb filesystem:failed
  modprobe:can't locate module hid
           Initaialising USB HID interface:failed
  modprobe:can't locate module keybdev
           Initialising USB keyboard failed
  modprobe:can't locate module mousedev
           Initialising USB MOUSE :failed
  
  mount:mount fs type ext3 not supported by kernel
  Mounting local filesystems :failed
  updfstab:execvp: no such file or directory
  kudzu: updating /etc/fstab failed
  iptables:modprobe
  iptables:failed
  iptables:can't locate module ip-tables
  iptables:perhaps iptables or your kernel needs to be

              upgraded
  
  
  Also, the output of the command df ,
  shows that all my partitions are of type ext3.
  
  Iam also unable to see the files or directories of
home,misc,nfshome,initrd,opt,usr  partitions while Iam
able to see the files of root partition.
  
  Is it because I have specified in the /etc/lilo.conf
  as
   
       "root=/dev/hda1"

  Its not booting when I have given the option,
  append="root=LABEL=/"

  When my original image(RH8.0) is booting and working
fine with this configuration and append="root=LABEL=/"
 in lilo.conf,
  why is my new image not working ?

please think over this!!!!!!!!!


  
  

  


__________________________________
Do you Yahoo!?
SBC Yahoo! DSL - Now only $29.95 per month!
http://sbc.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
