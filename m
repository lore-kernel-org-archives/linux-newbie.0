From: Brian Bilbrey <bilbrey@orbdesigns.com>
Subject: Re: Reg:gcc
Date: Wed, 26 Jun 2002 06:45:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200206260645.29872.bilbrey@orbdesigns.com>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
Reply-To: bilbrey@orbdesigns.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Sridhar J (june end)" <sridharj.hyd@cxknetworks.com>, linux-newbie@vger.kernel.org

On Wednesday 26 June 2002 05:26, Sridhar J (june end) wrote:
> Doesn't it mean that a.out is in the current directory? So why I should go
> to a parent directory as in ./a.out to execute it?

Sorry, you're not understanding a couple of things. First, "./" is the 
*current* directory, not the parent directory (which would be "../").

Second thing. To run a program in Linux, either the program needs to be on 
your PATH (type echo $PATH to see) or you need to specify the path to the 
executable. To run a program that you've compiled in the current directory, 
when said directory is not in your PATH, then ./filename is shorthand for 
"run the executable file "filename" that's right here in this directory"

Now, sometimes the obvious idea leaps into people's heads... "Why not make my 
home directory on my PATH, so that I can just execute files by name when I  
compile them". Resist the temptation. Executing programs should be explicit 
and thought about. What I did was to make a directory called bin in my home 
directory, and put that on my path. In that way, scripts and programs that 
I've tested for personal use, I can MOVE to that location, and run them 
easily henceforth. But having ~ (home directory) on your path is a Bad Thing 
(tm).

Best of luck,

.brian

-- 
Brian Bilbrey - bilbrey@orbdesigns.com - http://www.OrbDesigns.com/
 Geek for Hire!  http://www.OrbDesigns.com/bpages/resume.html
 Visit LinuxMuse - I^3 at http://www.LinuxMuse.com/ 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
