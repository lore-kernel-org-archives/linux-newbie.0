From: John Kelly <jkelly@ntlworld.com>
Subject: Re: Text Reformatting
Date: Sun, 18 May 2003 08:54:23 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030518075217.PQHM11246.mta03-svc.ntlworld.com@there>
References: <20030518041124.07222103AE@pfheiss>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030518041124.07222103AE@pfheiss>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <pfheiss@philonline.com>, linux-newbie@vger.kernel.org

Hi,
On Sunday 18 May 2003 5:11 am, Peter wrote:
> Hi,
>
> Some text I download for printing are formatted like:
>
>       Because of the publicity the Iraqi government has given to the
>                       issue, Iraqis worry about DU.
>
> which adds more pages for printing.
>
> How can I with some command, left align the text to read
>
> Because of the publicity the Iraqi government has given to the
> issue, Iraqis worry about DU.
>
> yet maintaining the paragraphs.
>
I often cut and paste webpages into files and they are often munged as in the 
example you give.

My standard way of doing this is to use vi.
Open the file in vi and do:
Press <ESC> to ensure you are in command mode. 
Then type:
:%s/^\s*//
<ENTER>
If you are happy with the result, type:
ZZ 
to save the modified file
else type:
:q!
to quit without saving.


regards,

John Kelly
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
