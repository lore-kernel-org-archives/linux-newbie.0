From: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Subject: String Functions in Linux Kernel
Date: Fri, 23 Sep 2011 11:21:50 +0530
Message-ID: <CAOG7oKyfjT2gi1SXz6csBAqzUhgEYb4=jCw7=vcdztpgxVMf-A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=XprRxf4sTAJtKltMnwa5PFh82f7FEfFr7YHGa4wOSzA=;
        b=PLUUu1P1RplaGVVC9bwU748ewG516Y2fcoxBrhOw5qxZb3pypNJBVpoBJsab7tRgC4
         m9hrT+2EzoqZTuxhzq7xD4syKWGn2mBLHbKRDVqpfCSJUqLh9R6fEQjCrcB0fm9YEzML
         x3PaFfcfjq6mp5L9oc3gjxfDkVYO7HL3V7+G4=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Is it safe to use string.h functions in kernel which are mostly user
level functions.
What is the difference when I write
#include<string.h>
and
#include<linux/string.h>
Where does each of the above point to in the linux kernel directory?
In Linux-3.0/include/linux/string.h I found an entry for
#include<string.h>
What does the above exactly mean?
Are there string safe function present in linux as like in windows driver model?

--
Chandrabhanu Mahapatra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
