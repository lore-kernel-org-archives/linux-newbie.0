From: "Sascha Hartmann" <sharty@web.de>
Subject: unresolved symbols
Date: Wed, 9 Apr 2003 21:32:12 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002301c2fece$c315d060$0a01a8c0@sascha.de>
Reply-To: "Sascha Hartmann" <sharty@web.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I have often compiled my kernel 2.4.19 without having problems. Recently I
upgraded my glibc (2.1 -> 2.2) and it is now my new primary c library. Then
I compiled the kernel again and as result of "make modules_install" I
received a list of unresolved Symbols. (Caused by "depmod -ae -F
System.map") But "depmod -ae -F /proc/ksyms" returns no unresolved symbol.
Further my system seems to be ok completely. I have had no trouble since I
use this kernel. Now, 60 compiled and installed programs later, an
installation instruction wants me to resolve all unresolved symbols in
kernel and modules. I don't know anything what I have to do at this point
but somebody of you perhaps.

depmod -ae -F System.map
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/block/rd.o
depmod:  __free_pages_R6c90edb0
depmod:  refile_buffer_R8347a649
depmod:  register_disk_R4f640c78
depmod:  blksize_size_R2f30b4b6
depmod:  __up_wakeup
depmod:  __invalidate_buffers_R98f51538
depmod:  fail_writepage_R16911827
depmod:  blkdev_put_R9271ef38
depmod:  blk_ioctl_Re7800428
depmod:  truncate_inode_pages_R1695917b
depmod:  zone_table_Re87839a6
depmod:  blk_dev_Reb94fb56
depmod:  register_blkdev_R47d2959b
depmod:  blk_size_Ra2e0a082
depmod:  printk_R1b7d4074
depmod:  blk_queue_make_request_R7a11bf5e
depmod:  unlock_page_Ra4191828
depmod:  hardsect_size_Rc5f560d8
depmod:  bdget_R7ef5c1ac
depmod:  unregister_blkdev_Reac1c4af
depmod:  grab_cache_page_R0dde71c5
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/char/lp.o
depmod:  __const_udelay_Reae3dfd6
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  parport_unregister_driver_R0986afea
depmod:  kmalloc_R93d4cfe6
depmod:  __down_failed_interruptible
depmod:  parport_register_driver_R69da85e8
depmod:  unregister_chrdev_Rc192d491
depmod:  parport_unregister_device_R7342d80a
depmod:  __up_wakeup
depmod:  parport_read_R48ad1190
depmod:  register_console_R80c5241f
depmod:  parport_claim_or_block_Rf103d373
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  jiffies_R0da02d67
depmod:  parport_write_R406bc0a9
depmod:  parport_register_device_R19786f97
depmod:  parport_set_timeout_R8b1f6b02
depmod:  unregister_console_Rd83dc0dd
depmod:  sprintf_R1d26aa98
depmod:  simple_strtoul_R20000329
depmod:  parport_claim_R792eb72f
depmod:  parport_release_R9d1ce702
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  register_chrdev_R46f49195
depmod:  parport_negotiate_R902d3b86
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/dmi_scan.o
depmod:  __ioremap_R9eac042a
depmod:  kmalloc_R93d4cfe6
depmod:  printk_R1b7d4074
depmod:  iounmap_R5fb196d4
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-algo-bit.o
depmod:  __const_udelay_Reae3dfd6
depmod:  jiffies_R0da02d67
depmod:  __udelay_R9e7d6bd0
depmod:  schedule_R4292364c
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-algo-pcf.o
depmod:  __const_udelay_Reae3dfd6
depmod:  __udelay_R9e7d6bd0
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-ali1535.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-ali15x3.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-amd756.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-amd8111.o
depmod:  schedule_timeout_R17d59d01
depmod:  __const_udelay_Reae3dfd6
depmod:  kmalloc_R93d4cfe6
depmod:  pci_write_config_dword_R43bface4
depmod:  pci_register_driver_R954e8c53
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  sprintf_R1d26aa98
depmod:  pci_unregister_driver_Rf56513b9
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-core.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  create_proc_entry_R3045c2ce
depmod:  proc_bus_R5727cc30
depmod:  sprintf_R1d26aa98
depmod:  remove_proc_entry_R24b93092
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-dev.o
depmod:  kmalloc_R93d4cfe6
depmod:  unregister_chrdev_Rc192d491
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  register_chrdev_R46f49195
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-elektor.o
depmod:  __const_udelay_Reae3dfd6
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  disable_irq_R3ce4ca6f
depmod:  free_irq_Rf20dabd8
depmod:  enable_irq_Rfcec0987
depmod:  __release_region_Rd49501d4
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-elv.o
depmod:  __const_udelay_Reae3dfd6
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-hydra.o
depmod:  __ioremap_R9eac042a
depmod:  pci_find_device_R2f35dc0f
depmod:  pcibios_present_R520a75b9
depmod:  printk_R1b7d4074
depmod:  iounmap_R5fb196d4
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-i801.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-i810.o
depmod:  __ioremap_R9eac042a
depmod:  pci_find_device_R2f35dc0f
depmod:  printk_R1b7d4074
depmod:  iounmap_R5fb196d4
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-isa.o
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-pcf-epp.o
depmod:  __const_udelay_Reae3dfd6
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  disable_irq_R3ce4ca6f
depmod:  free_irq_Rf20dabd8
depmod:  enable_irq_Rfcec0987
depmod:  __release_region_Rd49501d4
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-philips-par.o
depmod:  parport_unregister_driver_R0986afea
depmod:  kmalloc_R93d4cfe6
depmod:  parport_register_driver_R69da85e8
depmod:  parport_unregister_device_R7342d80a
depmod:  parport_claim_or_block_Rf103d373
depmod:  parport_register_device_R19786f97
depmod:  parport_release_R9d1ce702
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-piix4.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-pport.o
depmod:  schedule_timeout_R17d59d01
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-proc.o
depmod:  register_sysctl_table_Rab92f33e
depmod:  __get_user_1
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  _ctype_R8d3894f2
depmod:  __generic_copy_from_user_R116166aa
depmod:  ioport_resource_R865ebccd
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  unregister_sysctl_table_R78dab9ed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-savage4.o
depmod:  __ioremap_R9eac042a
depmod:  pci_find_device_R2f35dc0f
depmod:  printk_R1b7d4074
depmod:  iounmap_R5fb196d4
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-sis5595.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-sis630.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-velleman.o
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-via.o
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  pci_read_config_word_R3e5c726f
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-viapro.o
depmod:  schedule_timeout_R17d59d01
depmod:  pci_find_device_R2f35dc0f
depmod:  __check_region_Rf1d0cdab
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  sprintf_R1d26aa98
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/i2c/i2c-voodoo3.o
depmod:  __ioremap_R9eac042a
depmod:  pci_find_device_R2f35dc0f
depmod:  printk_R1b7d4074
depmod:  iounmap_R5fb196d4
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/8139too.o
depmod:  __ioremap_R9eac042a
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  __get_user_4
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  __const_udelay_Reae3dfd6
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  alloc_skb_Rd01717f8
depmod:  complete_and_exit_Rdf98dd15
depmod:  pci_release_regions_R2f79544c
depmod:  pci_register_driver_R954e8c53
depmod:  unregister_netdev_Re6fb46df
depmod:  kernel_thread_R7e9ebb05
depmod:  reparent_to_init_Rec6158d0
depmod:  pci_free_consistent_Rb2748b28
depmod:  __netdev_watchdog_up_Rdf23ff38
depmod:  pci_alloc_consistent_R33390bf1
depmod:  __kfree_skb_Rb8f73d77
depmod:  wait_for_completion_R02032293
depmod:  pci_request_regions_R02896321
depmod:  alloc_etherdev_Rd50ed31a
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  pci_write_config_word_R2b36ae09
depmod:  free_irq_Rf20dabd8
depmod:  pci_read_config_word_R3e5c726f
depmod:  register_netdev_Rc1644cbe
depmod:  daemonize_Rd66a354a
depmod:  flush_signals_R4a2e3a9c
depmod:  pci_unregister_driver_Rf56513b9
depmod:  rtnl_lock_Rc7a4fbed
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  pci_enable_device_R6225e990
depmod:  rtnl_unlock_R6e720ff2
depmod:  kfree_R037a0cba
depmod:  skb_copy_and_csum_dev_R7e517bfd
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  kill_proc_R932da67e
depmod:  netif_rx_R82487174
depmod:  iounmap_R5fb196d4
depmod:  request_irq_R0c60f2e0
depmod:  pci_set_master_R71ceaeca
depmod:  eth_type_trans_R102fa904
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/8390.o
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  __const_udelay_Reae3dfd6
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  __kfree_skb_Rb8f73d77
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  enable_irq_Rfcec0987
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  ether_setup_R7940ef23
depmod:  netif_rx_R82487174
depmod:  disable_irq_nosync_R27bbf221
depmod:  eth_type_trans_R102fa904
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/bsd_comp.o
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __vmalloc_R79995c5b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/dummy.o
depmod:  kmalloc_R93d4cfe6
depmod:  unregister_netdev_Re6fb46df
depmod:  __kfree_skb_Rb8f73d77
depmod:  register_netdev_Rc1644cbe
depmod:  dev_alloc_name_Rc2568128
depmod:  kfree_R037a0cba
depmod:  ether_setup_R7940ef23
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ne.o
depmod:  probe_irq_off_Rab600421
depmod:  __const_udelay_Reae3dfd6
depmod:  probe_irq_on_Rb121390a
depmod:  unregister_netdev_Re6fb46df
depmod:  isapnp_present_Rbf8b39e9
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  free_irq_Rf20dabd8
depmod:  register_netdev_Rc1644cbe
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod:  isapnp_find_dev_Rf9d40cfa
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ne2k-pci.o
depmod:  pci_register_driver_R954e8c53
depmod:  unregister_netdev_Re6fb46df
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  alloc_etherdev_Rd50ed31a
depmod:  jiffies_R0da02d67
depmod:  free_irq_Rf20dabd8
depmod:  register_netdev_Rc1644cbe
depmod:  pci_unregister_driver_Rf56513b9
depmod:  pci_enable_device_R6225e990
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/plip.o
depmod:  tq_immediate_R0da0dcd1
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  __const_udelay_Reae3dfd6
depmod:  parport_unregister_driver_R0986afea
depmod:  tq_timer_Rfa3e9acc
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  bh_task_vec_R284177b8
depmod:  parport_register_driver_R69da85e8
depmod:  parport_unregister_device_R7342d80a
depmod:  __up_wakeup
depmod:  unregister_netdev_Re6fb46df
depmod:  __kfree_skb_Rb8f73d77
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  disable_irq_R3ce4ca6f
depmod:  parport_register_device_R19786f97
depmod:  sprintf_R1d26aa98
depmod:  register_netdev_Rc1644cbe
depmod:  parport_claim_R792eb72f
depmod:  parport_release_R9d1ce702
depmod:  enable_irq_Rfcec0987
depmod:  __tasklet_hi_schedule_R60ea5fe7
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  ether_setup_R7940ef23
depmod:  netif_rx_R82487174
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ppp_async.o
depmod:  __get_user_4
depmod:  irq_stat_R38b08934
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  n_tty_ioctl_R11b6d046
depmod:  __up_wakeup
depmod:  tty_register_ldisc_Rdf1dfe57
depmod:  do_softirq_Rf0a529b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  jiffies_R0da02d67
depmod:  ___pskb_trim_R80cc8a40
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  skb_under_panic_Rcd334527
depmod:  skb_over_panic_Rac052017
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ppp_deflate.o
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __vmalloc_R79995c5b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ppp_generic.o
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  dev_close_R198ea68c
depmod:  __get_user_4
depmod:  irq_stat_R38b08934
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  unregister_chrdev_Rc192d491
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  unregister_netdevice_Rb69710fd
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  do_softirq_Rf0a529b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  add_wait_queue_R7539aa0e
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  ___pskb_trim_R80cc8a40
depmod:  sprintf_R1d26aa98
depmod:  rwsem_down_write_failed
depmod:  rwsem_wake
depmod:  rtnl_lock_Rc7a4fbed
depmod:  schedule_R4292364c
depmod:  rtnl_unlock_R6e720ff2
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  skb_under_panic_Rcd334527
depmod:  skb_over_panic_Rac052017
depmod:  netif_rx_R82487174
depmod:  register_chrdev_R46f49195
depmod:  register_netdevice_R94a8f9bd
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/ppp_synctty.o
depmod:  __get_user_4
depmod:  irq_stat_R38b08934
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  n_tty_ioctl_R11b6d046
depmod:  __up_wakeup
depmod:  tty_register_ldisc_Rdf1dfe57
depmod:  do_softirq_Rf0a529b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  skb_under_panic_Rcd334527
depmod:  skb_over_panic_Rac052017
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/slhc.o
depmod:  kmalloc_R93d4cfe6
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/slip.o
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  dev_close_R198ea68c
depmod:  mod_timer_R1f13d309
depmod:  __get_user_4
depmod:  irq_stat_R38b08934
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  alloc_skb_Rd01717f8
depmod:  kmalloc_R93d4cfe6
depmod:  n_tty_ioctl_R11b6d046
depmod:  tty_register_ldisc_Rdf1dfe57
depmod:  unregister_netdevice_Rb69710fd
depmod:  unregister_netdev_Re6fb46df
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  do_softirq_Rf0a529b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  add_timer_Ra19eacf8
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  rtnl_lock_Rc7a4fbed
depmod:  schedule_R4292364c
depmod:  tty_hangup_R14c20b1c
depmod:  rtnl_unlock_R6e720ff2
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  netif_rx_R82487174
depmod:  register_netdevice_R94a8f9bd
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/net/via-rhine.o
depmod:  cpu_raise_softirq_Rd01f3ee8
depmod:  __get_user_4
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  __const_udelay_Reae3dfd6
depmod:  alloc_skb_Rd01717f8
depmod:  pci_release_regions_R2f79544c
depmod:  pci_register_driver_R954e8c53
depmod:  unregister_netdev_Re6fb46df
depmod:  pci_free_consistent_Rb2748b28
depmod:  __netdev_watchdog_up_Rdf23ff38
depmod:  pci_alloc_consistent_R33390bf1
depmod:  __kfree_skb_Rb8f73d77
depmod:  pci_request_regions_R02896321
depmod:  add_timer_Ra19eacf8
depmod:  alloc_etherdev_Rd50ed31a
depmod:  pci_disable_device_Rff052e74
depmod:  jiffies_R0da02d67
depmod:  softnet_data_R68f52f18
depmod:  disable_irq_R3ce4ca6f
depmod:  free_irq_Rf20dabd8
depmod:  del_timer_Rfc62f16d
depmod:  register_netdev_Rc1644cbe
depmod:  pci_unregister_driver_Rf56513b9
depmod:  pci_enable_device_R6225e990
depmod:  enable_irq_Rfcec0987
depmod:  kfree_R037a0cba
depmod:  skb_copy_and_csum_dev_R7e517bfd
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  netif_rx_R82487174
depmod:  request_irq_R0c60f2e0
depmod:  pci_set_dma_mask_R98ebc076
depmod:  pci_set_master_R71ceaeca
depmod:  eth_type_trans_R102fa904
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/adm1021.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/adm1024.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/adm1025.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/adm9240.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/bt869.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/ddcmon.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/ds1621.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/eeprom.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/fscpos.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/fscscy.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/gl518sm.o
depmod:  schedule_timeout_R17d59d01
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  kernel_thread_R7e9ebb05
depmod:  exit_mm_R7b0fa697
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  interruptible_sleep_on_R15e26425
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/gl520sm.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/it87.o
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/lm75.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/lm78.o
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/lm80.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/lm87.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/lm92.o
depmod:  kmalloc_R93d4cfe6
depmod:  __down_failed_interruptible
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/maxilife.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/mtp008.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/pcf8574.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/pcf8591.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/sis5595.o
depmod:  pci_find_device_R2f35dc0f
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  pci_write_config_byte_R57220483
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  pci_read_config_byte_Rede9d9d2
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/smsc47m1.o
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/thmc50.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/via686a.o
depmod:  pci_find_device_R2f35dc0f
depmod:  __const_udelay_Reae3dfd6
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  pcibios_present_R520a75b9
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  pci_write_config_word_R2b36ae09
depmod:  pci_read_config_word_R3e5c726f
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/vt1211.o
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sensors/w83781d.o
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/ad1848.o
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  isa_dma_bridge_buggy_Rf82abc1d
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  pm_unregister_R94097bd6
depmod:  free_irq_Rf20dabd8
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  pm_register_R027ebe5e
depmod:  request_irq_R0c60f2e0
depmod:  isapnp_find_dev_Rf9d40cfa
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/awe_wave.o
depmod:  schedule_timeout_R17d59d01
depmod:  __get_user_1
depmod:  __get_user_2
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  __generic_copy_from_user_R116166aa
depmod:  ioport_resource_R865ebccd
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  isapnp_find_dev_Rf9d40cfa
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/mpu401.o
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  free_irq_Rf20dabd8
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/sb.o
depmod:  isapnp_find_card_R16fde671
depmod:  vfree_R2fd1d81c
depmod:  printk_R1b7d4074
depmod:  isapnp_find_dev_Rf9d40cfa
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/sb_lib.o
depmod:  __get_user_4
depmod:  __const_udelay_Reae3dfd6
depmod:  kmalloc_R93d4cfe6
depmod:  __check_region_Rf1d0cdab
depmod:  __request_region_R1a1a4f09
depmod:  __generic_copy_from_user_R116166aa
depmod:  ioport_resource_R865ebccd
depmod:  jiffies_R0da02d67
depmod:  free_irq_Rf20dabd8
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/sound.o
depmod:  free_dma_R72b243d4
depmod:  __get_user_1
depmod:  __get_user_4
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  panic_R01075bf0
depmod:  vfree_R2fd1d81c
depmod:  __get_free_pages_R4784e424
depmod:  request_module_R27e4dc04
depmod:  isa_dma_bridge_buggy_Rf82abc1d
depmod:  request_dma_R43435480
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  free_pages_R9941ccb8
depmod:  __generic_copy_from_user_R116166aa
depmod:  remap_page_range_R69d01e73
depmod:  add_timer_Ra19eacf8
depmod:  mem_map_Re77c036b
depmod:  jiffies_R0da02d67
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  schedule_R4292364c
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  interruptible_sleep_on_R15e26425
depmod:  no_llseek_R5ca5c314
depmod:  __vmalloc_R79995c5b
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/soundcore.o
depmod:  sys_close_R268cc6a2
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  unregister_chrdev_Rc192d491
depmod:  request_module_R27e4dc04
depmod:  try_inc_mod_count_Re6105b23
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  register_chrdev_R46f49195
depmod:  __vmalloc_R79995c5b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/drivers/sound/uart401.o
depmod:  kmalloc_R93d4cfe6
depmod:  __request_region_R1a1a4f09
depmod:  ioport_resource_R865ebccd
depmod:  free_irq_Rf20dabd8
depmod:  kfree_R037a0cba
depmod:  __release_region_Rd49501d4
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/binfmt_aout.o
depmod:  __get_user_1
depmod:  kernel_read_R8e88678f
depmod:  __set_personality_R6a47571d
depmod:  jiffies_R0da02d67
depmod:  register_binfmt_R8587149b
depmod:  setup_arg_pages_Rf2ae45e8
depmod:  unregister_binfmt_Reffd6b19
depmod:  rwsem_down_write_failed
depmod:  rwsem_wake
depmod:  send_sig_Rd344d473
depmod:  flush_old_exec_Rab537b66
depmod:  compute_creds_Rac80a918
depmod:  printk_R1b7d4074
depmod:  do_mmap_pgoff_R313050c2
depmod:  do_brk_R9eecde16
depmod:  dump_thread_Rae90b20c
depmod:  set_binfmt_R9e303bc9
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/binfmt_misc.o
depmod:  copy_strings_kernel_R7305e86c
depmod:  kern_mount_Ra2935c5e
depmod:  unregister_filesystem_R9f34a6c1
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  dput_Rf77ccaa0
depmod:  kmalloc_R93d4cfe6
depmod:  __get_free_pages_R4784e424
depmod:  __up_wakeup
depmod:  search_binary_handler_R1176df42
depmod:  remove_arg_zero_R497d2906
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  _ctype_R8d3894f2
depmod:  fput_R26d7168a
depmod:  d_alloc_root_R28143f87
depmod:  free_pages_R9941ccb8
depmod:  __generic_copy_from_user_R116166aa
depmod:  d_alloc_Re6ce7433
depmod:  register_filesystem_Red31c5ef
depmod:  register_binfmt_R8587149b
depmod:  d_rehash_Ra601587d
depmod:  unregister_binfmt_Reffd6b19
depmod:  dcache_dir_ops_R3030b7ea
depmod:  open_exec_R4f53ead9
depmod:  force_delete_R4cb55f70
depmod:  sprintf_R1d26aa98
depmod:  iput_R1bd9cc2d
depmod:  simple_strtoul_R20000329
depmod:  get_empty_inode_R5f621f4e
depmod:  kfree_R037a0cba
depmod:  d_instantiate_Rcc6b3cf8
depmod:  lookup_one_len_R027b3f23
depmod:  xtime_Rf31ddf83
depmod:  __mntput_Rdf15320b
depmod:  prepare_binprm_R3df73280
depmod:  __down_failed
depmod: *** Unresolved symbols in /lib/modules/2.4.19/kernel/fs/coda/coda.o
depmod:  register_sysctl_table_Rab92f33e
depmod:  path_release_Rc47a9dae
depmod:  find_inode_number_R34421487
depmod:  page_follow_link_Re62f5c87
depmod:  __get_user_1
depmod:  generic_read_dir_Rb227e38c
depmod:  do_gettimeofday_R72270e35
depmod:  unregister_filesystem_R9f34a6c1
depmod:  d_prune_aliases_Rb55a492f
depmod:  dput_Rf77ccaa0
depmod:  shrink_dcache_parent_R6c02a2c2
depmod:  kmalloc_R93d4cfe6
depmod:  d_find_alias_R7c357340
depmod:  vfree_R2fd1d81c
depmod:  init_special_inode_R7d9b86a6
depmod:  unregister_chrdev_Rc192d491
depmod:  remove_inode_hash_R0c2ba60f
depmod:  __up_wakeup
depmod:  iget4_Rcb001187
depmod:  vfs_readdir_Re2507b06
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  insert_inode_hash_Rbfe669dc
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  proc_mkdir_Rd3391828
depmod:  fput_R26d7168a
depmod:  d_alloc_root_R28143f87
depmod:  shrink_dcache_sb_R518cc893
depmod:  __generic_copy_from_user_R116166aa
depmod:  kernel_read_R8e88678f
depmod:  proc_dointvec_R4d74e374
depmod:  create_proc_entry_R3045c2ce
depmod:  register_filesystem_Red31c5ef
depmod:  add_wait_queue_R7539aa0e
depmod:  jiffies_R0da02d67
depmod:  d_rehash_Ra601587d
depmod:  zone_table_Re87839a6
depmod:  fget_Rffed0dfa
depmod:  proc_root_fs_R80cac570
depmod:  sprintf_R1d26aa98
depmod:  page_readlink_R2c37484b
depmod:  iput_R1bd9cc2d
depmod:  remove_proc_entry_R24b93092
depmod:  schedule_R4292364c
depmod:  __user_walk_R24f92fee
depmod:  generic_file_llseek_R2a68373b
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  d_delete_R5efbdd6f
depmod:  is_bad_inode_R25602b55
depmod:  register_chrdev_R46f49195
depmod:  __vmalloc_R79995c5b
depmod:  xtime_Rf31ddf83
depmod:  unlock_page_Ra4191828
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod:  unregister_sysctl_table_R78dab9ed
depmod: *** Unresolved symbols in /lib/modules/2.4.19/kernel/fs/fat/fat.o
depmod:  getblk_R38484866
depmod:  generic_read_dir_Rb227e38c
depmod:  __get_user_2
depmod:  block_write_full_page_R555ef216
depmod:  generic_file_read_R76177359
depmod:  block_sync_page_R249fb569
depmod:  cont_prepare_write_R98d0e663
depmod:  block_read_full_page_R43c3f353
depmod:  kmalloc_R93d4cfe6
depmod:  make_bad_inode_R40dd5ef3
depmod:  inode_setattr_Rc8e00e9f
depmod:  inode_change_ok_Rc7fb5ac7
depmod:  __get_free_pages_R4784e424
depmod:  __up_wakeup
depmod:  iget4_Rcb001187
depmod:  request_module_R27e4dc04
depmod:  insert_inode_hash_Rbfe669dc
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  kdevname_Rc258c906
depmod:  d_alloc_root_R28143f87
depmod:  free_pages_R9941ccb8
depmod:  dget_locked_R18b24345
depmod:  iunique_R1c3213a7
depmod:  bread_R51f424c7
depmod:  unload_nls_R36a16ffc
depmod:  generic_file_write_R93272a49
depmod:  generic_file_mmap_R86bd9f8a
depmod:  utf8_wcstombs_R863cb91a
depmod:  igrab_R59bb8600
depmod:  sprintf_R1d26aa98
depmod:  sys_tz_Rfe5d4bb2
depmod:  file_fsync_R54a197e0
depmod:  load_nls_default_R535f6428
depmod:  iput_R1bd9cc2d
depmod:  generic_block_bmap_R96ce4788
depmod:  simple_strtoul_R20000329
depmod:  get_empty_inode_R5f621f4e
depmod:  ll_rw_block_Red911e91
depmod:  __brelse_R87debc87
depmod:  clear_inode_Rb97a728c
depmod:  generic_file_llseek_R2a68373b
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  strtok_Ree9c1bd4
depmod:  is_bad_inode_R25602b55
depmod:  load_nls_Rafd2e7ee
depmod:  xtime_Rf31ddf83
depmod:  __mark_inode_dirty_R59bbfbe9
depmod:  event_R7b16c344
depmod:  mark_buffer_dirty_R392537d6
depmod:  set_blocksize_Rc75d857c
depmod:  hardsect_size_Rc5f560d8
depmod:  generic_commit_write_R0e406816
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/isofs/isofs.o
depmod:  __free_pages_R6c90edb0
depmod:  getblk_R38484866
depmod:  generic_read_dir_Rb227e38c
depmod:  unregister_filesystem_R9f34a6c1
depmod:  block_sync_page_R249fb569
depmod:  strnicmp_R4e830a3e
depmod:  block_read_full_page_R43c3f353
depmod:  kmalloc_R93d4cfe6
depmod:  panic_R01075bf0
depmod:  make_bad_inode_R40dd5ef3
depmod:  init_special_inode_R7d9b86a6
depmod:  __get_free_pages_R4784e424
depmod:  iget4_Rcb001187
depmod:  ioctl_by_bdev_R3a6c12d9
depmod:  utf8_wctomb_Rf82f1109
depmod:  kdevname_Rc258c906
depmod:  _ctype_R8d3894f2
depmod:  d_alloc_root_R28143f87
depmod:  free_pages_R9941ccb8
depmod:  register_filesystem_Red31c5ef
depmod:  generic_ro_fops_Rd73c1159
depmod:  bread_R51f424c7
depmod:  unload_nls_R36a16ffc
depmod:  d_rehash_Ra601587d
depmod:  zone_table_Re87839a6
depmod:  sprintf_R1d26aa98
depmod:  load_nls_default_R535f6428
depmod:  iput_R1bd9cc2d
depmod:  generic_block_bmap_R96ce4788
depmod:  simple_strtoul_R20000329
depmod:  __brelse_R87debc87
depmod:  kfree_R037a0cba
depmod:  page_symlink_inode_operations_R15bdd00c
depmod:  _alloc_pages_R148659da
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  strtok_Ree9c1bd4
depmod:  load_nls_Rafd2e7ee
depmod:  set_blocksize_Rc75d857c
depmod:  unlock_page_Ra4191828
depmod:  hardsect_size_Rc5f560d8
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/msdos/msdos.o
depmod:  unregister_filesystem_R9f34a6c1
depmod:  register_filesystem_Red31c5ef
depmod:  d_rehash_Ra601587d
depmod:  iput_R1bd9cc2d
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  xtime_Rf31ddf83
depmod:  __mark_inode_dirty_R59bbfbe9
depmod:  event_R7b16c344
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_big5.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp1250.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp1251.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp1255.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp437.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp737.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp775.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp850.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp852.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp855.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp857.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp860.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp861.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp862.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp863.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp864.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp865.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp866.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp869.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp874.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp932.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp936.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp949.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_cp950.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_euc-jp.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_euc-kr.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_gb2312.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-1.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-13.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-14.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-15.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-2.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-3.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-4.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-5.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-6.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-7.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-8.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_iso8859-9.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_koi8-r.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_koi8-ru.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_koi8-u.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_sjis.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_tis-620.o
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  unload_nls_R36a16ffc
depmod:  load_nls_Rafd2e7ee
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/nls/nls_utf8.o
depmod:  utf8_wctomb_Rf82f1109
depmod:  register_nls_Rb75d5c98
depmod:  unregister_nls_Re636348f
depmod:  utf8_mbtowc_R4ddc4b9f
depmod: *** Unresolved symbols in /lib/modules/2.4.19/kernel/fs/ntfs/ntfs.o
depmod:  generic_read_dir_Rb227e38c
depmod:  unregister_filesystem_R9f34a6c1
depmod:  __wait_on_buffer_Rbedfb285
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  __get_free_pages_R4784e424
depmod:  generic_file_open_R4a6a2fb1
depmod:  iget4_Rcb001187
depmod:  unlock_buffer_Rcd7a5515
depmod:  high_memory_R8a7d1c31
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  d_alloc_root_R28143f87
depmod:  free_pages_R9941ccb8
depmod:  bdevname_Rd04782e6
depmod:  register_filesystem_Red31c5ef
depmod:  bread_R51f424c7
depmod:  unload_nls_R36a16ffc
depmod:  d_rehash_Ra601587d
depmod:  num_physpages_R0948cde9
depmod:  load_nls_default_R535f6428
depmod:  iput_R1bd9cc2d
depmod:  simple_strtoul_R20000329
depmod:  schedule_R4292364c
depmod:  ll_rw_block_Red911e91
depmod:  __brelse_R87debc87
depmod:  generic_file_llseek_R2a68373b
depmod:  kfree_R037a0cba
depmod:  __bforget_Rf83d4fdb
depmod:  vsprintf_R13d9cea7
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  strtok_Ree9c1bd4
depmod:  load_nls_Rafd2e7ee
depmod:  __vmalloc_R79995c5b
depmod:  xtime_Rf31ddf83
depmod:  mark_buffer_dirty_R392537d6
depmod:  set_blocksize_Rc75d857c
depmod:  hardsect_size_Rc5f560d8
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/fs/smbfs/smbfs.o
depmod:  __free_pages_R6c90edb0
depmod:  filemap_fdatawait_R634a318c
depmod:  find_inode_number_R34421487
depmod:  filemap_fdatasync_Rda5a0fc8
depmod:  schedule_timeout_R17d59d01
depmod:  generic_read_dir_Rb227e38c
depmod:  put_cmsg_Rf39bf4d9
depmod:  unregister_filesystem_R9f34a6c1
depmod:  invalidate_inode_pages_R9f8da014
depmod:  generic_file_read_R76177359
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  dput_Rf77ccaa0
depmod:  kmalloc_R93d4cfe6
depmod:  make_bad_inode_R40dd5ef3
depmod:  scm_detach_fds_R5bab2450
depmod:  strsep_R85df9b6c
depmod:  vfree_R2fd1d81c
depmod:  inode_change_ok_Rc7fb5ac7
depmod:  __up_wakeup
depmod:  schedule_task_R2d6c3d04
depmod:  __scm_send_Rd3fbc7fc
depmod:  seq_printf_R7bd5cd91
depmod:  __scm_destroy_R975a8da1
depmod:  d_validate_Rd6dbd0aa
depmod:  insert_inode_hash_Rbfe669dc
depmod:  vmtruncate_Rc7d27a28
depmod:  _ctype_R8d3894f2
depmod:  fput_R26d7168a
depmod:  d_alloc_root_R28143f87
depmod:  dget_locked_R18b24345
depmod:  shrink_dcache_sb_R518cc893
depmod:  d_lookup_R46fcd86f
depmod:  iunique_R1c3213a7
depmod:  page_hash_table_R0aad1ad5
depmod:  d_alloc_Re6ce7433
depmod:  register_filesystem_Red31c5ef
depmod:  jiffies_R0da02d67
depmod:  unload_nls_R36a16ffc
depmod:  d_rehash_Ra601587d
depmod:  generic_file_write_R93272a49
depmod:  generic_file_mmap_R86bd9f8a
depmod:  zone_table_Re87839a6
depmod:  fget_Rffed0dfa
depmod:  __find_lock_page_Rfa38e1b6
depmod:  page_hash_bits_R04925b4e
depmod:  force_delete_R4cb55f70
depmod:  sprintf_R1d26aa98
depmod:  iput_R1bd9cc2d
depmod:  simple_strtoul_R20000329
depmod:  get_empty_inode_R5f621f4e
depmod:  clear_inode_Rb97a728c
depmod:  generic_file_llseek_R2a68373b
depmod:  kfree_R037a0cba
depmod:  invalidate_inodes_Rc75c643d
depmod:  __wake_up_R2c77a2af
depmod:  sock_wake_async_Re885870d
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  d_delete_R5efbdd6f
depmod:  kill_proc_R932da67e
depmod:  is_bad_inode_R25602b55
depmod:  load_nls_Rafd2e7ee
depmod:  __vmalloc_R79995c5b
depmod:  xtime_Rf31ddf83
depmod:  unlock_page_Ra4191828
depmod:  grab_cache_page_R0dde71c5
depmod:  __down_failed
depmod: *** Unresolved symbols in /lib/modules/2.4.19/kernel/fs/vfat/vfat.o
depmod:  d_invalidate_R04a2a078
depmod:  unregister_filesystem_R9f34a6c1
depmod:  dput_Rf77ccaa0
depmod:  strnicmp_R4e830a3e
depmod:  kmalloc_R93d4cfe6
depmod:  d_find_alias_R7c357340
depmod:  __get_free_pages_R4784e424
depmod:  utf8_mbstowcs_R7d850612
depmod:  _ctype_R8d3894f2
depmod:  free_pages_R9941ccb8
depmod:  register_filesystem_Red31c5ef
depmod:  jiffies_R0da02d67
depmod:  d_rehash_Ra601587d
depmod:  sprintf_R1d26aa98
depmod:  iput_R1bd9cc2d
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  d_instantiate_Rcc6b3cf8
depmod:  strtok_Ree9c1bd4
depmod:  xtime_Rf31ddf83
depmod:  __mark_inode_dirty_R59bbfbe9
depmod:  event_R7b16c344
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/arp_tables.o
depmod:  irq_stat_R38b08934
depmod:  nf_unregister_sockopt_R8fd05173
depmod:  nf_register_sockopt_R11c32139
depmod:  vfree_R2fd1d81c
depmod:  __down_failed_interruptible
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  do_softirq_Rf0a529b7
depmod:  create_proc_entry_R3045c2ce
depmod:  num_physpages_R0948cde9
depmod:  sprintf_R1d26aa98
depmod:  remove_proc_entry_R24b93092
depmod:  printk_R1b7d4074
depmod:  __vmalloc_R79995c5b
depmod:  net_ratelimit_Rf6ebc03b
depmod:  proc_net_R4e96463f
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/arptable_filter.o
depmod:  nf_register_hook_Rd6b2a233
depmod:  nf_unregister_hook_R5722100d
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_conntrack.o
depmod:  register_sysctl_table_Rab92f33e
depmod:  ip_fragment_R107ab8f5
depmod:  ip_send_check_Ra37b7441
depmod:  irq_stat_R38b08934
depmod:  nf_unregister_sockopt_R8fd05173
depmod:  kmem_cache_free_R891f2686
depmod:  nf_register_hook_Rd6b2a233
depmod:  nf_register_sockopt_R11c32139
depmod:  vfree_R2fd1d81c
depmod:  sk_free_Ra498d80f
depmod:  nf_unregister_hook_R5722100d
depmod:  do_softirq_Rf0a529b7
depmod:  proc_dointvec_R4d74e374
depmod:  skb_linearize_R1de9aa6f
depmod:  create_proc_entry_R3045c2ce
depmod:  __kfree_skb_Rb8f73d77
depmod:  kmem_cache_create_Rd1c0b4e6
depmod:  add_timer_Ra19eacf8
depmod:  jiffies_R0da02d67
depmod:  kmem_cache_destroy_Rdf83c692
depmod:  num_physpages_R0948cde9
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  remove_proc_entry_R24b93092
depmod:  schedule_R4292364c
depmod:  ip_ct_attach_R0d989676
depmod:  kmem_cache_alloc_R75810956
depmod:  csum_partial_R9a3de8f8
depmod:  printk_R1b7d4074
depmod:  ip_defrag_R07e34905
depmod:  net_ratelimit_Rf6ebc03b
depmod:  __vmalloc_R79995c5b
depmod:  proc_net_R4e96463f
depmod:  sock_wfree_R1611c76a
depmod:  unregister_sysctl_table_R78dab9ed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_conntrack_ftp.o
depmod:  irq_stat_R38b08934
depmod:  strnicmp_R4e830a3e
depmod:  _ctype_R8d3894f2
depmod:  do_softirq_Rf0a529b7
depmod:  csum_partial_R9a3de8f8
depmod:  printk_R1b7d4074
depmod:  net_ratelimit_Rf6ebc03b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_conntrack_irc.o
depmod:  irq_stat_R38b08934
depmod:  do_softirq_Rf0a529b7
depmod:  simple_strtoul_R20000329
depmod:  csum_partial_R9a3de8f8
depmod:  printk_R1b7d4074
depmod:  net_ratelimit_Rf6ebc03b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_nat_ftp.o
depmod:  irq_stat_R38b08934
depmod:  do_softirq_Rf0a529b7
depmod:  sprintf_R1d26aa98
depmod:  printk_R1b7d4074
depmod:  net_ratelimit_Rf6ebc03b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_nat_irc.o
depmod:  irq_stat_R38b08934
depmod:  do_softirq_Rf0a529b7
depmod:  sprintf_R1d26aa98
depmod:  printk_R1b7d4074
depmod:  net_ratelimit_Rf6ebc03b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ip_tables.o
depmod:  irq_stat_R38b08934
depmod:  nf_unregister_sockopt_R8fd05173
depmod:  nf_register_sockopt_R11c32139
depmod:  vfree_R2fd1d81c
depmod:  __down_failed_interruptible
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  do_softirq_Rf0a529b7
depmod:  create_proc_entry_R3045c2ce
depmod:  num_physpages_R0948cde9
depmod:  sprintf_R1d26aa98
depmod:  remove_proc_entry_R24b93092
depmod:  printk_R1b7d4074
depmod:  __vmalloc_R79995c5b
depmod:  net_ratelimit_Rf6ebc03b
depmod:  proc_net_R4e96463f
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ipt_MASQUERADE.o
depmod:  irq_stat_R38b08934
depmod:  ip_route_output_key_Raa5935b7
depmod:  register_inetaddr_notifier_R3e45e9ff
depmod:  unregister_netdevice_notifier_Rfe769456
depmod:  do_softirq_Rf0a529b7
depmod:  register_netdevice_notifier_R63ecad53
depmod:  printk_R1b7d4074
depmod:  unregister_inetaddr_notifier_R760b437a
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/ipt_REJECT.o
depmod:  xrlim_allow_R93451db7
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  alloc_skb_Rd01717f8
depmod:  ip_route_output_key_Raa5935b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  __ip_select_ident_R5ac7d384
depmod:  ___pskb_trim_R80cc8a40
depmod:  nf_hooks_R078b1fd2
depmod:  skb_copy_R69e26b73
depmod:  ip_ct_attach_R0d989676
depmod:  csum_partial_R9a3de8f8
depmod:  printk_R1b7d4074
depmod:  nf_hook_slow_Re96f0b90
depmod:  skb_over_panic_Rac052017
depmod:  ip_finish_output_Rb4101a76
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/iptable_filter.o
depmod:  nf_register_hook_Rd6b2a233
depmod:  nf_unregister_hook_R5722100d
depmod:  printk_R1b7d4074
depmod:  net_ratelimit_Rf6ebc03b
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/net/ipv4/netfilter/iptable_nat.o
depmod:  ip_send_check_Ra37b7441
depmod:  irq_stat_R38b08934
depmod:  __out_of_line_bug_R8b0fd3c5
depmod:  nf_register_hook_Rd6b2a233
depmod:  nf_unregister_hook_R5722100d
depmod:  ip_route_output_key_Raa5935b7
depmod:  do_softirq_Rf0a529b7
depmod:  __kfree_skb_Rb8f73d77
depmod:  ___pskb_trim_R80cc8a40
depmod:  sprintf_R1d26aa98
depmod:  ip_route_me_harder_R9410b944
depmod:  skb_copy_R69e26b73
depmod:  skb_copy_expand_R2cb47251
depmod:  csum_partial_R9a3de8f8
depmod:  printk_R1b7d4074
depmod:  skb_over_panic_Rac052017
depmod:  net_ratelimit_Rf6ebc03b
depmod:  __vmalloc_R79995c5b
depmod:  sock_wfree_R1611c76a
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/oss/snd-mixer-oss.o
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  try_inc_mod_count_Re6105b23
depmod:  sprintf_R1d26aa98
depmod:  rwsem_wake
depmod:  simple_strtoul_R20000329
depmod:  kfree_R037a0cba
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/oss/snd-pcm-oss.o
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  __up_wakeup
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  try_inc_mod_count_Re6105b23
depmod:  add_wait_queue_R7539aa0e
depmod:  sprintf_R1d26aa98
depmod:  simple_strtoul_R20000329
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  __vmalloc_R79995c5b
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/oss/snd-seq-oss.o
depmod:  __get_user_4
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  __up_wakeup
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  try_inc_mod_count_Re6105b23
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-device.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-dummy.o
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-instr.o
depmod:  schedule_timeout_R17d59d01
depmod:  __up_wakeup
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-midi-emul.o
depmod:  kmalloc_R93d4cfe6
depmod:  kfree_R037a0cba
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-midi-event.o
depmod:  kmalloc_R93d4cfe6
depmod:  kfree_R037a0cba
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-midi.o
depmod:  snprintf_R025da070
depmod:  __up_wakeup
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq-virmidi.o
depmod:  try_inc_mod_count_Re6105b23
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/seq/snd-seq.o
depmod:  schedule_timeout_R17d59d01
depmod:  do_gettimeofday_R72270e35
depmod:  irq_stat_R38b08934
depmod:  vfree_R2fd1d81c
depmod:  __down_failed_interruptible
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  try_inc_mod_count_Re6105b23
depmod:  sprintf_R1d26aa98
depmod:  rwsem_down_write_failed
depmod:  rwsem_wake
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  interruptible_sleep_on_R15e26425
depmod:  __vmalloc_R79995c5b
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd-hwdep.o
depmod:  __get_user_4
depmod:  __up_wakeup
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  add_wait_queue_R7539aa0e
depmod:  sprintf_R1d26aa98
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd-page-alloc.o
depmod:  kmalloc_R93d4cfe6
depmod:  vfree_R2fd1d81c
depmod:  __get_free_pages_R4784e424
depmod:  __up_wakeup
depmod:  pci_free_consistent_Rb2748b28
depmod:  free_pages_R9941ccb8
depmod:  pci_alloc_consistent_R33390bf1
depmod:  create_proc_entry_R3045c2ce
depmod:  mem_map_Re77c036b
depmod:  zone_table_Re87839a6
depmod:  sprintf_R1d26aa98
depmod:  vmalloc_to_page_R0c1ba6e6
depmod:  remove_proc_entry_R24b93092
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __vmalloc_R79995c5b
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd-pcm.o
depmod:  schedule_timeout_R17d59d01
depmod:  mod_timer_R1f13d309
depmod:  __get_user_4
depmod:  do_gettimeofday_R72270e35
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  fput_R26d7168a
depmod:  __generic_copy_from_user_R116166aa
depmod:  try_inc_mod_count_Re6105b23
depmod:  mem_map_Re77c036b
depmod:  add_wait_queue_R7539aa0e
depmod:  jiffies_R0da02d67
depmod:  fasync_helper_R536f5ddf
depmod:  fget_Rffed0dfa
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  rwsem_wake
depmod:  simple_strtoul_R20000329
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  kill_fasync_Rabddf4af
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd-rawmidi.o
depmod:  schedule_timeout_R17d59d01
depmod:  __get_user_4
depmod:  interruptible_sleep_on_timeout_Re0838aee
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  __generic_copy_from_user_R116166aa
depmod:  try_inc_mod_count_Re6105b23
depmod:  add_wait_queue_R7539aa0e
depmod:  sprintf_R1d26aa98
depmod:  rwsem_wake
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd-timer.o
depmod:  __get_user_4
depmod:  do_gettimeofday_R72270e35
depmod:  __const_udelay_Reae3dfd6
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  request_module_R27e4dc04
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  add_timer_Ra19eacf8
depmod:  try_inc_mod_count_Re6105b23
depmod:  add_wait_queue_R7539aa0e
depmod:  jiffies_R0da02d67
depmod:  fasync_helper_R536f5ddf
depmod:  tasklet_init_Ra5808bbf
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  schedule_R4292364c
depmod:  __tasklet_hi_schedule_R60ea5fe7
depmod:  kfree_R037a0cba
depmod:  __wake_up_R2c77a2af
depmod:  kill_fasync_Rabddf4af
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/acore/snd.o
depmod:  vfs_readlink_Rea1adc90
depmod:  schedule_timeout_R17d59d01
depmod:  __get_user_4
depmod:  kmalloc_R93d4cfe6
depmod:  panic_R01075bf0
depmod:  vfree_R2fd1d81c
depmod:  unregister_chrdev_Rc192d491
depmod:  __up_wakeup
depmod:  vsnprintf_Rb81a20a5
depmod:  proc_root_R9cc34d9c
depmod:  request_module_R27e4dc04
depmod:  isa_dma_bridge_buggy_Rf82abc1d
depmod:  remove_wait_queue_Rd2d1a4c6
depmod:  __generic_copy_to_user_Rd523fdd3
depmod:  kernel_thread_R7e9ebb05
depmod:  reparent_to_init_Rec6158d0
depmod:  _ctype_R8d3894f2
depmod:  __generic_copy_from_user_R116166aa
depmod:  create_proc_entry_R3045c2ce
depmod:  try_inc_mod_count_Re6105b23
depmod:  add_wait_queue_R7539aa0e
depmod:  fasync_helper_R536f5ddf
depmod:  system_utsname_Rb12cdfe7
depmod:  sprintf_R1d26aa98
depmod:  daemonize_Rd66a354a
depmod:  rwsem_down_write_failed
depmod:  rwsem_wake
depmod:  remove_proc_entry_R24b93092
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod:  vfs_follow_link_R0056de8c
depmod:  __wake_up_R2c77a2af
depmod:  strstr_R1e6d26a8
depmod:  kill_fasync_Rabddf4af
depmod:  printk_R1b7d4074
depmod:  register_chrdev_R46f49195
depmod:  __vmalloc_R79995c5b
depmod:  rwsem_down_read_failed
depmod:  __down_failed
depmod:  __pollwait_R701f80e6
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/drivers/mpu401/snd-mpu401-uart.o
depmod:  snprintf_R025da070
depmod:  __const_udelay_Reae3dfd6
depmod:  __request_region_R1a1a4f09
depmod:  release_resource_R814e8407
depmod:  ioport_resource_R865ebccd
depmod:  add_timer_Ra19eacf8
depmod:  jiffies_R0da02d67
depmod:  free_irq_Rf20dabd8
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/drivers/opl3/snd-opl3-lib.o
depmod:  __const_udelay_Reae3dfd6
depmod:  __up_wakeup
depmod:  __request_region_R1a1a4f09
depmod:  release_resource_R814e8407
depmod:  ioport_resource_R865ebccd
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/drivers/opl3/snd-opl3-synth.o
depmod:  __up_wakeup
depmod:  add_timer_Ra19eacf8
depmod:  try_inc_mod_count_Re6105b23
depmod:  jiffies_R0da02d67
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/isa/sb/snd-emu8000-synth.o
depmod:  schedule_timeout_R17d59d01
depmod:  __get_user_1
depmod:  __get_user_2
depmod:  add_timer_Ra19eacf8
depmod:  jiffies_R0da02d67
depmod:  del_timer_Rfc62f16d
depmod:  schedule_R4292364c
depmod:  kfree_R037a0cba
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/isa/sb/snd-sb-common.o
depmod:  free_dma_R72b243d4
depmod:  __const_udelay_Reae3dfd6
depmod:  request_dma_R43435480
depmod:  __request_region_R1a1a4f09
depmod:  release_resource_R814e8407
depmod:  ioport_resource_R865ebccd
depmod:  free_irq_Rf20dabd8
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  request_irq_R0c60f2e0
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/isa/sb/snd-sb16-csp.o
depmod:  __const_udelay_Reae3dfd6
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  __generic_copy_from_user_R116166aa
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/isa/sb/snd-sb16-dsp.o
depmod:  sprintf_R1d26aa98
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/isa/sb/snd-sbawe.o
depmod:  schedule_timeout_R17d59d01
depmod:  free_dma_R72b243d4
depmod:  isapnp_resource_change_R09b965af
depmod:  request_dma_R43435480
depmod:  __request_region_R1a1a4f09
depmod:  release_resource_R814e8407
depmod:  ioport_resource_R865ebccd
depmod:  free_irq_Rf20dabd8
depmod:  isapnp_probe_cards_R1d966f40
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  request_irq_R0c60f2e0
depmod:  isapnp_find_dev_Rf9d40cfa
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/synth/emux/snd-emux-synth.o
depmod:  __up_wakeup
depmod:  add_timer_Ra19eacf8
depmod:  try_inc_mod_count_Re6105b23
depmod:  jiffies_R0da02d67
depmod:  del_timer_Rfc62f16d
depmod:  sprintf_R1d26aa98
depmod:  kfree_R037a0cba
depmod:  printk_R1b7d4074
depmod:  __down_failed
depmod: *** Unresolved symbols in
/lib/modules/2.4.19/kernel/sound/synth/snd-util-mem.o
depmod:  kmalloc_R93d4cfe6
depmod:  __up_wakeup
depmod:  kfree_R037a0cba
depmod:  __down_failed



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
