From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Command line questions
Date: Sun, 6 Oct 2002 03:09:28 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021006030928.A3197@neutrino.particles.org>
References: <200210051935.48876.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200210051935.48876.sotl155360@earthlink.net>; from sotl155360@earthlink.net on Sat, Oct 05, 2002 at 07:35:48PM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frank Roberts - SOTL <sotl155360@earthlink.net>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

On Sat, Oct 05, 2002 at 07:35:48PM -0400, Frank Roberts - SOTL wrote:
> 1. Is there an option to the ls command that will allow the scroll to page 
> like the old dos command dir -p would? O'Reilly's Linux in a Nutshell does not 
> so indicate but I have a hard time believing that this is so; that just does 
> not seem logicall.

% ls -a | more

(this works in DOS, too, using dir instead of ls)

> 2.  I have no problem changing to any directory that does not have spaces in 
> it but I have no idea of how to account for a space in a directory like in 
> the command "cd My Document"?

% cd My\ Documents

Ciao,
 Elias
 
-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
