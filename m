From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: login error
Date: Thu, 14 Nov 2002 23:14:52 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021114231452.H12031@neutrino.particles.org>
References: <200211130057.44928.g38@rdsbv.ro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200211130057.44928.g38@rdsbv.ro>; from g38@rdsbv.ro on Wed, Nov 13, 2002 at 12:57:44AM +0200
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Petre Bandac <g38@rdsbv.ro>
Cc: linux-newbie@vger.kernel.org

On Wed, Nov 13, 2002 at 12:57:44AM +0200, Petre Bandac wrote:
> Inconsistency detected by ld.so:dynamic-link.h:62: elf_get_dynamic_info: 
> Assertion '! bad dynamic tag"' failed
> 
> this is the message I get after I type something at the login: prompt (it 
> doesn't bother to prompt the second line, the one with the password:)

Although I don't know how that can happen in a brand new installation, the
error means, IMHO, that your login is linked (dynamicaly) with a differenet 
libc, incompatible with your dynamic linker (ld.so). The dynamic linker
comes with glibc.

Did you install or upgrade from a previous version?

Elias

PS. This just came up to my mind: the usual tactic of crackers/script
kiddies is to replace various executables in the attacked system. One of
them is login. There is a small possibility that someone tried to replace
your login with a new one (compiled in another system). You can verify this
by checking the timestamp of /bin/login.

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
