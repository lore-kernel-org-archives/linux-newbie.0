From: dave <dave@dpomeroy.com>
Subject: bash scripting
Date: Sat, 14 Aug 2004 19:00:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411ED1C3.9030407@dpomeroy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I tried the same script with #!/bin/bash as the first line and get the 
same error.  Then I cd to /bin and do a ls bash and this is what I get.

[dave@dave bin]$ ls bash
bash*
[dave@dave bin]$ ./bash
[dave@dave bin]$ /home/dave/scripts/new.sh
: bad interpreter: No such file or directory
[dave@dave bin]$

Then I tried the samw script again and I get the same error.  I used 
chmod and set the script file as 777.  Still no go.  I believe its not 
finding bash but I sure can't tell why.  I ran a setup.sh script in 
/usr/share/webmin today and it ran just fine.  I am confused   Any more 
ideas?  Thanks again.
Dave

-- 
Dave Pomeroy K7DNP SouthEastern Washington

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
