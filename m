From: Ray Olszewski <ray@comarre.com>
Subject: Re: starting X with different XF86Configs
Date: Tue, 20 Aug 2002 08:44:55 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020820083959.0223c480@celine>
References: <5.1.0.14.1.20020819165442.020fa290@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0208201026040.26541-100000@localhost.localdo
 main>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James & Tatiana Miller <jamtat@aaahawk.com>, Linux <linux-newbie@vger.kernel.org>

At 10:30 AM 8/20/02 -0500, James & Tatiana Miller wrote:
>On Mon, 19 Aug 2002, Ray Olszewski wrote:
> > you don't say how you are starting X anyway ...
>
>Ray:
>
>Thanks for your answer. I'm starting X from the cli - "startx". Is there
>some other way it could be started, offering a choice of XF86Configs?


Not that I know of. I already suggested a cli method of selecting the 
config file when running X via startx, and someone sles suggested the 
alternative of using symlinks and changing the symlink depending on what 
display you are using. I suppose you could write a wrapper program for 
startx (or even modify startx to do this; startx is just a bash script that 
calls xinit) that asked you what file you wanted to use, then passed on the 
appropriate command-line argument.

I was mainly trying to make sure you were not starting X with xdm. I don't 
know how one would pass command-line arguments with xdm, since there is no 
command line in that case.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
