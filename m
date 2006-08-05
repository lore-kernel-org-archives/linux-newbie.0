From: Mensch <bausparkasse@gmx.de>
Subject: Re: allocating disk space the fast way
Date: Sat, 05 Aug 2006 18:06:51 +0000
Message-ID: <1154801212.1885.16.camel@Marvin>
References: <1154799802.1885.9.camel@Marvin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1154799802.1885.9.camel@Marvin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie list <linux-newbie@vger.kernel.org>

it's me again.
i'm sorry, but i found a way myself.

written in c:

/*** START OF filesize_alloc.c ***/

#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <linux/unistd.h>
#include <errno.h>

int main(int argc, char **argv) {
	FILE *newfile;
	char *filename = "blub.img";
	int size_in_bytes = 2000*(1024*1024); /* 2000 MB */

	 /* create a new file char *filename or overwrite it */
	newfile = fopen(filename, "w");
	 /* now jump to byte int size_in_bytes from start... */
	fseek(newfile, size_in_bytes, SEEK_SET);
	 /* ... and write a final zero at this position */
	fwrite("\0", 1, 1, newfile); 
	fclose(newfile);
}

/*** END OF filesize_alloc.c ***/

Am Samstag, den 05.08.2006, 17:43 +0000 schrieb Mensch:
> hello list.
> i want to allocate some space for a harddisk image file.
> for now, i do it like
> $ dd if=/dev/zero of=blub.img bs=1M count=2000
> which takes some time. is there a faster way to create a huge file? it
> don't have to be zeroed.
> i've seen that e.g. azureus allocates filesize in no time. how does this
> work?
> 
> thanks in advance,
> josef gosch

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
