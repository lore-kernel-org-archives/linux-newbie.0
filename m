From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA   GeForce4)
Date: Sat, 27 Mar 2004 08:57:25 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403270857.25818.pa3gcu@zeelandnet.nl>
References: <001b01c413c4$621f4230$130aa8c0@pipotiy3ljnut2> <200403270819.54349.pa3gcu@zeelandnet.nl>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Type: Multipart/Mixed;
  boundary="Boundary-00=_lPTZAz7gr8i/bnR"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403270819.54349.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org


--Boundary-00=_lPTZAz7gr8i/bnR
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday 27 March 2004 08:19, pa3gcu wrote:
> > yet, # sh NVIDIA-Linux-x86-1.0-5336-pkg1.run would not work.
>
> Then i am sorry to say you have NOT followed them to the "Tee".

I need to rephrase, i have just discovered another descrepancy, or at least it 
looks like it to me, let me explain.

The nvidia install file has precompiled kernel modules for a lot of 
distribution installed kernels from Redhat Mandrake and Suse, i have attached 
a list.
If no running kernel is found of that nature then the installer ftp's to 
nvidia's site (if thats possable) and automaticly checks to see if a kernel 
module is available, if no kernel modules for the running kernel is found on 
nvidia's site then one needs the source of the running kernel installed and 
it needs to be configured and dependancy files created, one of which i belive 
is modversions.h .

Somewhere back in the past the kernel source changed, the file modversions.h 
(AFAIK) used to get created by make dep, however i now see it does not, it 
gets created when one starts to compile the kernel itself with 'make bzImage' 
or which ever option is used.

Now to solve that problem you can of course simply issue;
make bzImage
to create /usr/src/linux/include/linux/modversions.h
OR you can cheat because we do NOT want to install the kernel we are making 
because it is already in use (if you follow me).
So here is how you can cheat, cheat i suppose is the wrong word, we simply 
take a shortcut and save time.

Do:
touch /usr/src/linux/include/linux/modversions.h
echo "#include <linux/modsetver.h> > /usr/src/linux/include/linux/ 
modversions.h"
(above all on one line).

So to recap;

mke oldconfig
make dep
touch as per above example
echo idem dito.

That could very well be the problem.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


--Boundary-00=_lPTZAz7gr8i/bnR
Content-Type: text/plain;
  charset="iso-8859-1";
  name="me"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename="me"

 rh72up_2.4.7-10_i386
 rh72up_2.4.7-10_i686
 rh72up_2.4.7-10_athlon
 rh72smp_2.4.7-10_i686
 rh72smp_2.4.7-10_athlon
 rh72enterprise_2.4.7-10_i686
 rh73up_2.4.18-3_i386
 rh73up_2.4.18-3_i686
 rh73up_2.4.18-3_athlon
 rh73smp_2.4.18-3_i586
 rh73smp_2.4.18-3_i686
 rh73smp_2.4.18-3_athlon
 rh73bigmem_2.4.18-3_i686
 rh73up_2.4.20-19.7_i386
 rh73up_2.4.20-19.7_i586
 rh73up_2.4.20-19.7_i686
 rh73up_2.4.20-19.7_athlon
 rh73smp_2.4.20-19.7_i586
 rh73smp_2.4.20-19.7_i686
 rh73smp_2.4.20-19.7_athlon
 rh73bigmem_2.4.20-19.7_i686
 rh73boot_2.4.20-19.7_i386
 rh80up_2.4.18-14_i586
 rh80up_2.4.18-14_i686
 rh80up_2.4.18-14_athlon
 rh80smp_2.4.18-14_i686
 rh80smp_2.4.18-14_athlon
 rh80bigmem_2.4.18-14_i686
 rh80up_2.4.20-19.8_i386
 rh80up_2.4.20-19.8_i586
 rh80up_2.4.20-19.8_i686
 rh80up_2.4.20-19.8_athlon
 rh80smp_2.4.20-19.8_i586
 rh80smp_2.4.20-19.8_i686
 rh80smp_2.4.20-19.8_athlon
 rh80bigmem_2.4.20-19.8_i686
 rh80boot_2.4.20-19.8_i386
 rh9up_2.4.20-6_i586
 rh9up_2.4.20-6_i686
 rh9up_2.4.20-6_athlon
 rh9smp_2.4.20-6_i686
 rh9smp_2.4.20-6_athlon
 rh9bigmem_2.4.20-6_i686
 rh9up_2.4.20-8_i586
 rh9up_2.4.20-8_i686
 rh9up_2.4.20-8_athlon
 rh9smp_2.4.20-8_i686
 rh9smp_2.4.20-8_athlon
 rh9bigmem_2.4.20-8_i686
 rh9up_2.4.20-24_i386
 rh9up_2.4.20-24_i586
 rh9up_2.4.20-24_i686
 rh9up_2.4.20-24_athlon
 rh9smp_2.4.20-24_i586
 rh9bigmem_2.4.20-24_i686
 rh9smp_2.4.20-24_athlon
 rh9boot_2.4.20-24_i386
 rhel30_2.4.21-4.EL_i686
 rhel30_2.4.21-4.EL_athlon
 rhel30smp_2.4.21-4.EL_i686
 rhel30smp_2.4.21-4.EL_athlon
 rhel30hugemem_2.4.21-4.EL_i686
 rhel30boot_2.4.21-4.EL_i386
 fedora1up_2.4.22-1.2115.nptl_i586
 fedora1up_2.4.22-1.2115.nptl_i686
 fedora1up_2.4.22-1.2115.nptl_athlon
 fedora1smp_2.4.22-1.2115.nptl_i686
 fedora1smp_2.4.22-1.2115.nptl_athlon
 fedora1boot_2.4.22-1.2115.nptl_i386
 mdk81up_2.4.8-26_i586
 mdk81smp_2.4.8-26_i586
 mdk81enterprise_2.4.8-26_i586
 mdk82up_2.4.18-6_i586
 mdk82smp_2.4.18-6_i586
 mdk82enterprise_2.4.18-6_i586
 mdk82secure_2.4.18-6_i586
 mdk90up_2.4.19-16_i586
 mdk90smp_2.4.19-16_i586
 mdk90enterprise_2.4.19-16_i586
 mdk91up_2.4.21-0.13_i586
 mdk91smp_2.4.21-0.13_i586
 mdk91enterprise_2.4.21-0.13_i586
 mdk92_2.4.22.10mdk-1-1mdk
 mdk924G_2.4.22.10mdk-1-1mdk
 mdk92enterprise_2.4.22.10mdk-1-1mdk
 mdk92secure_2.4.22.10mdk-1-1mdk
 mdk92smp_2.4.22.10mdk-1-1mdk
 suse-8.2-k_deflt
 suse-8.2-k_athlon
 suse-8.2-k_psmp
 suse-8.2-k_smp
 suse-8.2-2.4.20-86-k_deflt
 suse-8.2-2.4.20-86-k_athlon
 suse-8.2-2.4.20-86-k_psmp
 suse-8.2-2.4.20-86-k_smp
 suse-8.2-2.4.20-96-k_deflt
 suse-8.2-2.4.20-96-k_athlon
 suse-8.2-2.4.20-96-k_psmp
 suse-8.2-2.4.20-96-k_smp
 suse-8.2-2.4.20-98-k_deflt
 suse-8.2-2.4.20-98-k_athlon
 suse-8.2-2.4.20-98-k_psmp
 suse-8.2-2.4.20-98-k_smp
 suse-9.0-2.4.21-99-k_deflt
 suse-9.0-2.4.21-99-k_athlon
 suse-9.0-2.4.21-99-k_smp
 suse-9.0-2.4.21-99-k_smp4G
 suse-9.0-2.4.21-144-k_deflt
 suse-9.0-2.4.21-144-k_athlon
 suse-9.0-2.4.21-144-k_smp
 suse-9.0-2.4.21-144-k_smp4G

--Boundary-00=_lPTZAz7gr8i/bnR--


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
