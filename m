From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Re: 2.6.0 kernel compile overview
Date: Mon, 5 Jan 2004 19:16:29 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040105181629.GA28594@teamfinders.org>
References: <Pine.LNX.4.58.0401050850220.3345@localhost> <3FF99D13.1050403@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3FF99D13.1050403@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, Jan 05, 2004 at 10:51:23PM +0530, joy hunted and pecked out:
> James Miller wrote:
> 
[James Miller's request for info on compiling a 2.6.x kernel snipped.]
> > 
> >
> There isn't much of a difference actually, the only major difference (to 
> us end users ;)
> is that the compilation looks cleaner.
> also, now there are fewer steps to follow (thank god)
> 1. make mrproper
> 2. make menuconfig
>    here you can load the config file created and add the rest of the 
> necessary options.
> 3. make
>    this takes care of even generating the bzImage (hooray!)
> 4. make modules
> 5. make modules_install (which I had forgotten and asked on this list today)
> so all you have to do is copy the image to your /boot, run lilo (after 
> editing lilo.conf, obviously) and you are done!
> 
I can't find the reference right now, but I think step 3 should actually be 'make install' if you want to get a compressed kernel image and System.map file moved to either / or /boot (if you have edited the Makefile to install to /boot).  If I am wrong, someone please correct me.

Cheers,
Sean
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
