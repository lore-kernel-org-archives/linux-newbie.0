From: G Anna <drguruolai@eth.net>
Subject: Mustek 1200UB scanner driver compilation error
Date: 12 May 2002 12:07:47 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3k7q927no.fsf@wobble.eth.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Dear All,

I have acquired a Mustek 1200UB scanner recently.  I downloaded the
driver for this scanner from

ftp://ftp.mustek.com.tw/pub/driver/1200UB/Linux/V1.0.3/1200ub.tar.gz 

After unpacking the driver into a separate directory I tried to build
it.  The README states three simple steps

# ./configure
# make
# make install

The first step went smoothly, the second step reports an error.  The
error comes when trying to compile the xscanimage.c file.  

Below is the complete output of the second step.  Its rather big.  I
just thought that it would be easier for you all to help me if you see
the full error and warning messages.

Kindly give me some pointers to solve this problem.  I am using Red
Hat 7.1.  Also,

$ uname -a
Linux wobble 2.4.16 #4 Thu May 9 11:19:49 IST 2002 i686 unknown

$ make --version
GNU Make version 3.79.1, by Richard Stallman and Roland McGrath.
(copyright notice snipped)

$ gcc --version
2.96

$ ls -l /usr/lib/libgimp.so
lrwxrwxrwx    1 root     root           20 Feb 11 01:52 /usr/lib/libgimp.so -> libgimp-1.2.so.0.0.1

Sincerely,
anna

(begin-output)

for subdir in lib sanei backend frontend doc tools; do		\
  target=`echo all-recursive | sed s/-recursive//`; \
  echo making $target in $subdir;	\
  (cd $subdir && make $target)	\
   || case "" in *k*) fail=yes;; *) exit 1;; esac; \
done && test -z "$fail"
making all in lib
make[1]: Entering directory `/opt/1200ub_sane-1.0.3/lib'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/opt/1200ub_sane-1.0.3/lib'
making all in sanei
make[1]: Entering directory `/opt/1200ub_sane-1.0.3/sanei'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/opt/1200ub_sane-1.0.3/sanei'
making all in backend
make[1]: Entering directory `/opt/1200ub_sane-1.0.3/backend'
make[1]: Nothing to be done for `all'.
make[1]: Leaving directory `/opt/1200ub_sane-1.0.3/backend'
making all in frontend
make[1]: Entering directory `/opt/1200ub_sane-1.0.3/frontend'
gcc -c -DHAVE_CONFIG_H -I. -I. -I../include -I../include -I/usr/local/include -I/usr/include/gtk-1.2 -I/usr/include/glib-1.2 -I/usr/lib/glib/include -I/usr/X11R6/include -D_GNU_SOURCE -DPATH_SANE_CONFIG_DIR=/usr/local/etc/sane.d 	  -DPATH_SANE_DATA_DIR=/usr/local/share 	  -DV_MAJOR=1 -DV_MINOR=0 -g -O2 -W -Wall -DSCSIBUFFERSIZE=131072 xscanimage.c
xscanimage.c:63: parse error before `GParam'
xscanimage.c:66: parse error before `PLUG_IN_INFO'
xscanimage.c:66: warning: type defaults to `int' in declaration of `PLUG_IN_INFO'
xscanimage.c:68: warning: initialization makes integer from pointer without a cast
xscanimage.c:69: warning: excess elements in scalar initializer
xscanimage.c:69: warning: (near initialization for `PLUG_IN_INFO')
xscanimage.c:70: warning: excess elements in scalar initializer
xscanimage.c:70: warning: (near initialization for `PLUG_IN_INFO')
xscanimage.c:71: warning: excess elements in scalar initializer
xscanimage.c:71: warning: (near initialization for `PLUG_IN_INFO')
xscanimage.c:72: warning: data definition has no type or storage class
xscanimage.c:103: parse error before `GDrawable'
xscanimage.c:103: warning: no semicolon at end of struct or union
xscanimage.c:106: parse error before `region'
xscanimage.c:106: warning: type defaults to `int' in declaration of `region'
xscanimage.c:106: warning: data definition has no type or storage class
xscanimage.c:109: parse error before `}'
xscanimage.c:110: warning: type defaults to `int' in declaration of `scan_win'
xscanimage.c:110: warning: data definition has no type or storage class
xscanimage.c:122: warning: missing initializer
xscanimage.c:122: warning: (near initialization for `long_options[2].has_arg')
xscanimage.c: In function `query':
xscanimage.c:234: syntax error before `args'
xscanimage.c: At top level:
xscanimage.c:238: parse error before `*'
xscanimage.c:238: warning: type defaults to `int' in declaration of `return_vals'
xscanimage.c:238: warning: data definition has no type or storage class
xscanimage.c:239: `args' undeclared here (not in a function)
xscanimage.c:239: `args' undeclared here (not in a function)
xscanimage.c:247: parse error before string constant
xscanimage.c:258: warning: type defaults to `int' in declaration of `gimp_install_procedure'
xscanimage.c:258: conflicting types for `gimp_install_procedure'
/usr/include/libgimp/gimp.h:262: previous declaration of `gimp_install_procedure'
xscanimage.c:258: warning: data definition has no type or storage class
xscanimage.c:260: parse error before `0'
xscanimage.c:260: warning: type defaults to `int' in declaration of `sane_init'
xscanimage.c:260: conflicting types for `sane_init'
../include/sane/sane.h:189: previous declaration of `sane_init'
xscanimage.c:260: warning: data definition has no type or storage class
xscanimage.c:261: parse error before `&'
xscanimage.c:261: warning: type defaults to `int' in declaration of `sane_get_devices'
xscanimage.c:261: conflicting types for `sane_get_devices'
../include/sane/sane.h:192: previous declaration of `sane_get_devices'
xscanimage.c:261: warning: data definition has no type or storage class
xscanimage.c:263: warning: type defaults to `int' in declaration of `devlist'
xscanimage.c:263: variable-size type declared outside of any function
xscanimage.c:263: conflicting types for `devlist'
xscanimage.c:115: previous declaration of `devlist'
xscanimage.c:263: warning: data definition has no type or storage class
xscanimage.c:263: parse error before `++'
xscanimage.c:270: warning: type defaults to `int' in declaration of `len'
xscanimage.c:270: conflicting types for `len'
xscanimage.c:243: previous declaration of `len'
xscanimage.c:270: initializer element is not constant
xscanimage.c:270: warning: data definition has no type or storage class
xscanimage.c:271: parse error before `for'
xscanimage.c:271: parse error before `->'
xscanimage.c:278: warning: type defaults to `int' in declaration of `mpath'
xscanimage.c:278: variable-size type declared outside of any function
xscanimage.c:278: variable-sized object may not be initialized
xscanimage.c:278: conflicting types for `mpath'
xscanimage.c:241: previous declaration of `mpath'
xscanimage.c:278: warning: data definition has no type or storage class
xscanimage.c:281: parse error before string constant
xscanimage.c:288: warning: type defaults to `int' in declaration of `gimp_install_procedure'
xscanimage.c:288: warning: data definition has no type or storage class
xscanimage.c:290: warning: type defaults to `int' in declaration of `sane_exit'
xscanimage.c:290: conflicting types for `sane_exit'
../include/sane/sane.h:190: previous declaration of `sane_exit'
xscanimage.c:290: warning: data definition has no type or storage class
xscanimage.c:291: parse error before `}'
xscanimage.c:294: parse error before `GParam'
xscanimage.c: In function `run':
xscanimage.c:297: syntax error before `values'
xscanimage.c:298: `GRunModeType' undeclared (first use in this function)
xscanimage.c:298: (Each undeclared identifier is reported only once
xscanimage.c:298: for each function it appears in.)
xscanimage.c:303: `run_mode' undeclared (first use in this function)
xscanimage.c:303: `param' undeclared (first use in this function)
xscanimage.c:304: request for member `mode' in something not a structure or union
xscanimage.c:306: invalid type argument of `unary *'
xscanimage.c:307: `values' undeclared (first use in this function)
xscanimage.c:309: `PARAM_STATUS' undeclared (first use in this function)
xscanimage.c:310: `STATUS_CALLING_ERROR' undeclared (first use in this function)
xscanimage.c:325: `RUN_INTERACTIVE' undeclared (first use in this function)
xscanimage.c:327: `STATUS_SUCCESS' undeclared (first use in this function)
xscanimage.c:328: break statement not within loop or switch
xscanimage.c:330: `RUN_NONINTERACTIVE' undeclared (first use in this function)
xscanimage.c:332: break statement not within loop or switch
xscanimage.c:334: `RUN_WITH_LAST_VALS' undeclared (first use in this function)
xscanimage.c:336: break statement not within loop or switch
xscanimage.c:338: default label not within a switch statement
xscanimage.c:339: break statement not within loop or switch
xscanimage.c: In function `null_print_func':
xscanimage.c:344: warning: unused parameter `msg'
xscanimage.c: In function `update_preview':
xscanimage.c:353: request for member `preview' in something not a structure or union
xscanimage.c:354: request for member `preview' in something not a structure or union
xscanimage.c:351: warning: unused parameter `dialog'
xscanimage.c:351: warning: unused parameter `arg'
xscanimage.c: In function `update_param':
xscanimage.c:364: request for member `info_label' in something not a structure or union
xscanimage.c:391: request for member `info_label' in something not a structure or union
xscanimage.c:393: request for member `preview' in something not a structure or union
xscanimage.c:394: request for member `preview' in something not a structure or union
xscanimage.c:359: warning: unused parameter `arg'
xscanimage.c: In function `quit_xscan':
xscanimage.c:441: request for member `preview' in something not a structure or union
xscanimage.c:443: request for member `preview' in something not a structure or union
xscanimage.c:444: request for member `preview' in something not a structure or union
xscanimage.c:459: request for member `mode' in something not a structure or union
xscanimage.c: In function `scan_win_delete':
xscanimage.c:468: warning: unused parameter `w'
xscanimage.c:468: warning: unused parameter `data'
xscanimage.c: In function `preview_window_destroyed':
xscanimage.c:475: warning: unused parameter `widget'
xscanimage.c: In function `scan_preview':
xscanimage.c:487: request for member `preview' in something not a structure or union
xscanimage.c:489: request for member `preview' in something not a structure or union
xscanimage.c:490: request for member `preview' in something not a structure or union
xscanimage.c:490: request for member `preview' in something not a structure or union
xscanimage.c:491: request for member `preview' in something not a structure or union
xscanimage.c:491: request for member `preview' in something not a structure or union
xscanimage.c:491: request for member `preview' in something not a structure or union
xscanimage.c:491: request for member `preview' in something not a structure or union
xscanimage.c:491: request for member `preview' in something not a structure or union
xscanimage.c:499: request for member `preview' in something not a structure or union
xscanimage.c:501: request for member `preview' in something not a structure or union
xscanimage.c:502: request for member `preview' in something not a structure or union
xscanimage.c:483: warning: unused parameter `call_data'
xscanimage.c: In function `advance':
xscanimage.c:510: request for member `x' in something not a structure or union
xscanimage.c:510: request for member `param' in something not a structure or union
xscanimage.c:514: request for member `x' in something not a structure or union
xscanimage.c:515: request for member `y' in something not a structure or union
xscanimage.c:516: request for member `y' in something not a structure or union
xscanimage.c:518: request for member `region' in something not a structure or union
xscanimage.c:518: request for member `tile' in something not a structure or union
xscanimage.c:519: request for member `y' in something not a structure or union
xscanimage.c:520: request for member `param' in something not a structure or union
xscanimage.c:521: request for member `param' in something not a structure or union
xscanimage.c:522: request for member `param' in something not a structure or union
xscanimage.c:526: request for member `tile_offset' in something not a structure or union
xscanimage.c:527: request for member `first_frame' in something not a structure or union
xscanimage.c:531: request for member `y' in something not a structure or union
xscanimage.c:531: request for member `param' in something not a structure or union
xscanimage.c:532: request for member `param' in something not a structure or union
xscanimage.c:532: request for member `y' in something not a structure or union
xscanimage.c:533: request for member `region' in something not a structure or union
xscanimage.c:533: request for member `tile' in something not a structure or union
xscanimage.c:534: request for member `y' in something not a structure or union
xscanimage.c:535: request for member `param' in something not a structure or union
xscanimage.c:540: request for member `tile_offset' in something not a structure or union
xscanimage.c: In function `input_available':
xscanimage.c:563: request for member `param' in something not a structure or union
xscanimage.c:565: request for member `input_tag' in something not a structure or union
xscanimage.c:566: request for member `input_tag' in something not a structure or union
xscanimage.c:582: request for member `bytes_read' in something not a structure or union
xscanimage.c:583: request for member `progress' in something not a structure or union
xscanimage.c:584: request for member `bytes_read' in something not a structure or union
xscanimage.c:584: request for member `num_bytes' in something not a structure or union
xscanimage.c:585: request for member `input_tag' in something not a structure or union
xscanimage.c:589: request for member `param' in something not a structure or union
xscanimage.c:591: case label not within a switch statement
xscanimage.c:592: request for member `mode' in something not a structure or union
xscanimage.c:593: request for member `out' in something not a structure or union
xscanimage.c:597: request for member `param' in something not a structure or union
xscanimage.c:599: case label not within a switch statement
xscanimage.c:609: request for member `tile' in something not a structure or union
xscanimage.c:609: request for member `tile_offset' in something not a structure or union
xscanimage.c:611: request for member `x' in something not a structure or union
xscanimage.c:617: case label not within a switch statement
xscanimage.c:620: request for member `tile' in something not a structure or union
xscanimage.c:620: request for member `tile_offset' in something not a structure or union
xscanimage.c:625: default label not within a switch statement
xscanimage.c:632: case label not within a switch statement
xscanimage.c:633: request for member `mode' in something not a structure or union
xscanimage.c:634: request for member `out' in something not a structure or union
xscanimage.c:638: request for member `param' in something not a structure or union
xscanimage.c:640: case label not within a switch statement
xscanimage.c:641: request for member `param' in something not a structure or union
xscanimage.c:653: request for member `tile' in something not a structure or union
xscanimage.c:653: request for member `tile_offset' in something not a structure or union
xscanimage.c:655: request for member `x' in something not a structure or union
xscanimage.c:661: case label not within a switch statement
xscanimage.c:664: request for member `tile' in something not a structure or union
xscanimage.c:664: request for member `tile_offset' in something not a structure or union
xscanimage.c:665: request for member `tile_offset' in something not a structure or union
xscanimage.c:670: default label not within a switch statement
xscanimage.c:677: case label not within a switch statement
xscanimage.c:678: case label not within a switch statement
xscanimage.c:679: case label not within a switch statement
xscanimage.c:680: request for member `mode' in something not a structure or union
xscanimage.c:683: request for member `out' in something not a structure or union
xscanimage.c:684: request for member `out' in something not a structure or union
xscanimage.c:689: request for member `param' in something not a structure or union
xscanimage.c:691: case label not within a switch statement
xscanimage.c:702: request for member `tile' in something not a structure or union
xscanimage.c:702: request for member `tile_offset' in something not a structure or union
xscanimage.c:703: request for member `tile_offset' in something not a structure or union
xscanimage.c:705: request for member `x' in something not a structure or union
xscanimage.c:711: case label not within a switch statement
xscanimage.c:714: request for member `tile' in something not a structure or union
xscanimage.c:714: request for member `tile_offset' in something not a structure or union
xscanimage.c:715: request for member `tile_offset' in something not a structure or union
xscanimage.c:724: default label not within a switch statement
xscanimage.c:726: request for member `param' in something not a structure or union
xscanimage.c:736: request for member `param' in something not a structure or union
xscanimage.c:548: warning: unused parameter `data'
xscanimage.c:548: warning: unused parameter `source'
xscanimage.c:548: warning: unused parameter `cond'
xscanimage.c: In function `scan_done':
xscanimage.c:748: request for member `input_tag' in something not a structure or union
xscanimage.c:750: request for member `input_tag' in something not a structure or union
xscanimage.c:751: request for member `input_tag' in something not a structure or union
xscanimage.c:754: request for member `progress' in something not a structure or union
xscanimage.c:757: request for member `progress' in something not a structure or union
xscanimage.c:758: request for member `progress' in something not a structure or union
xscanimage.c:759: request for member `header_size' in something not a structure or union
xscanimage.c:761: request for member `mode' in something not a structure or union
xscanimage.c:763: request for member `out' in something not a structure or union
xscanimage.c:764: request for member `out' in something not a structure or union
xscanimage.c:772: request for member `y' in something not a structure or union
xscanimage.c:772: request for member `param' in something not a structure or union
xscanimage.c:773: request for member `y' in something not a structure or union
xscanimage.c:773: request for member `param' in something not a structure or union
xscanimage.c:775: request for member `y' in something not a structure or union
xscanimage.c:777: request for member `region' in something not a structure or union
xscanimage.c:777: request for member `tile' in something not a structure or union
xscanimage.c:778: request for member `y' in something not a structure or union
xscanimage.c:779: request for member `param' in something not a structure or union
xscanimage.c:780: request for member `drawable' in something not a structure or union
xscanimage.c:781: request for member `image_ID' in something not a structure or union
xscanimage.c:782: request for member `drawable' in something not a structure or union
xscanimage.c:783: request for member `tile' in something not a structure or union
xscanimage.c:784: request for member `tile' in something not a structure or union
xscanimage.c: In function `scan_start':
xscanimage.c:808: request for member `mode' in something not a structure or union
xscanimage.c:808: request for member `tile' in something not a structure or union
xscanimage.c:814: request for member `y' in something not a structure or union
xscanimage.c:814: request for member `param' in something not a structure or union
xscanimage.c:815: request for member `y' in something not a structure or union
xscanimage.c:815: request for member `param' in something not a structure or union
xscanimage.c:817: request for member `y' in something not a structure or union
xscanimage.c:819: request for member `region' in something not a structure or union
xscanimage.c:819: request for member `tile' in something not a structure or union
xscanimage.c:820: request for member `y' in something not a structure or union
xscanimage.c:821: request for member `param' in something not a structure or union
xscanimage.c:826: request for member `param' in something not a structure or union
xscanimage.c:827: request for member `param' in something not a structure or union
xscanimage.c:828: request for member `region' in something not a structure or union
xscanimage.c:828: request for member `tile' in something not a structure or union
xscanimage.c:829: request for member `param' in something not a structure or union
xscanimage.c:833: request for member `x' in something not a structure or union
xscanimage.c:833: request for member `y' in something not a structure or union
xscanimage.c:845: request for member `param' in something not a structure or union
xscanimage.c:855: request for member `num_bytes' in something not a structure or union
xscanimage.c:855: request for member `param' in something not a structure or union
xscanimage.c:855: request for member `param' in something not a structure or union
xscanimage.c:856: request for member `bytes_read' in something not a structure or union
xscanimage.c:858: request for member `param' in something not a structure or union
xscanimage.c:860: case label not within a switch statement
xscanimage.c:860: break statement not within loop or switch
xscanimage.c:861: case label not within a switch statement
xscanimage.c:861: break statement not within loop or switch
xscanimage.c:862: case label not within a switch statement
xscanimage.c:862: break statement not within loop or switch
xscanimage.c:863: case label not within a switch statement
xscanimage.c:863: break statement not within loop or switch
xscanimage.c:864: case label not within a switch statement
xscanimage.c:864: break statement not within loop or switch
xscanimage.c:867: request for member `mode' in something not a structure or union
xscanimage.c:869: request for member `header_size' in something not a structure or union
xscanimage.c:871: request for member `param' in something not a structure or union
xscanimage.c:873: case label not within a switch statement
xscanimage.c:874: case label not within a switch statement
xscanimage.c:875: case label not within a switch statement
xscanimage.c:876: case label not within a switch statement
xscanimage.c:877: request for member `out' in something not a structure or union
xscanimage.c:878: request for member `param' in something not a structure or union
xscanimage.c:878: request for member `param' in something not a structure or union
xscanimage.c:879: break statement not within loop or switch
xscanimage.c:881: case label not within a switch statement
xscanimage.c:882: request for member `param' in something not a structure or union
xscanimage.c:883: request for member `out' in something not a structure or union
xscanimage.c:884: request for member `param' in something not a structure or union
xscanimage.c:884: request for member `param' in something not a structure or union
xscanimage.c:886: request for member `out' in something not a structure or union
xscanimage.c:887: request for member `param' in something not a structure or union
xscanimage.c:887: request for member `param' in something not a structure or union
xscanimage.c:888: break statement not within loop or switch
xscanimage.c:890: request for member `header_size' in something not a structure or union
xscanimage.c:890: request for member `out' in something not a structure or union
xscanimage.c:892: request for member `param' in something not a structure or union
xscanimage.c:893: request for member `param' in something not a structure or union
xscanimage.c:894: request for member `out' in something not a structure or union
xscanimage.c:895: request for member `header_size' in something not a structure or union
xscanimage.c:895: request for member `param' in something not a structure or union
xscanimage.c:907: request for member `tile_offset' in something not a structure or union
xscanimage.c:908: request for member `param' in something not a structure or union
xscanimage.c:909: request for member `param' in something not a structure or union
xscanimage.c:911: request for member `tile' in something not a structure or union
xscanimage.c:912: request for member `first_frame' in something not a structure or union
xscanimage.c:915: `GImageType' undeclared (first use in this function)
xscanimage.c:915: parse error before `image_type'
xscanimage.c:916: `GDrawableType' undeclared (first use in this function)
xscanimage.c:919: request for member `param' in something not a structure or union
xscanimage.c:921: `image_type' undeclared (first use in this function)
xscanimage.c:921: `GRAY' undeclared (first use in this function)
xscanimage.c:922: `drawable_type' undeclared (first use in this function)
xscanimage.c:922: `GRAY_IMAGE' undeclared (first use in this function)
xscanimage.c:925: request for member `image_ID' in something not a structure or union
xscanimage.c:925: request for member `param' in something not a structure or union
xscanimage.c:926: request for member `param' in something not a structure or union
xscanimage.c:927: request for member `image_ID' in something not a structure or union
xscanimage.c:928: request for member `param' in something not a structure or union
xscanimage.c:929: request for member `param' in something not a structure or union
xscanimage.c:930: `NORMAL_MODE' undeclared (first use in this function)
xscanimage.c:931: request for member `image_ID' in something not a structure or union
xscanimage.c:933: request for member `drawable' in something not a structure or union
xscanimage.c:934: request for member `region' in something not a structure or union
xscanimage.c:934: request for member `drawable' in something not a structure or union
xscanimage.c:935: request for member `drawable' in something not a structure or union
xscanimage.c:936: request for member `drawable' in something not a structure or union
xscanimage.c:937: request for member `tile' in something not a structure or union
xscanimage.c:938: request for member `first_frame' in something not a structure or union
xscanimage.c:940: request for member `param' in something not a structure or union
xscanimage.c:941: request for member `param' in something not a structure or union
xscanimage.c:942: request for member `tile_offset' in something not a structure or union
xscanimage.c:942: request for member `param' in something not a structure or union
xscanimage.c:947: request for member `progress' in something not a structure or union
xscanimage.c:948: request for member `progress' in something not a structure or union
xscanimage.c:949: request for member `progress' in something not a structure or union
xscanimage.c:952: request for member `input_tag' in something not a structure or union
xscanimage.c:955: request for member `input_tag' in something not a structure or union
xscanimage.c:810: warning: `remaining' might be used uninitialized in this function
xscanimage.c: In function `scan_dialog':
xscanimage.c:967: request for member `mode' in something not a structure or union
xscanimage.c:969: request for member `out' in something not a structure or union
xscanimage.c:970: request for member `out' in something not a structure or union
xscanimage.c:963: warning: unused parameter `widget'
xscanimage.c:963: warning: unused parameter `call_data'
xscanimage.c: In function `files_exit_callback':
xscanimage.c:1013: warning: unused parameter `widget'
xscanimage.c:1013: warning: unused parameter `data'
xscanimage.c: In function `pref_set_unit_callback':
xscanimage.c:1052: request for member `preview' in something not a structure or union
xscanimage.c:1053: request for member `preview' in something not a structure or union
xscanimage.c:1039: warning: unused parameter `widget'
xscanimage.c: In function `preview_options_ok_callback':
xscanimage.c:1083: warning: unused parameter `widget'
xscanimage.c: In function `preview_options_cancel_callback':
xscanimage.c:1098: warning: unused parameter `widget'
xscanimage.c: In function `preview_options_dialog':
xscanimage.c:1106: warning: unused parameter `widget'
xscanimage.c:1106: warning: unused parameter `data'
xscanimage.c: In function `pref_device_save':
xscanimage.c:1187: warning: unused parameter `widget'
xscanimage.c:1187: warning: unused parameter `data'
xscanimage.c: In function `pref_toggle_advanced':
xscanimage.c:1227: warning: unused parameter `data'
xscanimage.c: In function `pref_toggle_tooltips':
xscanimage.c:1235: warning: unused parameter `data'
xscanimage.c: In function `browse_filename_callback':
xscanimage.c:1337: request for member `filename_entry' in something not a structure or union
xscanimage.c:1325: warning: unused parameter `widget'
xscanimage.c:1325: warning: unused parameter `data'
xscanimage.c: In function `filename_changed_callback':
xscanimage.c:1345: warning: unused parameter `data'
xscanimage.c: In function `device_dialog':
xscanimage.c:1363: invalid type argument of `->'
xscanimage.c:1366: request for member `shell' in something not a structure or union
xscanimage.c:1367: request for member `shell' in something not a structure or union
xscanimage.c:1368: request for member `shell' in something not a structure or union
xscanimage.c:1369: request for member `shell' in something not a structure or union
xscanimage.c:1369: request for member `shell' in something not a structure or union
xscanimage.c:1369: request for member `shell' in something not a structure or union
xscanimage.c:1369: request for member `shell' in something not a structure or union
xscanimage.c:1369: request for member `shell' in something not a structure or union
xscanimage.c:1373: request for member `shell' in something not a structure or union
xscanimage.c:1397: request for member `mode' in something not a structure or union
xscanimage.c:1417: request for member `filename_entry' in something not a structure or union
xscanimage.c:1457: request for member `info_label' in something not a structure or union
xscanimage.c:1458: request for member `info_label' in something not a structure or union
xscanimage.c:1459: request for member `info_label' in something not a structure or union
xscanimage.c:1464: request for member `shell' in something not a structure or union
xscanimage.c:1500: request for member `shell' in something not a structure or union
xscanimage.c:1358: warning: `devname' might be used uninitialized in this function
xscanimage.c: In function `select_device_callback':
xscanimage.c:1511: warning: unused parameter `widget'
xscanimage.c: In function `choose_device':
xscanimage.c:1542: warning: assignment makes pointer from integer without a cast
xscanimage.c: In function `init':
xscanimage.c:1649: incompatible types in assignment
xscanimage.c: In function `interface':
xscanimage.c:1661: request for member `info_label' in something not a structure or union
xscanimage.c: In function `main':
xscanimage.c:1706: request for member `mode' in something not a structure or union
xscanimage.c: At top level:
xscanimage.c:137: warning: `encode_devname' defined but not used
xscanimage.c:239: warning: `nargs' defined but not used
make[1]: *** [xscanimage.o] Error 1
make[1]: Leaving directory `/opt/1200ub_sane-1.0.3/frontend'
make: *** [all-recursive] Error 1

(end-output)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
