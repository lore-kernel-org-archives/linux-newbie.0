From: "" <dave@dpomeroy.com>
Subject: bash scripting
Date: Fri, 13 Aug 2004 23:35:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1092465314.411db2a2ca286@webmail.dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



I wrote the following script to learn to read and write files.  No matter how I
try to start it it doesn't work.  

#!/bin/bash

shopt -s -o nounset

declare LINE

exec 3< test.dat

while read LINE <&3 ; do
  printf "%s\n" "$LINE" 
done

exit 0

this is the error 

[root@localhost scripts]# ./test.sh
: bad interpreter: No such file or directory
[root@localhost scripts]#

can someone point me in the write direction?  thanks again
Dave

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
