From: flyfshmn <flyfshmn@carolina.rr.com>
Subject: FTP Script - TOTAL NEWBIE HERE!!!
Date: Thu, 15 Feb 2007 10:58:07 -0800 (PST)
Message-ID: <8991524.post@talk.nabble.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


Hello all,

1st post here. Anyway, here is my delema.

I need to ftp a file (a new file is created daily) to a remote server.
4 things need to happen.

1)  Change directories. (done)
2)  FTP file to remote site. (done)
3)  Verify file successfully arrived at remote site. (havnt a clue)
4)  Delete file from local machine.

What I have at this point is this....all gathered from google searches

#!/bin/bash
cd /dsds/dsds
lftp -c 'open -e "put filename" ftp://uername:pass@hostip/dir/dir

At this point - I can manully make this happen. What I dont know is how do I
create a script that will automatically insert file name (may use mput *.*),
verify the success and then delete the file. I will not have access to snmp
traps to actually know if the file was successful, but at least if it fails,
then it wont be deleted. The files that are created have the current date as
part of the file name, so this info may be useful for the variable for the
put.

Again - our "script writer" is no longer with the company and I have this
task that needs to be automated as best as possible.

TIA
Fly

-- 
View this message in context: http://www.nabble.com/FTP-Script---TOTAL-NEWBIE-HERE%21%21%21-tf3235480.html#a8991524
Sent from the linux-newbie mailing list archive at Nabble.com.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
