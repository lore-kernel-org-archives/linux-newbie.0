From: Frank <softwareengineer99@yahoo.com>
Subject: Read-only File System [/dev/null read only errors]
Date: Sun, 26 Feb 2006 19:13:18 +0000 (UTC)
Message-ID: <loom.20060226T201241-775@post.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Our server went down recently.
  
  According to the hosting provider, this is some of the first errors 
it gives,
  
  ------------
  /etc/rc.d/rc.sysinit line xx :/dev/null read only files system
  gives more of the same error, It can not read many lines in many 
files that it needs to boot up, due to read only
  
  configuring kernel parameters   dup2 bad file descripter
  
  there are several bad descriptor errors and several /dev/null read 
only errors
  ---------
  
  Can someone please assist us on whether this is fixable and if we can 
recover our data from the server?
  
  Any assistance / guidance / pointers are appreciated.
  
  Thanks
  Frank

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
