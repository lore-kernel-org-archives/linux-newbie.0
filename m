From: wolfgang <wolfgang127jp@ybb.ne.jp>
Subject: Getting a warning with const
Date: Sun, 27 Apr 2003 23:13:58 +0900
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030427231356.75AC.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi gurus,
I made a simple code(dos2unix.c) that changes dos formatted text to unix
or unix formatted text to dos. it's up to the code name.
If I change the argument of getBasename function to (const char *name),
I get a following warning.
dos2unix.c: In function `getBasename':
dos2unix.c:10: warning: assignment discards qualifiers from pointer
target type

But without const, I don't get a warning.
what's going on with my code ???

% gcc -o dos2unix dos2unix.c
% ln -s dos2unix unix2dos
The following code is the dos2unix.c
-------dos2unix.c--------
#include <stdio.h>
#include <string.h>
#include <unistd.h>

char* getBasename(char *name){
   char* basename = 0;
   if((basename = strrchr(name,'/')) != 0)
      basename++;
   else
      basename = name;
}

void dos2unix(FILE* file){
   int c;
   int cr_flag = 0;
   while((c = fgetc(file)) != EOF){
     if(cr_flag && c != '\n')
        putchar('\r');
     if(!(cr_flag = c == '\r'))
        putchar(c);
   }
}

void unix2dos(FILE* file){
   int c;
   while((c = fgetc(file)) != EOF){
      if( c == '\n' )
         putchar('\r');
      putchar(c);
   }

}

int main(int argc, char** argv){
   char* basename = 0;
   FILE* file = 0;
   void (*doit)(FILE* file);

   if(argc != 2){
      fprintf(stderr,"number of arguments must be 2\n");
      exit(1);
   }

   basename = getBasename(argv[0]);


   if((file = fopen(argv[1],"r")) == NULL){
      fprintf(stderr,"file %s cannot be opened.\n",argv[1]);
      exit(1);
   }

   if(strcmp(basename,"dos2unix") == 0){
      puts("Dos to Unix conversion");
      doit = dos2unix;
   }else{
      puts("Unix to Dos conversion");
      doit = unix2dos;
   }

   doit(file);

   fclose(file);
   return 0;
}

Thanks in advance.

wolfgang


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
