From: "Eve Atley" <eatley@wowcorp.com>
Subject: 2 questions: 1. ssh permissions to 777 and 2. recursively change all directories/files to 777
Date: Thu, 9 Dec 2004 16:11:50 -0500
Message-ID: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
References: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
Reply-To: <eatley@wowcorp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <9BBB7C9EFEF1874BAC4DC204E867EFAF02561319@s99mail06>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


First question...
We have people SSHing into our Linux box from overseas (India to US, company
access only). But files that are uploaded from these people become read-only
to anyone else accessing them. We *require* that they be readable/writable
by this side of the pond (US). How can I set this to occur? Otherwise, this
method of transferring files will *not* work for us, and perhaps someone can
point me to another solution.

Second question...
How can I recursively set all files/directories to 777?
Chmod -R 777 *.* ... Didn't seem to hit everything.

Thanks!

-Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
