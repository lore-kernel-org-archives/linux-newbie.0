From: Ray Olszewski <ray@comarre.com>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively
  change all directories/files to 777
Date: Thu, 09 Dec 2004 13:57:25 -0800
Message-ID: <5.1.0.14.1.20041209133634.0208a928@celine>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06> <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:11 PM 12/9/2004 -0500, Eve Atley wrote:

>First question...
>We have people SSHing into our Linux box from overseas (India to US, company
>access only). But files that are uploaded from these people become read-only
>to anyone else accessing them. We *require* that they be readable/writable
>by this side of the pond (US). How can I set this to occur? Otherwise, this
>method of transferring files will *not* work for us, and perhaps someone can
>point me to another solution.

So you want an uploaded file to be mode 777, writable (and executable, if 
you really mean 777, not 666) by any user on the system? OK. Change the 
account's umask, in ./.profile, or ./.bashrc, or whatever user-specific 
file is appropriate to your setup. (Or make the corresponding change in a 
systemwide file, like /etc/profile or /etc/bash.bashrc or whatever ... the 
specifics vary a bit from one distro to another, and even there I am 
assuming your site uses bash). Usually the umask is 022, which generates 
permissions 755; you want it to be 000.

Or, it may depend on how these usees are trensferring files after they ssh 
in, something you don't actually mention. If we are discussing scp 
transfers, it might be easier to have the users use the -p flag when they 
do the transfers, so the transferred file will keep the permissions it had 
on its source system (but I don't know that they are mode 777 either).


>Second question...
>How can I recursively set all files/directories to 777?
>Chmod -R 777 *.* ... Didn't seem to hit everything.


Since the relevant command is "chmod", not "Chmod" (case counts in 
Linux/Unix commands), I'm surprised you hit *anything* with the command as 
written. Your use of "all" is also a bit ambiguous .. but if you want to 
chmod all the files in or below the PWD to mode 777, you'll need this command:

         chmod -R 777 ./*

(Even this will not chmod **all** files, because because by convention 
almost all Linux/Unix commands treat files that begin with a dot character 
as special, so standard wildcards (*) will not match them. So this command 
will chmod files with names like filename and filename.txt, but not one 
with names like .filename . I don't know a general way to include such files.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
