From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: tar for "full" floppy backup?
Date: Sat, 07 Dec 2002 13:34:15 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF23F27.2C5EB0E7@gelm.net>
References: <200212070919.CAA12532@cu.imt.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jerry James Haumberger <jerryjh@imt.net>
Cc: linux-newbie@vger.kernel.org

 Hi, Jerry:

 What version of 'tar' do you have?
tar --version

 Please show us your exact command line 
  and the exact error message(s).

 I am guessing that your command line should be:

tar -cyvMf /dev/fd0 /directory_to_be_backed_up
 ...
tar -xyvMf /dev/fd0

?
'y'=bz2 compression, 'z'=gzip compression

 What I want to know is if/how the /dev/fd0 media
  should be formatted.  :-|  Should it have a file system?
? superformat /dev/fd0u1440 ? 

HTH, Chuck

Jerry James Haumberger wrote:
> 
> Hello everyone --
> 
> Thank you for offering me various suggestions on how to possibly
> get tar to make a backup archive on multiple floppies.  Sorry to
> say, none of the suggestions worked.
> 
> The only result was that tar would make an archive in whatever
> directory I happened to be in when creating the archive -- and
> it would ignore the /dev/fd0 device.
> 
> When I used the "M" option, nothing occurred.  When I tried
> adding the "z" option, I was told that multiple compressed archives
> were not possible.
> 
> When I try to use the Slackware manual command (SAMS), it messes
> up the floppy -- which has to be reformatted and so on.
> 
> The question remains:  How can I back up -- with tar or any other
> Slackware 3.5 program -- my 9 MBs of files from the BasicLinux
> console with multiple floppies?  And in compressed format?
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
