From: Ravi Wijayaratne <ravi_wija@yahoo.com>
Subject: Peculiar oops message
Date: Thu, 2 May 2002 09:51:32 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020502165132.81328.qmail@web13102.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I am trying to make sense of an Oops I got (attached
at the end).
After running ksymoops on the oops with the correct
system map I get the follwing call trace as follows

>>EIP; c011a320 <flush_sigqueue+24/44>   <=====
Trace; c011a3a3 <exit_sighand+47/50>
Trace; c0115b75 <do_exit+159/1c4>
Trace; c0115c06 <sys_exit+e/10>
Trace; c0106dfb <system_call+33/38>
Trace; c0105726 <kernel_thread+2a/30>

I am wondering how a system_call handler got in to the
stack in a kernel thread. I traced the nfsd code and
could not find a kernel_thread calling sys_exit. 
Why would a system call be needed for a kernel thread
anyway since we are already in kernel context.
Does this make sense to anyone or am I missing
something obvious ?

Thanks
Ravi

------------- ksymoops output ------------------
Oops: 0000          
CPU:    0         
EIP:    0010:[<c011a320>]    Not tainted              
                         
Using defaults from ksymoops -t elf32-i386 -a i386
EFLAGS: 00010006                
eax: ed356568   ebx: ed356000   ecx: 00000000   edx:
0000000a                   
                                          
esi: ed356000   edi: 00000000   ebp: cf542a00   esp:
ed357f90                   
                                          
ds: 0018   es: 0018   ss: 0018                        
     
Process nfsd (pid: 1045, stackpage=ed35               
                     
Stack: ed356000 c011a3a3 ed356568 00000000 c0115b75
ed356000 ed356000 ed381f10  
                                                      
                     
       00000130 c0115c06 00000000 c0106dfb 00000100
ed356560 00000104 ed381f10  
                                                      
                     
       00000130 cf542a00 00000001 ed350018 ed5a0018
00000001 c0105726 00000010  
                                                      
                     
Call Trace: [<c011a3a3>] [<c0115b75>] [<c0115c06>]
[<c0106dfb>] [<c0105726>]    
                                                      
                 
Code: 8b 1a 52 a1 40 7e 33 c0 50 e8 ae c7 00 00 83 c4
08 ff 0d 44               

>>EIP; c011a320 <flush_sigqueue+24/44>   <=====
Trace; c011a3a3 <exit_sighand+47/50>
Trace; c0115b75 <do_exit+159/1c4>
Trace; c0115c06 <sys_exit+e/10>
Trace; c0106dfb <system_call+33/38>
Trace; c0105726 <kernel_thread+2a/30>
Code;  c011a320 <flush_sigqueue+24/44>
00000000 <_EIP>:
Code;  c011a320 <flush_sigqueue+24/44>   <=====
   0:   8b 1a                     mov    (%edx),%ebx  
<=====
Code;  c011a322 <flush_sigqueue+26/44>
   2:   52                        push   %edx
Code;  c011a323 <flush_sigqueue+27/44>
   3:   a1 40 7e 33 c0            mov   
0xc0337e40,%eax
Code;  c011a328 <flush_sigqueue+2c/44>
   8:   50                        push   %eax
Code;  c011a329 <flush_sigqueue+2d/44>
   9:   e8 ae c7 00 00            call   c7bc
<_EIP+0xc7bc> c0126adc <kmem_cache
_free+0/94>
Code;  c011a32e <flush_sigqueue+32/44>
   e:   83 c4 08                  add    $0x8,%esp
Code;  c011a331 <flush_sigqueue+35/44>
  11:   ff 0d 44 00 00 00         decl   0x44


=====
------------------------------
Ravi Wijayaratne

__________________________________________________
Do You Yahoo!?
Yahoo! Health - your guide to health and wellness
http://health.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
