From: Jim Reimer <jdr@wa5rrh.org>
Subject: Re: string manipulating?
Date: Sun, 05 Jan 2003 11:56:54 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E1871E6.FDD712D4@wa5rrh.org>
References: <200212081837.LAA15273@cu.imt.net> <3DF44FE9.69FB5E4D@ihug.co.nz> <3E186154.D32669EB@gelm.net> <3E1864CF.31F52AB7@wa5rrh.org> <3E186E82.7CDBCC0C@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Chuck Gelm wrote:
> 
> Hi, Jim:
> 
>  Thanks, that works great.
> Please explain:
> 
> \( is the left parenthesis escaped (?)

yes - we're defining the left paren as the field delimiter, and
cut will complain and refuse to work if you just give it -d(

> 
> '-f' is 'output only these fields'
>  what does the '2' of '-f2' do?

-f takes a list of fields to output, so in this case, -f2 means to
output the second field.  If you needed more fields, you could use
something like '-f1,3,5' (fields 1, 3, and 5) or '-f1-4' (fields 1
through 4), or whatever, depending on the need.

> 
> chuck
> 

73,
-jdr-
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
