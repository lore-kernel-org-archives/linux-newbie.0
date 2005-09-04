From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: remote job execution via xterm
Date: Sat, 3 Sep 2005 22:37:04 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0509032209490.11321-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

In order to run some (standard C) code on several machines, I log into a
machine remotely (via ssh), run the executable, hit Ctrl-Z (in the xterm),
and set the job into the background with bg (All of this is done from a an
xterm running bash, locally, and getting a bash shell on the remote
machines as well; all machines involved were running one or another
flavor of Linux.)

The trouble is that when I log out of the remote machine (via CTRL-D) I do
not return to the local prompt on the xterm. I get no display and no
response to any key strokes (including CTRL-C etc.) If close the xterm
window (from within X, locally) the job on the remote machines gets
terminated. The only way to ensure that the remote job stays alive is by
ssh'ing into the remote machine and killing a lone ssh PID that spawned
the executable.

A sample session output is pasted below: 
-----------
[karthik @mithrandir ~]$ ssh karthikv@edinburgh

[karthikv @edinburgh Dumps]$ ./trmc_2fls_core RTV-POPOP-tissue2.tissue > 
RTV-POPOP-tissue2.out  (CTRL-Z)
[1]+  Stopped                 ./trmc_2fls_core RTV-POPOP-tissue2.tissue 
>RTV-POPOP-tissue2.out

[karthikv @edinburgh Dumps]$ bg
[1]+ ./trmc_2fls_core RTV-POPOP-tissue2.tissue >RTV-POPOP-tissue2.out &

[karthikv @edinburgh Dumps]$ pstree -ap karthikv
sshd,8548
  `-bash,8549
      |-pstree,8620 -ap karthikv
      `-trmc_2fls_core,8619 RTV-POPOP-tissue2.tissue

--------> after a CTRL-D here, the terminal is hung as mentioned earlier. 
From a new xterm then, again: 

[karthik @mithrandir ~]$ ssh karthikv@edinburgh

[karthikv @edinburgh Dumps]$ pstree -ap karthikv
sshd,8548

sshd,8679
  `-bash,8680
      `-pstree,8710 -ap karthikv

trmc_2fls_core,8619 RTV-POPOP-tissue2.tissue

---------> here a kill -9 8548 keeps the job (8619) alive and brings the 
original xterm back to the local prompt. 


What is going on? How can I ensure that ssh terminates and disconnects 
from the session without me having to do all of the above and making sure 
that the executable stays alive? 


Thanks and regards,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
