From: CaT <cat@zip.com.au>
Subject: Re: Text Reformatting
Date: Sun, 18 May 2003 14:23:18 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030518042318.GA1473@zip.com.au>
References: <20030518041124.07222103AE@pfheiss>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030518041124.07222103AE@pfheiss>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

On Sun, May 18, 2003 at 12:11:19PM +0800, Peter wrote:
> I came up with the sausage
> 
> cat file.txt | tr -s " "  "\012" > file1.txt | fmt -u -w 105 file1.txt > 
> file2.txt
> 
> This does not maintain the paragraphs, however. Can sed do it and how?

sed -e 's/^[ 	]\+//' -e 's/[ 	]\+$//' <file.txt | fmt -u -w 105 >file1.txt

I added the 2nd regexp just to make sure there was nothing there. Tab and
a space inside the square brackets.

-- 
Martin's distress was in contrast to the bitter satisfaction of some
of his fellow marines as they surveyed the scene. "The Iraqis are sick
people and we are the chemotherapy," said Corporal Ryan Dupre. "I am
starting to hate this country. Wait till I get hold of a friggin' Iraqi.
No, I won't get hold of one. I'll just kill him."
	- http://www.informationclearinghouse.info/article2479.htm
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
