From: Peter <pfheiss@philonline.com>
Subject: Text Reformatting
Date: Sun, 18 May 2003 12:11:19 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030518041124.07222103AE@pfheiss>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

Some text I download for printing are formatted like:

      Because of the publicity the Iraqi government has given to the
                      issue, Iraqis worry about DU.

which adds more pages for printing.

How can I with some command, left align the text to read

Because of the publicity the Iraqi government has given to the
issue, Iraqis worry about DU.

yet maintaining the paragraphs.

When looking at the text with a word processor they are all left aligned and 
can only be changed manually line by line.

I came up with the sausage

cat file.txt | tr -s " "  "\012" > file1.txt | fmt -u -w 105 file1.txt > 
file2.txt

This does not maintain the paragraphs, however. Can sed do it and how?

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
