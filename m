From: John Kelly <bilbo@waitrose.com>
Subject: Re: C Compiler
Date: Sat, 27 Dec 2003 11:10:42 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20031227111042.48ffc559.bilbo@waitrose.com>
References: <200312270820.hBR8Ked01366@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200312270820.hBR8Ked01366@skyinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Sat, 27 Dec 2003 16:20:40 +0800
Peter wrote:
> 
> Trying to install a program I get:
> 
> checking for C compiler default output... configure: error: C compiler cannot 
> create executables
> 
> when doing ./configure in RH9.
> 
> How do I correct this error?
 
I can't be of much help here since I stopped using RedHat at version 7.3. However it sounds like 
your C compiler may be broken.
What do you get from the following commands:

rpm -qa | grep gcc
gcc --version

Can you write a hello world program and compile it by hand?

If gcc is installed and working, perhaps the configure script is not finding it. 
Try ./configure --help. You can usually pass ./configure an option to force it to use your gcc. 

Hth.

John 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
