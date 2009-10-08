From: Rick Brown <rick.brown.3@gmail.com>
Subject: C question
Date: Thu, 8 Oct 2009 07:42:18 +0530
Message-ID: <7783925d0910071912u5e4f4a2au8442cb6537cd35ed@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=NgRLvTYwfczJhD0p+C9vrxU/jyU7blCN9TAWStqL/DI=;
        b=G/XbuCstG5F44oRJ0b79s/rKR11IHEkrABkgrz0CQxBUByKQ39oIqQHi/ju9QpW8V3
         vAjfdDUFzfM4QegUAV+9O+Wh5zXw6A0Q2Dh0boAcREh9T3EaqkTHfzuf6rfm7qxV3Y+T
         xXYjFPdoGYZs432bWplMO2ZSqN8y1l9Oqj0K4=
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hello list,

As far as I recall from K&R, isn't pointer arithmetic on a void
pointer banned? And any effort to do that results in an error -
because the compiler won't know by how much size to increment the
pointer for a statement like "ptr++"? But then how about this:

[rick@linux rick]$ cat t.c
#include <stdio.h>
int main()
{
    void *ptr = 0;
    printf("%d \n", ptr+1);
}
[rick@linux rick]$ gcc t.c
[rick@linux rick]$ ./a.out
1
[rick@linux rick]$

It compiles and runs fine ... !

TIA,

Rick

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

