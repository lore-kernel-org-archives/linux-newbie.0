From: dave <dave@dpomeroy.com>
Subject: Re: security
Date: Tue, 17 Feb 2004 13:22:45 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40328625.4080403@dpomeroy.com>
References: <40325596.6090805@dpomeroy.com> <20040217191000.GA30689@teamfinders.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040217191000.GA30689@teamfinders.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Theo. Sean Schulze wrote:

>On Tue, Feb 17, 2004 at 09:55:34AM -0800, dave hunted and pecked out:
>  
>
>>I've been runing Mandrake for a couple of years and I'm still having 
>>problems with groups. 
>>This is the procedure for making a group and sharing a subdirectory that 
>>I use.  Can someone tell me where I'm screwing up?  Thanks in advance
>>
>>Make a folder:   mkdir /home/everyone
>>make group: groupadd everyone
>>add users gpasswd -a dave everyone
>>add users gpasswd -a laura everyone
>>change the group for the folder chgrp -R everyone /home/everyone
>>add write for group everyone chmod g+r /home/everyone
>>    
>>
>
>Could just be a typo, but r adds read privileges.  g+w would add write
>privileges.
>
>  
>
>>When I'm done with this I still can not make a folder in /home/everyone 
>>logged on as dave.
>>    
>>
>
>If that wasn't a typo, then it would explain why you can't write a new
>directory in the /home/everyone folder.
>
>  
>
>>again thanks for your help
>>
>>-- 
>>Dave Pomeroy K7DNP South Eastern Washington
>>
>>    
>>
>Cheers,
>Sean
>  
>
Sean,
  That was a typo.  I've made some progress with Rays help.  It appears 
msec is causing the problem.  It keeps running and revoking the write on 
the /home/everyone subdirectory for the group.  I'll work on msec.
 Thanks for the help

-- 
Dave Pomeroy K7DNP South Eastern Washington


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
