From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: Linux scripting problem
Date: Wed, 26 Feb 2003 23:59:03 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030226235903.G28473@neutrino.particles.org>
References: <20030226174525.48083.qmail@web13406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030226174525.48083.qmail@web13406.mail.yahoo.com>; from abhijit_v@yahoo.com on Wed, Feb 26, 2003 at 09:45:25AM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Wed, Feb 26, 2003 at 09:45:25AM -0800, Abhijit Vijay wrote:
> 
> -r-s--x--x    1 root     root   656 Feb 26 12:28
> burnCD
> 
> This has the same permissions as /usr/bin/passwd.
> 
> burnCD is essentially a tcsh script.
> 
> When I run it as root, it works fine.
> However, when I try to run it as a normal user, I get
> the message:
> 
> /usr/bin/burnCD: Permission denied.

You get the permission denied from the tcsh interpreter which can't read
the script, because you have no read permission (for the script).

/usr/bin/passwd is an elf, so you need only x permission to run it.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
