From: "Lee Chin" <leechin@mail.com>
Subject: bigphysmem usage
Date: Thu, 08 May 2003 13:12:29 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030508181229.85053.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@physics.mcmaster.ca, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Hi
Where can I find some sample code that uses zero copy in user land using the bigphysmem patch?

Basically, I want to open a socket and call the recv system call passing in a buffer that the kernel zeo copies into.... and then I read the data from there.  How can I do this?

Thanks
Lee
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
