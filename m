From: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Subject: recording a .wav file in a daemon.
Date: Tue, 16 Aug 2005 23:19:35 +0530 (IST)
Message-ID: <Pine.LNX.4.60.0508162310410.29955@lantana.cs.iitm.ernet.in>
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
    I am calling this below script( call it recording.scr) from a c 
program using system() , this C program is written as a daemon, so that it 
will run continuously and executes this script periodically.
  When I run this daemon in any terminal it is recording continously.
But when I run the same thing as original daemon like atd or sshd by 
putting a script mydaemon in
/etc/rc.d/init.d/mydaemon start
This daemon is not recording.

Whether "brec" need a controlling terminal ?
I am confused with this. Please suggest me if u can.


  #!/bin/tcsh
if($# != 1) then
   echo "Argument  filename"
   exit(-1)
endif

echo "recording"
brec -s 96000 -b 16 -t 1 -w /usr/loca/xyz.wav
echo "recording over"

Thanks & Regrds,
P.Manohar.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
