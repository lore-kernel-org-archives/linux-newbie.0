From: Petre Bandac <g38@rdsbv.ro>
Subject: kswapd (?!) error
Date: Sat, 5 Oct 2002 08:16:03 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210050816.03883.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

can anyone translate in plain english the error below, please ? (the computer 
was frozen, and though it responded to ping, none of the services running - 
sshd, ftpd and apache - worked)

thanks,

petre




Oct  5 04:45:04 k kernel: Unable to handle kernel paging request at virtual 
address 361dcf1b
Oct  5 04:45:04 k kernel:  printing eip:
Oct  5 04:45:04 k kernel: c01297e8
Oct  5 04:45:04 k kernel: *pde = 00000000
Oct  5 04:45:04 k kernel: Oops: 0002
Oct  5 04:45:04 k kernel: CPU:    0
Oct  5 04:45:04 k kernel: EIP:    0010:[<c01297e8>]    Not tainted
Oct  5 04:45:04 k kernel: EFLAGS: 00010002
Oct  5 04:45:04 k kernel: eax: c14056d0   ebx: c14056d0   ecx: c4d90ae0   edx: 
361dcf1b
Oct  5 04:45:04 k kernel: esi: 00000000   edi: 00000457   ebp: 0000012a   esp: 
c14e3f58
Oct  5 04:45:04 k kernel: ds: 0018   es: 0018   ss: 0018
Oct  5 04:45:04 k kernel: Process kswapd (pid: 5, stackpage=c14e3000)
Oct  5 04:45:04 k kernel: Stack: 00000020 000001d0 00000020 00000006 c14056c0 
c02edf28 00000000 0000022c
Oct  5 04:45:04 k kernel:        00000457 c14056c0 c012a41c 00000006 000001d0 
c0289c68 00000000 c0289c68
Oct  5 04:45:04 k kernel:        c012a4bf 00000020 c0289c68 00000001 c14e2000 
c012a553 c0289bc0 00000000
Oct  5 04:45:04 k kernel: Call Trace: [<c012a41c>] [<c012a4bf>] [<c012a553>] 
[<c012a5ae>] [<c012a6bd>]
Oct  5 04:45:04 k kernel:    [<c0105478>]
Oct  5 04:45:05 k kernel:
Oct  5 04:45:05 k kernel: Code: 89 02 fb 51 8b 54 24 28 52 e8 8a f4 ff ff 83 
c4 08 fa 45 3b

-- 
 08:12:21 up 5 min,  2 users,  load average: 0.33, 0.24, 0.10

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
