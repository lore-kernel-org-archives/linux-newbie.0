From: "Chip Hearn" <sean@tcob1.net>
Subject: Strange Boot behavior
Date: Friday, 22 Aug 2003 20:36:21 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_1=3a3613=2f52_03abede9_228.lists.li_03ABEDE9@fidonet.org>
References: <20030822010917.50037.qmail@web13801.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030822010917.50037.qmail@web13801.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Christopher Swope

  Re: Strange Boot behavior
  By: Christopher Swope to All on Thu Aug 21 2003 07:09 pm

 > I am currently having trouble getting my computer to boot.  I
 > recently decided to install a larger, faster, hard drive.  Since this
 > hard drive was larger and faster, I decided that I wanted to make it
 > my master drive, and make my old drive my slave.  I took the old hard
 > drive out, and installed Red Hat Linux 8.0.  I then reconnected the
 > old drive, transferred files, etc.

By making the drive master and slave... did you by chance change the jumpers? 
Also, on newer systems, they no longer need the jumper, they go by cable
select... which means that if you have this sety, the drive is jumpered to
the cable select mode, so drive a is pluged into the slave connection it then
becomes slave... etc...  Just the first round of questions... :)


 > The problem is that when the new drive is connected, I never get the
 > grub display screen.  The BIOS executes appropriately, and then the
 > computer just sits there, like it is waiting for something.  When the
 > old drive is not connected, the computer boots fine, however.  Even
 > if the old drive is turned off in the BIOS Setup, if it is connected,
 > I have this problem.

This specifically sounds like a jumper problem... In your systems BIOS, using
escape, etc. so you can see when the system boots, does it see the drives? 
Cause I have the feeling you have one drive set to master, and the other set
for cable select... or maybe its also set to master...   Which means neither
drive will show up in BIOS when booting...  which means that neither drive
will show up when they are both plugged in.  This is even more confirmed when
you say that you can plug in the old drive and it boots fine, and the same with
the new drive... 

On the instructions on top of the drive, it normally shows where the jumpers
should be placed in different configurations... If your system supports cable
select and you "Have" one of those specific cables... make sure you put the
drives on the specific connection, ie. Master or Slave... and make sure the
"Jumpers" are set to cable select.  If you do not have a cable select cable
<they are marked, and or identified by having the word "Master" and Slave
imprinted next to that specific connection... and as a last resort, the cable
has a little tiny hole in one of the connections... you'll have to closely
inspect the entire cable to find it... but if it doesn't, it is the old
standard cable... which means you specifically have to set the jumpers to make
one the Master and the other Slave...

Hope that helps... 




Sniper
Killed In Action BBS SysOp
telnet://kia.zapto.org
ftp://kia.zapto.org
nntp://kia.zapto.org:120




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
