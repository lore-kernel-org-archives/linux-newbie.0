From: "William Stanard" <wstanard@palmertrinity.org>
Subject: unusual uniq results
Date: Tue, 28 Sep 2004 11:09:12 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <fc.004c4e0000647133004c4e0000647133.647263@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

In doing a demo before a class (Linux Red-hat 2.4.18-14), I used the uniq
command on a file (dup_nums) that consisted of twelve lines, each line
containing a number, from one to 9. I repeated the numbers, 6, 8, and 9.
The std output showed the expected list of numbers, all duplicates
removed. At a student's suggestion, I ran uniq again, but this time
directed the output to the file itself....

uniq dup_num > dup_num

...and, lo and behold, the file dup_num was empty. I checked uniq --help,
info uniq, and man uniq, all to no avail. Shouldn't uniq have removed the
duplicate numbers and written one through 9 to the file?

Bill stanard




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
