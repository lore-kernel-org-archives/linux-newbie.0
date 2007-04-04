From: Fabiano Ramos <fabiano.ramos@gmail.com>
Subject: Re: kernel stack problem
Date: Wed, 04 Apr 2007 00:19:55 -0300
Message-ID: <1175656795.4689.19.camel@core2duo.localdomain>
References: <b115cb5f0704031750g52b68cc6ncdecd6f3f94afbdf@mail.gmail.com>
	 <1175648255.4689.3.camel@core2duo.localdomain>
	 <alpine.DEB.0.83.0704032150010.10010@sigma.j-a-k-j.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:subject:from:to:cc:in-reply-to:references:content-type:date:message-id:mime-version:x-mailer:content-transfer-encoding;
        b=sTr9eYt3RjQKxEy452pJSV/POqPTNRRUzO/7brBud6Uj/AvujcrexINSEFP4xSZlAIEyzFsjgqG43MembWGGJhUuWOdWKBCGzioyONiUGiK7nKIm3HCOyk4wTlNwNop5xgCSWor8S887q6SU2/KLJ4Ia9VsFU5WsdvMfywKN6mE=
In-Reply-To: <alpine.DEB.0.83.0704032150010.10010@sigma.j-a-k-j.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "John Anthony Kazos Jr." <jakj@j-a-k-j.com>
Cc: Rajat Jain <rajat.noida.india@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On Tue, 2007-04-03 at 21:51 -0400, John Anthony Kazos Jr. wrote:
> > This is wrong. Although the scope is at _block_ level, all variables are
> > allocated on the stack at _function_ level. So, when entering func() all
> > variables within it, including x and y, are allocated.
> 
> But this doesn't make sense. Why would the compiler not immediately 
> optimize both variables into the same allocation? It seems obvious to me 
> that the amount of space pushed onto the stack when the function is 
> entered should be the maximum space needed by any combination of local 
> variables in-scope at any time. GCC wouldn't be that stupid, would it?


Yes, I agree. But take a look...
 
00:19:01 framos@core2duo:~ $> more teste.c
#include <stdio.h>

int main()
{
   {
   int x=5;

   printf("x=%d\n",x);
   printf("addr(x)=%p\n", &x);

   {
      int y=10;
      
      printf("y=%d\n",y);
      printf("add(y)=%p\n", &y);
   } 

   return 0;
}
 
00:19:04 framos@core2duo:~ $> ./teste
x=5
addr(x)=0xbf8b0b00
y=10
add(y)=0xbf8b0afc
00:19:06 framos@core2duo:~ $> 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
