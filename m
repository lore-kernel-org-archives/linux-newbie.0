From: chuck gelm <chuck@gelm.net>
Subject: Re: Burn Mulitple cd's at once?
Date: Wed, 01 Feb 2006 11:31:03 -0500
Message-ID: <43E0E247.8050502@gelm.net>
References: <nmgab28h54exczm.010220060911@cognac>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <nmgab28h54exczm.010220060911@cognac>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Todd@acpdata.com

Todd wrote:

><SNIP>
>  
>

>What does "cdrecord -scanbus" show?
>
>Chuck
>  
>
Todd:

 (1)
What does
cdrecord -scanbus
 display?

I am confused by your use of:

dev=ATAPI:0,1,0

Where does it say that cdrecord uses an ATAPI device?
I thought cdrecord expects to write to a SCSI device!!!

(2)
You do not need to preceed the script (burncd.sh) with 'sh '

if the script (burncd.sh) is 'executable' (and in your $PATH).

 Else, if not executable, remove the #!/bin/bash and preceed the command 
with 'sh '.

What is the 'path-to' and filename of the ISO?
 /home/username/filename.iso ?????
 Is your ISO file name really 'filename.iso' ?!?!?!?!?!?!?!

(3)
Is your default shell 'bash' ?
Are you 'root' ?

(4)
Show the exact command line.
Show the exact error message.
Show the exact path and filename of the ISO file.


Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
