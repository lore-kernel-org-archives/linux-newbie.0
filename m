From: RimeGate@rime.org (RUSS JOHNSON)
Subject: Root filesystem is full!
Date: 04 Aug 02 12:54:00 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BAG2SMTP.12758.69.1943434.1711962929.RIMEGateQWK@MoonDog.BBS>
Reply-To: RimeGate@rime.org (RUSS JOHNSON)
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


*



> The root filesystem which was about 90% full already is now
> showing 100% full.  I haven't found any large new files to account for this.
> However, I have deleted several megabytes of data and df shows the used
> blocks going down however the available blocks still is at zero.

You can fsck the root file system, but you'll need to put the system in single
user mode first. If you run lilo, you can press [TAB] at the LILO prompt to see
what your boot options are. Assuming your normal boot is called "linux", you
would type "linux 1" at the lilo prompt to boot into single user mode.
Alternatively, you can type "telinit 1" at a prompt on your running system to
switch to runlevel 1 (also called single user mode).

Once there, you remount the root filesystem as ro (read only). Use the mount
command to do this. 

Once your root filesystem is read only, run fsck. If there are errors, you will
need to fix them. This may require booting with a floppy so that you can have
the root partition mounted read-write, but won't be using binaries off that
same partition to run the system. 

Doing this CAN hose your system. Be very careful, and use this information at
your own risk. 

Russ

--- BBBS/LiI v4.01 Flag-4
 * Origin: RelayNet(tm) DIMSTAR (#3071):http://www.dimstar.net (900:104/3071)



                                                                                           

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
