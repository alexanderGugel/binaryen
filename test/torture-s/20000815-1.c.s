	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20000815-1.c"
	.section	.text.invalidate_memory,"ax",@progbits
	.hidden	invalidate_memory
	.globl	invalidate_memory
	.type	invalidate_memory,@function
invalidate_memory:                      # @invalidate_memory
	.param  	i32
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.load8_u	$push10=, 0($0)
	tee_local	$push9=, $0=, $pop10
	i32.const	$push2=, 8
	i32.and 	$1=, $pop9, $pop2
	i32.const	$4=, 0
	i32.const	$push1=, 4
	i32.and 	$push0=, $0, $pop1
	i32.eqz 	$3=, $pop0
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	block
	loop                            # label1:
	block
	i32.const	$push14=, 2
	i32.shl 	$push3=, $4, $pop14
	i32.const	$push13=, table
	i32.add 	$push4=, $pop3, $pop13
	i32.load	$push12=, 0($pop4)
	tee_local	$push11=, $0=, $pop12
	i32.eqz 	$push21=, $pop11
	br_if   	0, $pop21       # 0: down to label3
.LBB0_2:                                # %for.body6
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop                            # label4:
	i32.load16_u	$2=, 36($0)
	i32.load	$0=, 4($0)
	block
	i32.const	$push15=, 255
	i32.and 	$push5=, $2, $pop15
	i32.eqz 	$push22=, $pop5
	br_if   	0, $pop22       # 0: down to label6
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=2
	br_if   	6, $1           # 6: down to label0
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=2
	i32.const	$push16=, 256
	i32.lt_u	$push7=, $2, $pop16
	i32.or  	$push6=, $3, $pop7
	i32.eqz 	$push23=, $pop6
	br_if   	6, $pop23       # 6: down to label0
.LBB0_5:                                # %for.cond5.backedge
                                        #   in Loop: Header=BB0_2 Depth=2
	end_block                       # label6:
	br_if   	0, $0           # 0: up to label4
.LBB0_6:                                # %for.inc15
                                        #   in Loop: Header=BB0_1 Depth=1
	end_loop                        # label5:
	end_block                       # label3:
	i32.const	$push20=, 1
	i32.add 	$push19=, $4, $pop20
	tee_local	$push18=, $4=, $pop19
	i32.const	$push17=, 31
	i32.lt_s	$push8=, $pop18, $pop17
	br_if   	0, $pop8        # 0: up to label1
# BB#7:                                 # %for.end16
	end_loop                        # label2:
	return
.LBB0_8:                                # %if.then
	end_block                       # label0:
	call    	remove_from_table@FUNCTION, $0, $0
	unreachable
	.endfunc
.Lfunc_end0:
	.size	invalidate_memory, .Lfunc_end0-invalidate_memory

	.section	.text.cse_rtx_addr_varies_p,"ax",@progbits
	.hidden	cse_rtx_addr_varies_p
	.globl	cse_rtx_addr_varies_p
	.type	cse_rtx_addr_varies_p,@function
cse_rtx_addr_varies_p:                  # @cse_rtx_addr_varies_p
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
                                        # fallthrough-return: $pop0
	.endfunc
.Lfunc_end1:
	.size	cse_rtx_addr_varies_p, .Lfunc_end1-cse_rtx_addr_varies_p

	.section	.text.remove_from_table,"ax",@progbits
	.hidden	remove_from_table
	.globl	remove_from_table
	.type	remove_from_table,@function
remove_from_table:                      # @remove_from_table
	.param  	i32, i32
# BB#0:                                 # %entry
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	remove_from_table, .Lfunc_end2-remove_from_table

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push10=, 0
	i32.const	$push7=, 0
	i32.load	$push8=, __stack_pointer($pop7)
	i32.const	$push9=, 48
	i32.sub 	$push24=, $pop8, $pop9
	tee_local	$push23=, $3=, $pop24
	i32.store	$drop=, __stack_pointer($pop10), $pop23
	i32.const	$1=, 0
	i32.const	$push14=, 8
	i32.add 	$push15=, $3, $pop14
	i32.const	$push22=, 0
	i32.const	$push0=, 40
	i32.call	$drop=, memset@FUNCTION, $pop15, $pop22, $pop0
	i32.const	$push21=, 0
	i32.const	$push16=, 8
	i32.add 	$push17=, $3, $pop16
	i32.store	$drop=, table($pop21), $pop17
	i32.const	$push20=, 1
	i32.store8	$drop=, 44($3), $pop20
	i32.const	$push18=, 8
	i32.add 	$push19=, $3, $pop18
	copy_local	$2=, $pop19
.LBB3_1:                                # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_2 Depth 2
	block
	loop                            # label8:
	block
	i32.eqz 	$push33=, $2
	br_if   	0, $pop33       # 0: down to label10
.LBB3_2:                                # %for.body6.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	loop                            # label11:
	i32.load16_u	$0=, 36($2)
	i32.load	$2=, 4($2)
	block
	i32.const	$push27=, 256
	i32.lt_u	$push1=, $0, $pop27
	br_if   	0, $pop1        # 0: down to label13
# BB#3:                                 # %for.body6.i
                                        #   in Loop: Header=BB3_2 Depth=2
	i32.const	$push28=, 255
	i32.and 	$push2=, $0, $pop28
	br_if   	6, $pop2        # 6: down to label7
.LBB3_4:                                # %for.cond5.backedge.i
                                        #   in Loop: Header=BB3_2 Depth=2
	end_block                       # label13:
	br_if   	0, $2           # 0: up to label11
.LBB3_5:                                # %for.inc15.i
                                        #   in Loop: Header=BB3_1 Depth=1
	end_loop                        # label12:
	end_block                       # label10:
	i32.const	$push32=, 1
	i32.add 	$push31=, $1, $pop32
	tee_local	$push30=, $1=, $pop31
	i32.const	$push29=, 30
	i32.gt_s	$push3=, $pop30, $pop29
	br_if   	1, $pop3        # 1: down to label9
# BB#6:                                 # %for.inc15.i.for.body.i_crit_edge
                                        #   in Loop: Header=BB3_1 Depth=1
	i32.const	$push26=, 2
	i32.shl 	$push5=, $1, $pop26
	i32.const	$push25=, table
	i32.add 	$push6=, $pop5, $pop25
	i32.load	$2=, 0($pop6)
	br      	0               # 0: up to label8
.LBB3_7:                                # %invalidate_memory.exit
	end_loop                        # label9:
	i32.const	$push13=, 0
	i32.const	$push11=, 48
	i32.add 	$push12=, $3, $pop11
	i32.store	$drop=, __stack_pointer($pop13), $pop12
	i32.const	$push4=, 0
	return  	$pop4
.LBB3_8:                                # %if.then.i
	end_block                       # label7:
	call    	remove_from_table@FUNCTION, $2, $2
	unreachable
	.endfunc
.Lfunc_end3:
	.size	main, .Lfunc_end3-main

	.type	table,@object           # @table
	.section	.bss.table,"aw",@nobits
	.p2align	4
table:
	.skip	128
	.size	table, 128


	.ident	"clang version 4.0.0 "
	.functype	abort, void
