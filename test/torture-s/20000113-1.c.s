	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20000113-1.c"
	.globl	foobar
	.type	foobar,@function
foobar:                                 # @foobar
	.param  	i32, i32, i32
	.result 	i32
# BB#0:                                 # %entry
	block   	.LBB0_3
	i32.const	$push0=, 1
	i32.and 	$0=, $0, $pop0
	i32.const	$push10=, 0
	i32.eq  	$push11=, $0, $pop10
	br_if   	$pop11, .LBB0_3
# BB#1:                                 # %lor.lhs.false
	i32.const	$push1=, 3
	i32.and 	$1=, $1, $pop1
	i32.sub 	$push2=, $1, $0
	i32.mul 	$push3=, $pop2, $1
	i32.add 	$push4=, $pop3, $2
	i32.const	$push5=, 7
	i32.and 	$push6=, $pop4, $pop5
	i32.const	$push7=, 5
	i32.ne  	$push8=, $pop6, $pop7
	br_if   	$pop8, .LBB0_3
# BB#2:                                 # %if.end
	i32.const	$push9=, 0
	call    	exit, $pop9
	unreachable
.LBB0_3:                                  # %if.then
	call    	abort
	unreachable
.Lfunc_end0:
	.size	foobar, .Lfunc_end0-foobar

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push2=, 1
	i32.const	$push1=, 2
	i32.const	$push0=, 3
	i32.call	$discard=, foobar, $pop2, $pop1, $pop0
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits