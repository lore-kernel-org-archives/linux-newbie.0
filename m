From: r4mz3z <r4mz3z@yahoo.es>
Subject: problems with ALSA
Date: Wed, 11 Dec 2002 07:49:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200212110750.08044.r4mz3z@yahoo.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi friends...
  I have a VIA sound card and I've supossed ALSA drivers can give sound... I 
follow the instructions but when (been root) run modprobe receive an error... 
just like this:
- -------------------------------------------------------------
[root@localhost root]# modprobe snd-via82xx
/lib/modules/.../snd.o: unresolved symbol __get_free_pages_Rsmp_4784e424
/lib/modules/.../snd.o: unresolved symbol try_inc_mod_count_Rsmp_e6105b23
/lib/modules/.../snd.o: unresolved symbol fasync_helper_Rsmp_0f820065
/lib/modules/.../snd.o: unresolved symbol strstr_Rsmp_1e6d26a8
/lib/modules/.../snd.o: unresolved symbol isa_dma_bridge_buggy_Rsmp_f82abc1d
/lib/modules/.../snd.o: unresolved symbol remove_proc_entry_Rsmp_18199406
/lib/modules/.../snd.o: unresolved symbol __write_lock_failed
/lib/modules/.../snd.o: unresolved symbol kill_fasync_Rsmp_f866c12a
/lib/modules/.../snd.o: unresolved symbol _ctype_Rsmp_8d3894f2
/lib/modules/.../snd.o: unresolved symbol request_module_Rsmp_27e4dc04
/lib/modules/.../snd.o: unresolved symbol proc_root_Rsmp_c79b35f0
/lib/modules/.../snd.o: unresolved symbol register_chrdev_Rsmp_10735b95
/lib/modules/.../snd.o: unresolved symbol create_proc_entry_Rsmp_9cfe096c
/lib/modules/.../snd.o: unresolved symbol __generic_copy_to_user_Rsmp_d523fdd3
/lib/modules/.../snd.o: unresolved symbol pci_alloc_consistent_Rsmp_d2217097
/lib/modules/.../snd.o: unresolved symbol vsnprintf_Rsmp_57a6504e
/lib/modules/.../snd.o: unresolved symbol unregister_chrdev_Rsmp_c192d491
/lib/modules/.../snd.o: unresolved symbol dma_spin_lock_Rsmp_375c41f8
/lib/modules/.../snd.o: unresolved symbol __vmalloc_Rsmp_79995c5b
/lib/modules/./snd.o: unresolved symbol unregister_sound_special_Rsmp_99c95fa5
/lib/modules/.../snd.o: unresolved symbol sprintf_Rsmp_1d26aa98
/lib/modules/.../snd.o: unresolved symbol schedule_timeout_Rsmp_17d59d01
/lib/modules/.../snd.o: unresolved symbol __read_lock_failed
/lib/modules/.../snd.o: unresolved symbol __wake_up_Rsmp_127fda83
/lib/modules/.../snd.o: unresolved symbol register_sound_special_Rsmp_3a650025
/lib/modules/.../snd.o: unresolved symbol printk_Rsmp_1b7d4074
/lib/modules/.../snd.o: unresolved symbol kfree_Rsmp_037a0cba
/lib/modules/.../snd.o: unresolved symbol free_pages_Rsmp_9941ccb8
/lib/modules/.../snd.o: unresolved symbol vfs_readlink_Rsmp_6502d84f
/lib/modules/.../snd.o: unresolved symbol vfree_Rsmp_2fd1d81c
/lib/modules/.../snd.o: unresolved symbol mem_map_Rsmp_ed75ce01
/lib/modules/.../snd.o: unresolved symbol vfs_follow_link_Rsmp_9b5fde49
/lib/modules/.../snd.o: unresolved symbol kmalloc_Rsmp_93d4cfe6
/lib/modules/.../snd.o: unresolved symbol schedule_Rsmp_4292364c
/lib/modules/.../snd.o: unresolved symbol remove_wait_queue_Rsmp_ca8842ea
/lib/modules/.../snd.o: unresolved symbol pci_free_consistent_Rsmp_4a863b05
/lib/modules/./snd.o: unresolved symbol __generic_copy_from_user_Rsmp_116166aa
/lib/modules/.../snd.o: unresolved symbol system_utsname_Rsmp_b12cdfe7
/lib/modules/.../snd.o: unresolved symbol add_wait_queue_Rsmp_2fd0ca84
/lib/modules/.../snd.o: unresolved symbol __pollwait_Rsmp_4c541ea9
/lib/modules/2.4.18-3/kernel/drivers/sound/snd.o: insmod 
/lib/modules/2.4.18-3/kernel/drivers/sound/snd.o failed
/lib/modules/2.4.18-3/kernel/drivers/sound/snd.o: insmod snd-via82xx failed
[root@localhost root]#
- -------------------------------------------------------------
  The path complete is: /lib/modules/2.4.18-3/kernel/drivers/sound/
  I'm using RedHat 7.3.

  Please help me; thanh you very much
- -- 
  Linux User Registered #232544
my GnuPG-key at www.keyserver.net
    --- rm -rf /bin/laden ---
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.1 (GNU/Linux)

iD8DBQE99u4us4dF9gl05swRAnmcAJ9k4FFmunJ+Ut+b2AFyXTEPZ9yurACggzSc
hU4s0pK6xxGhhT859Qdw4i8=
=kd/A
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
