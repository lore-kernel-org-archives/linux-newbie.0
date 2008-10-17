From: "Jonas Galvez" <jonas@codeazur.com.br>
Subject: /etc/group question
Date: Fri, 17 Oct 2008 18:28:35 -0300
Message-ID: <10df03a30810171428r1936657fyca2ac7075723e073@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I have a server box with the following files:

/etc/passwd
foo:x:1000:1000::/home/foo:/bin/bash
bar:x:1001:1001::/home/bar:/bin/bash

/etc/group
foo:x:1000:
bar:!:1001:foo

/etc/shadow
foo:[ENCRYPTED_PASSWORD]:14010:0:99999:7:::
bar:[ENCRYPTED_PASSWORD]:14055:0:99999:7:::

Now the question is, what commands could the sys admin have possibly
issued to end up with that last line in /etc/group with an exclamation
point in the password field? I'm have a seriously hard time figuring
that out. I'm trying to set up another server box with exactly the
same user setup, but I don't want to copy the files, I want to know
what commands were used to generate them.

Thanks in advance,
--Jonas Galvez
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
