From: dave <dave@dpomeroy.com>
Subject: bash scripting
Date: Sat, 14 Aug 2004 12:35:41 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411E779D.6060209@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

OK I installed Mandrake 10 official and all things seem to be normal.  I 
still get the same message when I try to run a bash script.

#!/bin/env
bash


shopt -s -o nounset

declare LINE

exec 3< /home/dave/scripts/test.dat

while read LINE <&3 ; do
  printf "%s\n" "$LINE"
done

exit 0

and here is the error message I get.

[dave@dave scripts]$ ./new.sh
: bad interpreter: No such file or directory
[dave@dave scripts]$

Anyone have any ideas.  I used whereis bash and it returned /bin/bash.
  Everything seems normal and I guess I'm over my head.  Anyone with any 
suggestions?

Thanks in advance.
Dave

-- 
Dave Pomeroy K7DNP SouthEastern Washington

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
