From: Petre Bandac <g38@rdsbv.ro>
Subject: login error
Date: Wed, 13 Nov 2002 00:57:44 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211130057.44928.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Inconsistency detected by ld.so:dynamic-link.h:62: elf_get_dynamic_info: 
Assertion '! bad dynamic tag"' failed


this is the message I get after I type something at the login: prompt (it 
doesn't bother to prompt the second line, the one with the password:)

the machine is a slackware 8.0 2.4.18 kernel patched for htb which acts as a 
router (and nothing else) for a /27 subnetwork (additional processes are 
portsentry and snmpd, i.e. it has a very small load)

the machine still works and I believe (haven't tried yet though) I can login 
via ssh

what could cause this problem and can it be repaired ?

thanks,

petre



-- 
 00:43:21 up 3 days, 15:54,  2 users,  load average: 0.09, 0.17, 0.09

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
