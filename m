From: "Dave B. Sharp" <daveb_sharp@yahoo.ca>
Subject: physical memory for user space application
Date: Tue, 15 Nov 2005 16:09:13 -0500 (EST)
Message-ID: <20051115210913.18049.qmail@web32905.mail.mud.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>


 Hi There,
    
   I want to access the physical memory associated
 with a user space application. 
   From my driver I would like to:
    - Lock down a range of memory (ensure that it is
not paged out)
    - Get a mapping of the corrosponding phyiscal
memory i.e. I would like to be able to read the
physical memory directly. 
    - I don't want to use the proc file system.
   Can anyone tell me what the fucntions and / or 
data structures are to acomplish this?
      Cheers
        Dave Sharp
   



	

	
		
__________________________________________________________ 
Find your next car at http://autos.yahoo.ca
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
