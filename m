From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Patching problems
Date: Tue, 08 Oct 2002 02:55:53 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021008005553.7719.qmail@linux.ik5bcu.ampr.org>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

What does it means and how can I correct?

[root@linux securetar]# patch -p3 < securetar.c.diff
patching file securetar.c
Hunk #1 FAILED at 231.
1 out of 1 hunk FAILED -- saving rejects to file securetar.c.rej

---here the files---:

#securetar.c [end part]

                /************************************/
                /* Write out the corresponding data */
                /************************************/
                while( FileSize>0 ) {
                        FileSize-=(long)count=read(fdin,&block,sizeof(block));
                        write( fdout, &block, count );
                }
        }
        return( 0 );
}




#securetar.c.diff

--- amavis-0.2.1.orig/src/securetar/securetar.c Fri May 26 11:53:27 2000 
+++ amavis-0.2.1/src/securetar/securetar.c      Tue Sep  3 15:22:58 2002 
@@ -231,8 +231,8 @@
                /************************************/
                /* Write out the corresponding data */
                /************************************/
-               while( FileSize>0 ) { 
-                       FileSize-=(long)count=read(fdin,&block,sizeof(block)); 
+                while( FileSize>0 && (count=read(fdin,&block,sizeof(block))) )
+                        FileSize-=(long)count; 
                        write( fdout, &block, count );
                }
        }
#eof

Thanks,Greetings

----------------------------------
E-Mail: Marco Calistri <ik5bcu@tin.it>
Date: 08-Oct-2002 Time: 02:51:57
Red Hat Linux release 7.3 (Valhalla) kernel 2.4.18-10
This message was sent by XFMail
----------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
