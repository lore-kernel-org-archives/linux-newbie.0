From: Haines Brown <brownh@hartford-hwp.com>
Subject: Phantom executables
Date: Fri, 26 Apr 2002 17:08:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200204262108.g3QL8w312580@langhans.hartford-hwp.com>
References: <m33cxj7gfk.fsf@wobble.eth.net> <20020426041540.47f8697f.nbhs2@i-2000.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I installed RedHat 7.2 on new hardware, and have been haunted by a
frequent problem. When I try to run certain binary exectables, I get:

[brownh@langhans tex2rtf]$ ./163nogui
bash: ./163nogui: No such file or directory

However, 

[brownh@langhans tex2rtf]$ ls -l 16*
-rwxrwxrwx    1 brownh   brownh     196812 Mar 26 16:20 163nogui

and, for an executable script test file in the same directory:

[brownh@langhans tex2rtf]$ ./test-executable
I am executing this file

Is this a sign that I need to include an older libc library? 

Haines Brown 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
