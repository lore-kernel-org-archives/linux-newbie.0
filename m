From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: Audacity compile problems
Date: Sun, 24 Nov 2002 12:45:58 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021124124558.A1415@neutrino.particles.org>
References: <20021122172858.GA28883@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20021122172858.GA28883@teamfinders.org>; from tschulze@teamfinders.org on Fri, Nov 22, 2002 at 06:28:58PM +0100
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, Nov 22, 2002 at 06:28:58PM +0100, Theo. Sean Schulze wrote:
> 
> /usr/i486-suse-linux/bin/ld: cannot find -lartsc
> collect2: ld returned 1 exit status
> make: *** [audacity] Error 1

Find the artsc library. If you haven't it installed then you have to 
download the package that contains it (I don't know which is).

Then use the -L switch in LDFLAGS, so as to contain the directory of
the artsc lib. Your gcc command line should be something like:

% gcc ... -L/path/to/libartsc -lartsc ...

Elias

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
