From: Gavin Laking <me@gavinlaking.co.uk>
Subject: Re: Reg:gcc
Date: Wed, 26 Jun 2002 14:22:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020626142235.725b9f8d.me@gavinlaking.co.uk>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
Reply-To: me@gavinlaking.co.uk
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wed, 26 Jun 2002 17:56:41 +0530
"Sridhar J (june end)" <sridharj.hyd@cxknetworks.com> wrote:

> Hello
> 
> Thanks to all of you who replied promptly to my question. I would like to
> clarify one thing. When I compiled the program using gcc, I tried typing
> a.out. When that didn't work, I did a ls -l which showed me a file called
> a.out*.
> 
> Doesn't it mean that a.out is in the current directory? So why I should go
> to a parent directory as in ./a.out to execute it?

Hi,

a.out* means that the file is executable (well, had its 'executable' bits set anyway), it might be coloured green as well depending on your system. ./ simply gives the path to the file, it means "current directory".

If you type: 'ps aux' (no single quotes) in your terminal or console, then Linux first checks all of the directories set in the environment variable "PATH" for an executable file called 'ps'. It it doesn't find one, then it reports that. If it does find one, then it executes it. Lets say you just compiled 'a.out', it is located here: '/home/sridhar/sources', if that path is NOT in the environment variable PATH, then when you type 'a.out', Linux cannot find it in the path and therefore cannot execute it. You can do three things here. 1) Add '/home/sridar/sources' to your path, 2) type ./a.out (which tells Linux to look in the current directory), or 3) with the correct priveledges, you could copy 'a.out' to a place that is mentioned in your environment variable 'PATH' (usually, '/usr/bin', or '/usr/local/bin' (there are others but it could take all day for me to list the possibilities.))

./ doesn't mean parent. It means "this".
../ means parent. It doesn't mean "this".

Finally, rename 'a.out' to something you will recognise- having a disk full of 'a.out's can get confusing :-) (rename = mv)

Hope that helps,

G

--
  Gavin Laking
 
  1:52pm  up 20:25,  3 users,  load average: 0.27, 0.11, 0.02

  http://www.gavinlaking.co.uk/
--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
