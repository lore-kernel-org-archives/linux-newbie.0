From: "Rajat Jain" <Rajat.Jain@infogain.com>
Subject: Padding in gcc
Date: Mon, 9 Jul 2007 17:10:51 +0530
Message-ID: <C86899CCB10A6C4E93D5978DCB232D4B0575FCC7@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

Hi,

Perhaps a little offtopic but no harm in trying ...

Can we always rely on the fact that gcc will pad the following structure?

typedef struct {
    int descrp;      SYSCALL64_STRUCT_ATTR;
    (Automatic padding here?)
    long long pos;   SYSCALL64_STRUCT_ATTR;
    int mode;        SYSCALL64_STRUCT_ATTR;
} lseek64_t;

What is the correct way to make it portable? Explicitly added padding fields?

Thanks,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
