From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: about upgrading the kernel.
Date: Mon, 28 Apr 2003 19:30:01 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030428193001.A31941@neutrino.particles.org>
References: <20030427172040.GA6928@storm.armateknik.com.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030427172040.GA6928@storm.armateknik.com.tr>; from halil@debian-tr.org on Sun, Apr 27, 2003 at 08:20:40PM +0300
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Halil Demirezen <halil@debian-tr.org>
Cc: linux-newbie@vger.kernel.org

On Sun, Apr 27, 2003 at 08:20:40PM +0300, Halil Demirezen wrote:
> I want to know, as the new patches and upgrades are published for the kernel, do i have to re-compile the 
> whole kernel after i pached it? or is there any easy way of doing it so?

Make (if the Makefile is correctly written) is quite clever to resolve any
depedencies and compile only the changed sources; as well as sources depend
on the changes.

This is done automagically. You just patch the sources and perform a 'make'.
OTOH, if you encounter strange bahaviour in the fresh kerenl, a 'make clean; 
make' won't hurt to try.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
