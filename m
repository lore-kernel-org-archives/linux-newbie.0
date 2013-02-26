From: Prashant Batra <prbatra.lists@gmail.com>
Subject: understanding linux cache and free command
Date: Tue, 26 Feb 2013 18:18:48 +0530
Message-ID: <512CAF30.70805@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:message-id:date:from:user-agent:mime-version:to:cc
         :subject:content-type:content-transfer-encoding;
        bh=s4AJf4TOqYotRdsdf6CY3sNXgl7p2rF7Zce9jbexlQM=;
        b=b/JM+siapEMcJbJYvia1WFwSjH1JQtOicLF8GeLgJbmkJMeenwIpe+AS1xdA3De4Ez
         9gvqmy5gT/IOG/MoOIka06craCPVXutpRw7RRZnI71/ru9fw/euuJmVX8DymOxWOsKuH
         D8jyOBJQDJs/pMolTEKRqUEd+V/2fZuH78DNogF7+KLtaUuWYsH39+y+tGeYBFeXlJfu
         B5IJ6vFGedQcYQsjXIPHjOUeZmQjfBzbGHBryJN0nrUAK3uLhlm5+WM3P18yKIEJQwtP
         b0an2IMtE4bKEYdRbq6ABfgeD50XEYNok0V2UxmQtUVEQI3spqzCD5V5l0O3EMQTYGmr
         110A==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org
Cc: prbatra.mail@gmail.com

Hi All,

I have created few memory cache areas using "kmem_cache_create" and 
using it to allocate some memory.

What I observe after some cache_alloc's and cache_free's is that 
/proc/slabinfo entries for my objects are good, meaning the number of 
objects go back to 0 after they are freed.

But linux "free" command shows that some of the objects are cached and 
that keeps on increasing. I am not able to understand this behavior. Is 
it that kernel keeps the cache objects even after they are freed?

#cat /proc/slabinfo
my_cache         200    200   4096    1    1 : tunables   24   12    8 : 
slabdata    200    200      0

It shows 200 allocated objects from "my_cache"

and

#free -lm

             total       used       free     shared    buffers     cached
Mem:         48340        610      47730          0         96       130

the cached objects keep on growing.

After 5 mins in which I am doing some alloc and free-
             total       used       free     shared    buffers     cached
Mem:        48340        616      47723          0         96        137

/proc/slabinfo remains the same.

Any help is appreciated.

Thanks,
Prashant
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
