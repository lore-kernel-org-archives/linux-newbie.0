From: Elias Athanasopoulos <elathan@phys.uoa.gr>
Subject: Re: Getting a warning with const
Date: Mon, 28 Apr 2003 15:48:23 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030428154823.P16619@neutrino.particles.org>
References: <20030427231356.75AC.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030427231356.75AC.WOLFGANG127JP@ybb.ne.jp>; from wolfgang127jp@ybb.ne.jp on Sun, Apr 27, 2003 at 11:13:58PM +0900
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: wolfgang <wolfgang127jp@ybb.ne.jp>
Cc: linux-newbie@vger.kernel.org

On Sun, Apr 27, 2003 at 11:13:58PM +0900, wolfgang wrote:
> Hi gurus,
> I made a simple code(dos2unix.c) that changes dos formatted text to unix
> or unix formatted text to dos. it's up to the code name.
> If I change the argument of getBasename function to (const char *name),
> I get a following warning.
> dos2unix.c: In function `getBasename':
> dos2unix.c:10: warning: assignment discards qualifiers from pointer
> target type
[snipped]
> char* getBasename(char *name){
>    char* basename = 0;
>    if((basename = strrchr(name,'/')) != 0)
>       basename++;
>    else
>       basename = name;
> }
[snipped]
>    basename = getBasename(argv[0]);
> 

You call getBasename by passing argv[0] which is char *, but you have declare
getBasename so as to take a const char *. 

You can make the warning dissapear by:

	getBasename ((const char *) argv[0]);

If I were you, I will just declare getBasename so as to take char * and make
everything happy.

Elias

-- 
University of Athens			I bet the human brain 
Physics Department				is a kludge --Marvin Minsky 

	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
