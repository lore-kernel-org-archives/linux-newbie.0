From: Kenneth Stephen <pgmr@austin.rr.com>
Subject: Re: Exporting display
Date: Sat, 21 Sep 2002 14:08:22 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.3.96.1020921140506.19970A-100000@trillian.megadodo.umb>
References: <20020917124524.17274.qmail@web13407.mail.yahoo.com>
Reply-To: kstephen@austin.rr.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020917124524.17274.qmail@web13407.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Tue, 17 Sep 2002, Abhijit Vijay wrote:

> 
> 2. Execute "setenv DISPLAY ${REMOTEHOST}:0.0" after
> connecting to my linux machine through SSH
> 
> 3. echo $REMOTEHOST gives me hughes08.biac.duke.edu
> (my Windows NT workstation)
> 
> 4. echo $DISPLAY gives me hughes08.biac.duke.edu:0.0
> 
> However, when I type xbiff& after connecting to my
> linux machine, I just get the process ID. The xbiff
> window does not show up!
> 

Abhijit,

	Did you try running it in the foreground first (without the
'&')? Some applications require a terminal to work atleast during
initialization and putting it in background mode may just stop the
process. The other thing to check for is whether your .xsession-errors
file shows any error messages. If it shows access denied type messages,
perhap you need to run xhost or an equivalent program on your NT machine.

Regards,
Kenneth

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
