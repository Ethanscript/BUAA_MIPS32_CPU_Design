#initial
lui $1,0x0006
ori $1,$1,0x0004
lui $2,0x7cfd
ori $2,$2,0x57f8
lui $3,0x883c
ori $3,$3,0x88a7
lui $4,0x0405
ori $4,$4,0x0607
sw $1,0($0)
sw $2,4($0)
sw $3,8($0)
sw $4,12($0)
#lh
lb $1,13($0)
lh $2,0($1)
lh $1,2($0)
ori $4,$0,9
lh $2,0($1) 
lhu $1,0($0)
ori $4,$0,9
ori $5,$0,98
lh $2,6($1)
#lhu
lbu $1,12($0)
lhu $2,1($1)
lh $1,2($0)
ori $4,$0,9
lhu $2,0($1) 
lh $1,0($0)
ori $4,$0,9
ori $5,$0,98
lhu $2,6($1)
#lb
lb $1,12($0)
lb $2,1($1)
lbu $1,13($0)
ori $4,$0,9
lb $2,2($1) 
lbu $1,14($0)
ori $4,$0,9
ori $5,$0,98
lb $2,3($1)
#lbu
lbu $1,12($0)
lbu $2,0($1)
lb $1,13($0)
ori $4,$0,9
lbu $2,2($1) 
lb $1,14($0)
ori $4,$0,9
ori $5,$0,98
lbu $2,3($1)  