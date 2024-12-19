.text
main: add $t0,$zero,2 #$t0=x
      add $t2,$zero,-8 #$t2=-8
      add $t1,$t0,$t0 #$t1=x+x=2x
      add $t1,$t1,$t2 #$st1=y=2x-8
      add $v0,$zero,5
      syscall
      add $a0,$zero,$t5
      addi $v0,$zero,1
      syscall
      