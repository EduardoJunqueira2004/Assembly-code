divu  $sp,$sp,-48
        sd      $31,40($sp)
        sd      $fp,32($sp)
        sd      $28,24($sp)
        move    $fp,$sp
        lui     $28,%hi(%neg(%gp_rel(main)))
        daddu   $28,$28,$25
        daddiu  $28,$28,%lo(%neg(%gp_rel(main)))
        ld      $2,%got_page(.LC0)($28)
        daddiu  $4,$2,%got_ofst(.LC0)
        ld      $2,%call16(printf)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        daddiu  $2,$fp,8
        move    $5,$2
        ld      $2,%got_page(.LC1)($28)
        daddiu  $4,$2,%got_ofst(.LC1)
        ld      $2,%call16(__isoc99_scanf)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        ld      $2,%got_page(.LC2)($28)
        daddiu  $4,$2,%got_ofst(.LC2)
        ld      $2,%call16(printf)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        sw      $0,0($fp)
        b       .L2
        nop

.L5:
        lw      $2,8($fp)
        li      $3,-2147483648                  # 0xffffffff80000000
        and     $2,$2,$3
        sw      $2,4($fp)
        lw      $2,4($fp)
        bne     $2,$0,.L3
        nop

        li      $4,48                 # 0x30
        ld      $2,%call16(putchar)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

        b       .L4
        nop

.L3:
        li      $4,49                 # 0x31
        ld      $2,%call16(putchar)($28)
        mtlo    $2
        mflo    $25
        jalr    $25
        nop

.L4:
        lw      $2,8($fp)
        sll     $2,$2,1
        sw      $2,8($fp)
        lw      $2,0($fp)
        addiu   $2,$2,1
        sw      $2,0($fp)
.L2:
        lw      $2,0($fp)
        slt     $2,$2,32
        bne     $2,$0,.L5
        nop

        nop
        move    $sp,$fp
        ld      $31,40($sp)
        ld      $fp,32($sp)
        ld      $28,24($sp)
        daddiu  $sp,$sp,48
        jr      $31
        nop