From: Elias Athanasopoulos <eathan@otenet.gr>
Subject: Re: a little help for newbie in C
Date: Sun, 7 Apr 2002 18:57:42 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020407185742.A1151@neutrino.particles.org>
References: <2.2.32.20020320171350.00e97580@[192.168.1.23]> <E16tjkt-0000ir-00@cue.satnet.net>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E16tjkt-0000ir-00@cue.satnet.net>; from r4mzez@yahoo.com on Sat, Apr 06, 2002 at 11:38:28AM -0500
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ramzez <r4mzez@yahoo.com>
Cc: linux-newbie@vger.kernel.org

On Sat, Apr 06, 2002 at 11:38:28AM -0500, ramzez wrote:

>   I'm newbie in C and I want to write a string and later read a char... but i
> don't want to see this char (I mean don't echo only for this)...
> <.../...>
>   printf("Hi, i am a string\n")
>   key=getchar();  //but I don't want to see the character pressed
> <.../...>

There are a lot of ways to do this. Some of them are more or less porta-
ble. 

One way is to use the ncurses lib. It contains a lot of functions for
text mode applications (text windows, keyboard handling, etc.). Read
the ncurses docs to see examples.

One other is to use low-level terminal handling. I did this before
3-4 years. Below, you can have a look at my code. It's quite old so
double-check it.

Elias


#include <stddef.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <termios.h>

struct termios saved_attrib;

void set_input_mode(void)
{
	struct termios attrib;
	char *name;
	
	/* check stdin is a terminal */
	
	if (!isatty(STDIN_FILENO)) {
		fprintf(stderr, "Not a terminal!\n");
		exit(EXIT_FAILURE);
	}
	
	/* save original attributes */
	
	tcgetattr(STDIN_FILENO, &saved_attrib);
	atexit(reset_input_mode);
	
	/* make the changes */
	
	tcgetattr(STDIN_FILENO, &attrib);
	attrib.c_lflag &= ~(ICANON|ECHO); /* disables canonical mode, echo */
	attrib.c_cc[VMIN] = 0;            /* non-blocking input */
	attrib.c_cc[VTIME] = 0;
	tcsetattr(STDIN_FILENO, TCSAFLUSH, &attrib);
}

-- 
http://gnewtellium.sourceforge.net			MP3 is not a crime.	
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
