From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Phantom executables
Date: Sat, 27 Apr 2002 01:02:51 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020427010251.A1134@neutrino.particles.org>
References: <m33cxj7gfk.fsf@wobble.eth.net> <20020426041540.47f8697f.nbhs2@i-2000.com> <200204262108.g3QL8w312580@langhans.hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200204262108.g3QL8w312580@langhans.hartford-hwp.com>; from brownh@hartford-hwp.com on Fri, Apr 26, 2002 at 05:08:58PM -0400
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

On Fri, Apr 26, 2002 at 05:08:58PM -0400, Haines Brown wrote:
> I installed RedHat 7.2 on new hardware, and have been haunted by a
> frequent problem. When I try to run certain binary exectables, I get:
> 
> [brownh@langhans tex2rtf]$ ./163nogui
> bash: ./163nogui: No such file or directory

Recompile. The 'file' that bash can't find is the dynamic linker. 
You'll get the same results with:

% ldd ./163nogui

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
