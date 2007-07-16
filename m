From: "Jack Bauer" <bauer.free@gmail.com>
Subject: what does this block of code mean?
Date: Mon, 16 Jul 2007 09:40:27 +0800
Message-ID: <90d49b680707151840i234269edrf79bbe9332c23946@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=B7hd0S2Oyvo5rXp6WMja6poccHvXlVUD6SCtnOu2Y7xhgwDLtJ3di0BNBx/Km7GpjfpiX85EDZxoiSBBUJ8jwYd8VpELXE0tSZvfMUnCYGMf+27a9JPgL6SdBQgaQQxsa6S/VHh1kxR8LCP3etUK8JJNy3/MFONSNUzujXuxU0U=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-2022-jp"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi

This is in tclcl.h file.

#include <sys/types.h>
#include <string.h>
#include <tcl.h>
extern "C" {
#include <otcl.h>
}

#include "tclcl-config.h"
#include "tracedvar.h"

What does extern "C" ... mean?

Thanks in advance.

-- 
Xia YinChu 夏寅初
@
ShangHai JiaoTong University
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
