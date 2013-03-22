From: ishare <june.tune.sea@gmail.com>
Subject: seq in tcp protocol
Date: Fri, 22 Mar 2013 21:30:08 +0800
Message-ID: <20130322133008.GA1348@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=c+Y5c/mBXNwo2DAqkJDLZC1XZjB8N8QxnNq0Pv4jYKY=;
        b=xsjmuwOAvnxTcEW5bJdNN0XlKPta5GYbkvOknNKnDsspx3eIB5ZDdx4UDYMTMPxnpN
         vHDfGTcgOIQqJIskuzVIqJQ7TfeAOVBXdgvmOiihjJ2WbIFyvjdIN5F0LFVIWzshYgIf
         ZVNGH/hrqY6JMipI/jc3eUdgrMcXTtU0RfoJm5HUZRDvtPCUXtsqsUqUkkzwV1Bz4y2H
         5NF94BnSb79XiXnnowd3tnr++q7IAYHObp9BiMbwpx4HSoyL/Ow7pq/1vZqTEY5PFF+8
         RSBM3RDKYKLhVY8wRLgyKeGuKKaxcEzJiY6akHLW2iRHrC2nIEZev6CDOwFbkjyVA2zx
         Csqw==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  If I send a  buffer with tcp protocol , the data is separated to serveral packets ,
  each packet will have a seq number with it ,which ensures the recipient read this buffer
  in right orfer .

  my question is : how the recipient know which is the end packet of this queue ? Is there 
  data indicate the total quantity of packets composing this buffer ?


  thanks!  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
