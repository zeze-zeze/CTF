; Disassembly of "main.gb"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    add b
    ld b, b
    jr nz, jr_000_0024

    ld [$0204], sp
    db $01

RST_18::
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38

jr_000_0024:
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    push hl
    ld hl, $c7bd
    jp Jump_000_0067


    rst $38

LCDCInterrupt::
    push hl
    ld hl, $c7cd
    jp Jump_000_0067


    rst $38

TimerOverflowInterrupt::
    push hl
    ld hl, $c7dd
    jp Jump_000_0067


    rst $38

SerialTransferCompleteInterrupt::
    push hl
    ld hl, $c7ed
    jp Jump_000_0067


    rst $38

JoypadTransitionInterrupt::
    push hl
    ld hl, $c7fd
    jp Jump_000_0067


Jump_000_0067:
    push af

    push bc
    push de

jr_000_006a:
    ld a, [hl+]
    or [hl]
    jr z, jr_000_0079

    push hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    call Call_000_007e
    pop hl
    inc hl
    jr jr_000_006a

jr_000_0079:
    pop de
    pop bc
    pop af
    pop hl
    reti


Call_000_007e:
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MAIN", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $00

HeaderROMSize::
    db $00

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $00

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $c1

HeaderGlobalChecksum::
    db $e3, $01

Jump_000_0150:
    di
    ld d, a
    xor a
    ld sp, $e000
    ld hl, $dfff
    ld c, $20
    ld b, $00

jr_000_015d:
    ld [hl-], a
    dec b
    jr nz, jr_000_015d

    dec c
    jr nz, jr_000_015d

    ld hl, $feff
    ld b, $00

jr_000_0169:
    ld [hl-], a
    dec b
    jr nz, jr_000_0169

    ld hl, $ffff
    ld b, $80

jr_000_0172:
    ld [hl-], a
    dec b
    jr nz, jr_000_0172

    ld a, d
    ld [$c7b4], a
    call Call_000_136e
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rSTAT], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld bc, $ff80
    ld hl, $1385
    ld b, $0a

jr_000_0192:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0192

    ld bc, $1346
    call Call_000_12fd
    ld bc, $138f
    call Call_000_130f
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $1b
    ldh [rOBP1], a
    ld a, $c0
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
    ld a, $09
    ldh [rIE], a
    xor a
    ldh [rNR52], a
    ldh [rSC], a
    ld a, $66
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    xor a
    call Call_000_1672
    ei
    call Call_000_1459
    or h
    rrca
    ld bc, $7600
    jr @-$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0200:
    push bc
    ld c, $00

Jump_000_0203:
    xor a
    ld a, c
    ld hl, sp+$04
    sbc [hl]

jr_000_0208:
    jp nc, Jump_000_0212

    call Call_000_1357
    inc c
    jp Jump_000_0203


Jump_000_0212:
    pop bc
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_021b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0001
    ld [bc], a
    nop
    nop
    nop
    db $10
    rrca
    ld d, b
    jr nz, jr_000_021b

    nop
    and b
    nop
    add b
    nop
    nop
    nop

jr_000_0242:
    nop
    nop
    nop
    nop
    jr nz, jr_000_0208

    jr c, jr_000_025a

    inc c
    ld [$0404], sp
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    nop

jr_000_025a:
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    ld h, b
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0200
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    jr jr_000_0242

    adc $c2
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    inc bc
    nop
    nop
    ld [bc], a
    nop
    add d
    add d
    ld b, h
    jr z, jr_000_02e8

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    inc b
    ld [bc], a
    inc b
    ld b, $00
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld [$8430], sp
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0603
    inc c
    ld [$2814], sp
    jr nc, jr_000_0300

jr_000_02e8:
    ld a, b
    db $10
    jr z, jr_000_02fc

    jr jr_000_0316

    db $fc
    rst $38
    push bc
    ld c, b
    inc b

jr_000_02f3:
    ld c, b
    inc l
    db $10
    inc [hl]
    jr nz, jr_000_0359

    nop
    ld h, b
    nop

jr_000_02fc:
    ld h, b
    nop
    add b
    ld b, b

jr_000_0300:
    ld h, b
    ret nz

    ld h, b
    jr nc, @+$42

    add b
    nop
    ld b, b
    ld h, b
    nop
    nop
    jr nz, jr_000_032d

    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_0316:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_000_032d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    ld b, b
    add b
    nop
    ld b, b
    ld b, b
    jr nz, jr_000_036f

    db $10
    ld [$2010], sp
    db $10
    jr jr_000_036a

    jr nz, jr_000_036c

    jr nc, jr_000_036e

    jr nz, @+$22

    nop
    jr nz, jr_000_0374

    db $10
    call z, $cc00
    nop
    ld b, b

jr_000_0359:
    inc b
    nop
    ld b, h
    inc b
    ld b, b
    ld h, d
    nop
    add e
    jr nz, jr_000_02f3

    ld hl, $281c
    inc c
    inc h
    jr nc, jr_000_036c

jr_000_036a:
    ld a, [bc]
    db $10

jr_000_036c:
    ld c, $01

jr_000_036e:
    inc bc

jr_000_036f:
    ld bc, $0000
    nop
    nop

jr_000_0374:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    xor b
    db $10
    and b
    jr z, jr_000_0385

jr_000_0385:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld b, $09
    rla
    ld [bc], a
    add hl, hl
    inc b
    ld [$0901], sp
    nop
    add hl, bc
    nop
    inc b
    nop
    add sp, $00
    ld hl, sp-$10
    ld hl, sp+$7c
    xor b
    sub $17
    ld [$0006], sp
    nop
    ld bc, $0000
    add b
    nop
    ld e, b
    ld h, b
    ld a, [hl]
    ccf
    rla
    rrca
    rla
    add hl, bc
    ld b, $00
    add b
    nop
    ld l, h
    rra
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    db $fd
    cp $01
    db $10
    inc d
    dec bc
    jp z, $c234

    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    add b
    xor b
    ld b, h
    ld a, [hl+]
    db $10
    adc h
    nop
    sub a
    ld h, b
    ld e, $00
    ld b, $00
    nop
    nop
    add h
    nop
    add h
    nop
    inc b
    nop
    and b
    jr @+$4e

    db $10
    add hl, sp

jr_000_03ef:
    ld b, h
    rst $00
    jr z, jr_000_03ef

    ld b, $03
    add hl, bc
    ld d, a
    ld [bc], a
    ld h, b

jr_000_03f9:
    ld d, $f6
    inc l
    adc h
    ld l, e
    ld bc, $8478
    ld e, c
    ld c, c
    sub [hl]
    sub a
    jr nz, jr_000_047c

    nop
    dec b
    ld d, b
    ret nz

    inc d
    inc [hl]
    add h
    call $75a4
    jr z, jr_000_043b

    ld e, b
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_000_041e:
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rra
    ld c, $03
    rlca
    nop
    nop
    ld b, $07
    ld bc, $0003
    nop
    ld bc, $ef00
    rra
    di
    ld bc, $fcfa
    ld a, a

jr_000_043b:
    rst $38
    rst $18
    ccf
    rst $38
    rst $38
    ld e, a
    ccf
    rst $28
    rra
    ret nz

    add b
    ret nc

    ldh [$b8], a
    ld [hl], b
    ld a, b
    sbc h
    call c, $ffe6
    di
    ei
    db $fd
    db $fd
    cp $00
    nop
    nop
    nop
    ld bc, $0600
    inc bc
    inc bc
    inc b
    ld b, $04
    rst $00
    add d
    ret nz

    ret nz

    ld h, h
    inc e
    dec c
    db $10
    ret z

    ld bc, $08fa
    adc h
    ld b, $06
    inc bc
    add e
    ld bc, $0000
    jr nc, jr_000_03f9

    add d
    jr nz, jr_000_04d9

    inc b
    dec b
    ld b, b

jr_000_047c:
    adc c
    ld b, c
    jp $d088


    add d
    ld b, b
    ld a, [c]
    cp $c8
    sub [hl]
    ld a, h
    jr z, jr_000_041e

    add h
    jr nz, jr_000_04cd

    jr z, jr_000_0497

    ld b, b
    ret nz

    db $10
    db $10
    add b
    rst $18
    ccf
    rrca

jr_000_0497:
    ccf
    rla
    rrca
    rlca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    dec bc
    rlca
    ld bc, $0000
    nop
    ret nz

    ld h, b
    ld [hl], b
    and b
    cp b
    ret nc

    call c, $e6e8
    db $fc
    or $fa
    ld a, d
    db $fd
    rla
    ld c, $03
    nop
    ld [bc], a

jr_000_04c7:
    nop
    nop
    nop
    ld b, $00
    ld [bc], a

jr_000_04cd:
    rlca
    rlca
    rlca
    rlca
    rlca
    adc a
    rlca
    ld d, e
    inc a
    ld a, a
    rrca
    dec e

jr_000_04d9:
    inc bc
    inc b
    nop
    inc b
    nop
    call nz, $ee80
    ldh a, [$f0]
    ei
    add b
    jr nz, jr_000_04c7

    nop
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $02
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    rrca
    rlca
    nop
    nop
    jr jr_000_0508

jr_000_0508:
    nop
    inc c
    ld b, $04
    ccf
    ccf
    ld bc, $1101
    ld de, $1191
    nop
    nop
    nop
    jr nz, jr_000_0579

    jr nz, jr_000_053b

    ld b, b
    db $fc
    ld hl, sp+$00
    nop
    jr @+$12

    jr jr_000_0534

    nop
    nop
    ld bc, $6040
    jr nz, jr_000_052b

jr_000_052b:
    jr nc, jr_000_0540

    inc bc
    nop
    nop
    ld bc, $f901
    ld [hl], c

jr_000_0534:
    nop
    nop
    add b
    ld [bc], a
    ld b, $c2
    ld h, d

jr_000_053b:
    ld b, h
    rst $38
    rst $38
    db $10
    db $10

jr_000_0540:
    ld de, $1111
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0700
    rrca
    inc e
    ld c, $1c
    inc a
    ld a, h
    ld hl, sp-$04
    ld hl, sp-$71
    rrca
    rrca
    rrca
    rst $08

jr_000_0579:
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ei
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    nop
    nop
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    ret nz

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $1191
    sub c
    ld de, $1f9f
    add e
    ld bc, $0281
    add h
    ld [bc], a
    add b
    inc c
    adc b
    sub b
    jr @+$12

    jr jr_000_05d8

    ld hl, sp-$10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld de, $1119

jr_000_05d8:
    add hl, de
    ld de, $1018
    jr @+$12

    jr @+$12

    jr jr_000_05f2

    jr z, jr_000_05fd

    ld de, $1111
    ld de, $ffff
    jr nc, jr_000_05fc

    db $10
    jr nz, jr_000_062f

    jr nz, jr_000_05f1

jr_000_05f1:
    ret nz

jr_000_05f2:
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop

jr_000_05fc:
    nop

jr_000_05fd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    ld hl, sp-$08
    ld e, b
    ret nc

    jr nz, jr_000_061b

jr_000_061b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca

jr_000_062f:
    rlca
    rrca
    rlca
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    add b
    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    nop
    add b
    inc b
    ld [bc], a
    ld [$0004], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rLCDC], a
    cpl
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    inc h
    add d
    ld b, c
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $fe
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    jr c, jr_000_0705

jr_000_0705:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    jr jr_000_0775

jr_000_0775:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1c
    ld e, $1c
    ld e, $1c
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    nop
    add b
    ld b, b
    ld b, b
    ld h, b
    ld a, b
    jr nc, jr_000_07b7

    inc a
    ccf
    rra
    ccf
    rra
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    cp $fc
    cp $ff
    rst $38
    rst $38
    nop
    nop
    nop

jr_000_07b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0780], sp
    rrca
    rrca
    rrca
    rra
    rrca
    rrca
    rra
    rra
    rra
    ld a, $1f
    ld a, $1f
    ccf
    ld a, $fe
    rst $38
    rst $38
    rst $38
    sbc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    db $fc
    ld a, [hl]
    rlca
    adc [hl]
    adc a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    adc a
    rlca
    rlca
    adc [hl]
    rra
    dec e
    rra
    ld e, $1e
    inc e
    inc e
    inc e
    sbc h
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    rst $00
    db $e3
    rlca
    rlca
    rlca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    ld c, $06
    rrca
    rlca
    rlca
    ld hl, sp-$04
    sbc h
    ld c, $0e
    ld c, $ff
    cp $ff
    cp $00
    nop
    nop
    nop
    add h
    ld [bc], a
    ccf
    rra
    inc e
    jr c, @+$1e

    jr c, jr_000_0879

    rra
    rrca
    rra
    inc c
    inc bc
    nop
    nop
    jr nc, jr_000_0844

jr_000_0844:
    pop hl
    ldh [$61], a
    ld bc, $0301
    jp $c303


    db $e3
    di
    db $e3
    pop hl
    ld [hl], e
    pop hl
    ld [hl], c
    cp $ff
    rst $20
    jp $83c3


    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    add b
    add b
    ret nz

    pop hl
    ret nz

    rlca
    rlca
    rlca
    add a
    add a
    add a
    rst $00
    add a
    rst $00
    add a
    rlca
    rlca
    rlca
    rlca
    rlca
    add a
    db $fc
    ld a, [hl]
    rra
    adc [hl]
    add a

jr_000_0879:
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $7f
    ccf
    ld e, $1c
    ld e, $1c
    ld e, $1c
    ld e, $1c
    ld e, $1c
    ld e, $1c
    ld c, $1c
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    db $e4
    ret z

    cp $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    nop
    add e
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ccf
    ld a, $b7
    ld a, [hl]
    rst $38
    rst $30
    rst $30
    rst $20
    rst $20
    rst $00
    add a
    rst $00
    add a
    rlca
    inc bc
    rlca
    cp $07
    sbc [hl]
    ld h, h
    inc a
    call z, $fc9c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    db $fc
    ld a, [hl]
    inc d
    jr c, jr_000_0919

jr_000_0919:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld l, h
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ccf
    dec de
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    ldh [rLCDC], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld e, e
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    add a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld c, $07
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rrca
    dec bc
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    rra
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp [hl]
    ld a, h
    db $10
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$10
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$03
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$f0]
    ldh [$f0], a
    ldh a, [$e0]
    ret nz

    ldh [$c0], a
    ldh [rTAC], a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ld hl, sp-$10
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    ldh [$c0], a
    rlca
    inc bc
    rlca
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh [$c0], a
    ldh [$f0], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_000_0b0d

jr_000_0b0d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_000_0b22

jr_000_0b22:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_000_0b6d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_000_0b80

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_000_0b5d

jr_000_0b5d:
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b

jr_000_0b6d:
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_000_0b80:
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, l
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    nop
    ld e, e
    ld e, h
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add l
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    adc b
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0c1c:
    ld hl, $c798
    ld [hl], $00

Jump_000_0c21:
    ld hl, $c798
    ld a, [hl]
    cp $04
    jp nc, Jump_000_0c70

    xor a
    ld a, $03
    sbc [hl]
    jp c, Jump_000_0c60

    ld e, [hl]
    ld d, $00
    ld hl, $0c3b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_0c47


    jp Jump_000_0c4e


    jp Jump_000_0c55


    jp Jump_000_0c5c


Jump_000_0c47:
    ld a, $e4
    ldh [rBGP], a
    jp Jump_000_0c60


Jump_000_0c4e:
    ld a, $f9
    ldh [rBGP], a
    jp Jump_000_0c60


Jump_000_0c55:
    ld a, $fe
    ldh [rBGP], a
    jp Jump_000_0c60


Jump_000_0c5c:
    ld a, $ff
    ldh [rBGP], a

Jump_000_0c60:
    ld a, $0a
    push af
    inc sp
    call Call_000_0200
    add sp, $01
    ld hl, $c798
    inc [hl]
    jp Jump_000_0c21


Jump_000_0c70:
    ret


Call_000_0c71:
    ld hl, $c798
    ld [hl], $03

Jump_000_0c76:
    xor a
    ld a, $00
    ld hl, $c798
    sbc [hl]
    jp nc, Jump_000_0cbd

    ld a, [hl]
    cp $01
    jp z, Jump_000_0c9b

    ld hl, $c798
    ld a, [hl]
    cp $02
    jp z, Jump_000_0ca2

    ld hl, $c798
    ld a, [hl]
    cp $03
    jp z, Jump_000_0ca9

    jp Jump_000_0cad


Jump_000_0c9b:
    ld a, $e4
    ldh [rBGP], a
    jp Jump_000_0cad


Jump_000_0ca2:
    ld a, $f9
    ldh [rBGP], a
    jp Jump_000_0cad


Jump_000_0ca9:
    ld a, $fe
    ldh [rBGP], a

Jump_000_0cad:
    ld a, $14
    push af
    inc sp
    call Call_000_0200
    add sp, $01
    ld hl, $c798
    dec [hl]
    jp Jump_000_0c76


Jump_000_0cbd:
    ret


Call_000_0cbe:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $88
    jp nz, Jump_000_0cc9

    jr jr_000_0ccc

Jump_000_0cc9:
    jp Jump_000_0cd4


jr_000_0ccc:
    ld hl, sp+$05
    ld a, [hl]
    cp $90
    jp z, Jump_000_0cee

Jump_000_0cd4:
    ld hl, sp+$04
    ld a, [hl]
    cp $98
    jp nz, Jump_000_0cde

    jr jr_000_0ce1

Jump_000_0cde:
    jp Jump_000_0cf3


jr_000_0ce1:
    ld hl, sp+$05
    ld a, [hl]
    cp $90
    jp nz, Jump_000_0ceb

    jr jr_000_0cee

Jump_000_0ceb:
    jp Jump_000_0cf3


Jump_000_0cee:
jr_000_0cee:
    ld e, $01
    jp Jump_000_0d59


Jump_000_0cf3:
    xor a
    ld a, $98
    ld hl, sp+$04
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    xor a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld a, [hl]
    cp $08
    ld a, $00
    rla
    ld b, a
    xor a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_000_0d1a

    xor a
    or b

jr_000_0d1a:
    jr z, jr_000_0d1e

    ld a, $01

jr_000_0d1e:
    ld c, a
    ld hl, sp+$05
    ld a, [hl]
    cp $50
    ld a, $00
    rla
    ld b, a
    xor a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_000_0d36

    xor a
    or b

jr_000_0d36:
    jr z, jr_000_0d3a

    ld a, $01

jr_000_0d3a:
    ld c, a
    xor a
    ld a, $80
    ld hl, sp+$05
    sbc [hl]
    ld a, $00
    rla
    ld b, a
    xor a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_000_0d53

    xor a
    or b

jr_000_0d53:
    jr z, jr_000_0d57

    ld a, $01

jr_000_0d57:
    ld c, a
    ld e, c

Jump_000_0d59:
    pop bc
    ret


Call_000_0d5b:
    ld hl, $c79a
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15f4
    add sp, $06
    ret


Call_000_0d75:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0003
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, $0a
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1566
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld a, [de]
    add c
    ld c, a
    inc c
    inc c
    ld hl, $c7ae
    ld a, [hl]
    cp $14
    jp nz, Jump_000_0db0

    jr jr_000_0db3

Jump_000_0db0:
    jp Jump_000_0db6


jr_000_0db3:
    jp Jump_000_0dc6


Jump_000_0db6:
    ld hl, $c7ae
    ld b, [hl]
    inc [hl]
    ld a, $9a
    add b
    ld e, a
    ld a, $c7
    adc $00
    ld d, a
    ld a, c
    ld [de], a

Jump_000_0dc6:
    add sp, $02
    pop bc
    ret


Call_000_0dca:
    push bc
    xor a
    ld a, $00
    ld hl, $c7ae
    sbc [hl]
    jp nc, Jump_000_0de3

    dec [hl]
    ld c, [hl]
    ld a, $9a
    add c
    ld e, a
    ld a, $c7
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_000_0de3:
    pop bc
    ret


Call_000_0de5:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld a, [de]
    ld c, a
    ld a, c
    cp $08
    jp nz, Jump_000_0e00

    jr jr_000_0e03

Jump_000_0e00:
    jp Jump_000_0e24


jr_000_0e03:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0003
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld a, b
    cp $04
    jp nz, Jump_000_0e18

    jr jr_000_0e1b

Jump_000_0e18:
    jp Jump_000_0e24


jr_000_0e1b:
    call Call_000_0dca
    call Call_000_0d5b
    jp Jump_000_0e5d


Jump_000_0e24:
    ld a, c
    cp $09
    jp nz, Jump_000_0e2c

    jr jr_000_0e2f

Jump_000_0e2c:
    jp Jump_000_0e4f


jr_000_0e2f:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0003
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld a, c
    cp $04
    jp nz, Jump_000_0e44

    jr jr_000_0e47

Jump_000_0e44:
    jp Jump_000_0e4f


jr_000_0e47:
    ld hl, $c7af
    ld [hl], $01
    jp Jump_000_0e5d


Jump_000_0e4f:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_0d75
    add sp, $02
    call Call_000_0d5b

Jump_000_0e5d:
    add sp, $02
    pop bc
    ret


Call_000_0e61:
    push bc
    add sp, -$16
    ld hl, sp+$02
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $10
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, $09
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld a, $0e
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0003
    add hl, de
    ld e, l
    ld d, h
    ld a, $1a
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0004
    add hl, de
    ld e, l
    ld d, h
    ld a, $08
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0005
    add hl, de
    ld e, l
    ld d, h
    ld a, $10
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0006
    add hl, de
    ld e, l
    ld d, h
    ld a, $05
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0007
    add hl, de
    ld e, l
    ld d, h
    ld a, $1a
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0008
    add hl, de
    ld e, l
    ld d, h
    ld a, $20
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0009
    add hl, de
    ld e, l
    ld d, h
    ld a, $16
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000a
    add hl, de
    ld e, l
    ld d, h
    ld a, $02
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000b
    add hl, de
    ld e, l
    ld d, h
    ld a, $13
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000c
    add hl, de
    ld e, l
    ld d, h
    ld a, $06
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000d
    add hl, de
    ld e, l
    ld d, h
    ld a, $08
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000e
    add hl, de
    ld e, l
    ld d, h
    ld a, $02
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000f
    add hl, de
    ld e, l
    ld d, h
    ld a, $0e
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld e, l
    ld d, h
    ld a, $23
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0011
    add hl, de
    ld e, l
    ld d, h
    ld a, $03
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0012
    add hl, de
    ld e, l
    ld d, h
    ld a, $20
    ld [de], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0013
    add hl, de
    ld e, l
    ld d, h
    ld a, $1a
    ld [de], a
    ld hl, $c798
    ld [hl], $00

Jump_000_0f77:
    ld hl, $c798
    ld a, [hl]
    cp $14
    jp nc, Jump_000_0fae

    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, $c798
    ld b, [hl]
    ld a, $9a
    add b
    ld e, a
    ld a, $c7
    adc $00
    ld d, a
    ld a, [de]
    cp c
    jr nz, jr_000_0fa2

    jp Jump_000_0fa7


jr_000_0fa2:
    ld e, $00
    jp Jump_000_0fb0


Jump_000_0fa7:
    ld hl, $c798
    inc [hl]
    jp Jump_000_0f77


Jump_000_0fae:
    ld e, $01

Jump_000_0fb0:
    add sp, $16
    pop bc
    ret


    push bc
    add sp, -$06
    ld hl, $0214
    push hl
    ld a, $8a
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_14ea
    add sp, $04
    ld hl, $0ab4
    push hl
    ld a, $12
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15f4
    add sp, $06
    ldh a, [rLCDC]
    or $01
    ldh [rLCDC], a
    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    ldh a, [rLCDC]
    or $80
    ldh [rLCDC], a
    ld a, $80
    push af
    inc sp
    call Call_000_14c4
    add sp, $01
    call Call_000_0c1c
    ld hl, $c208
    push hl
    ld a, $2b
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_14ea
    add sp, $04
    ld hl, $c0a0
    push hl
    ld a, $12
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15f4
    add sp, $06
    call Call_000_0c71
    ld de, $c7b0
    ld a, $08
    ld [de], a
    ld de, $c7b0
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $50
    ld [de], a
    ld de, $c7b0
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c7b0
    ld hl, $0003
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld hl, $c4b8
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1537
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15c7
    add sp, $02
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld de, $c7b0
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_14dd
    add sp, $03
    ld hl, $c799
    ld [hl], $00
    ld hl, $c7ae
    ld [hl], $00
    ld hl, $c7af
    ld [hl], $00
    ld hl, $c798
    ld [hl], $14

Jump_000_10bb:
    ld hl, $c798
    ld a, [hl]
    add $ff
    ld c, a
    ld a, $9a
    add c
    ld e, a
    ld a, $c7
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld [hl], c
    xor a
    or [hl]
    jp nz, Jump_000_10bb

    ld [hl], $13

Jump_000_10d6:
    xor a
    ld hl, $c7af
    or [hl]
    or a
    jp nz, Jump_000_128d

    xor a
    ld hl, $c799
    or [hl]
    or a
    jp z, Jump_000_10f0

    call Call_000_147b
    ld hl, $c799
    ld [hl], $00

Jump_000_10f0:
    call Call_000_14bf
    ld c, e
    ld a, c
    cp $01
    jp z, Jump_000_116b

    ld a, c
    cp $02
    jp z, Jump_000_1115

    ld a, c
    cp $04
    jp z, Jump_000_11c1

    ld a, c
    cp $08
    jp z, Jump_000_121a

    ld a, c
    cp $10
    jp z, Jump_000_1273

    jp Jump_000_1281


Jump_000_1115:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld de, $c7b0
    ld a, [de]
    ld b, a
    ld a, b
    add $f0
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_0cbe
    ld c, e
    add sp, $02
    xor a
    or c
    jp z, Jump_000_1281

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c7b0
    ld a, [de]
    ld c, a
    ld a, c
    add $f0
    ld c, a
    ld de, $c7b0
    ld a, c
    ld [de], a
    ld a, $00
    push af
    inc sp
    ld a, $f0
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15ad
    add sp, $03
    ld hl, $c799
    ld [hl], $01
    jp Jump_000_1281


Jump_000_116b:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld de, $c7b0
    ld a, [de]
    ld b, a
    ld a, b
    add $10
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_0cbe
    ld c, e
    add sp, $02
    xor a
    or c
    jp z, Jump_000_1281

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c7b0
    ld a, [de]
    ld c, a
    ld a, c
    add $10
    ld c, a
    ld de, $c7b0
    ld a, c
    ld [de], a
    ld a, $00
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15ad
    add sp, $03
    ld hl, $c799
    ld [hl], $01
    jp Jump_000_1281


Jump_000_11c1:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld a, c
    add $f0
    ld c, a
    ld de, $c7b0
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_0cbe
    ld c, e
    add sp, $02
    xor a
    or c
    jp z, Jump_000_1281

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld a, c
    add $f0
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $f0
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15ad
    add sp, $03
    ld hl, $c799
    ld [hl], $01
    jp Jump_000_1281


Jump_000_121a:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld a, c
    add $10
    ld c, a
    ld de, $c7b0
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_0cbe
    ld c, e
    add sp, $02
    xor a
    or c
    jp z, Jump_000_1281

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld a, c
    add $10
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $10
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15ad
    add sp, $03
    ld hl, $c799
    ld [hl], $01
    jp Jump_000_1281


Jump_000_1273:
    ld hl, $c7b0
    push hl
    call Call_000_0de5
    add sp, $02
    ld hl, $c799
    ld [hl], $01

Jump_000_1281:
    ld a, $02
    push af
    inc sp
    call Call_000_0200
    add sp, $01
    jp Jump_000_10d6


Jump_000_128d:
    call Call_000_0e61
    ld c, e
    xor a
    or c
    jp z, Jump_000_12b2

    ld hl, $c4c8
    push hl
    ld a, $12
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15f4
    add sp, $06
    jp Jump_000_12cb


Jump_000_12b2:
    ld hl, $c630
    push hl
    ld a, $12
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_15f4
    add sp, $06

Jump_000_12cb:
    add sp, $06
    pop bc
    ret


Call_000_12cf:
    ld a, l
    ld [$c7b5], a
    and $03
    ld l, a
    ld bc, $01e0
    sla l
    sla l
    add hl, bc
    jp hl


Call_000_12df:
    ld hl, $c7bd
    jp Jump_000_131b


Call_000_12e5:
    ld hl, $c7cd
    jp Jump_000_131b


Call_000_12eb:
    ld hl, $c7dd
    jp Jump_000_131b


Call_000_12f1:
    ld hl, $c7ed
    jp Jump_000_131b


Call_000_12f7:
    ld hl, $c7fd
    jp Jump_000_131b


Call_000_12fd:
    ld hl, $c7bd
    jp Jump_000_133b


Call_000_1303:
    ld hl, $c7cd
    jp Jump_000_133b


Call_000_1309:
    ld hl, $c7dd
    jp Jump_000_133b


Call_000_130f:
    ld hl, $c7ed
    jp Jump_000_133b


Call_000_1315:
    ld hl, $c7fd
    jp Jump_000_133b


Jump_000_131b:
jr_000_131b:
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    or d
    ret z

    ld a, e
    cp c
    jr nz, jr_000_131b

    ld a, d
    cp b
    jr nz, jr_000_131b

    xor a
    ld [hl-], a
    ld [hl], a
    inc a
    ld d, h
    ld e, l
    dec de
    inc hl

jr_000_1330:
    ld a, [hl+]
    ld [de], a
    ld b, a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    or b
    ret z

    jr jr_000_1330

Jump_000_133b:
jr_000_133b:
    ld a, [hl+]
    or [hl]
    jr z, jr_000_1342

    inc hl
    jr jr_000_133b

jr_000_1342:
    ld [hl], b
    dec hl
    ld [hl], c
    ret


    ld hl, $c7bb
    inc [hl]
    jr nz, jr_000_134e

    inc hl
    inc [hl]

jr_000_134e:
    call $ff80
    ld a, $01
    ld [$c7b9], a
    ret


Call_000_1357:
    ldh a, [rLCDC]
    add a
    ret nc

    xor a
    di
    ld [$c7b9], a
    ei

jr_000_1361:
    halt
    ld a, [$c7b9]
    or a
    jr z, jr_000_1361

    xor a
    ld [$c7b9], a
    ret


Call_000_136e:
    ldh a, [rLCDC]
    add a
    ret nc

jr_000_1372:
    ldh a, [rLY]
    cp $92
    jr nc, jr_000_1372

jr_000_1378:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_1378

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ret


    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_138b:
    dec a
    jr nz, jr_000_138b

    ret


    ld a, [$c7b8]
    cp $02
    jr nz, jr_000_139f

    ldh a, [rSB]
    ld [$c7b7], a
    ld a, $00
    jr jr_000_13ad

jr_000_139f:
    cp $01
    jr nz, jr_000_13b9

    ldh a, [rSB]
    cp $55
    jr z, jr_000_13ad

    ld a, $04
    jr jr_000_13af

jr_000_13ad:
    ld a, $00

jr_000_13af:
    ld [$c7b8], a
    xor a
    ldh [rSC], a
    ld a, $66
    ldh [rSB], a

jr_000_13b9:
    ld a, $80
    ldh [rSC], a
    ret


    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    call Call_000_12cf
    ret


    ld hl, $c7b5
    ld e, [hl]
    ret


    ei
    ret


    di
    ret


    ld a, [$c7b4]
    jp Jump_000_0150


    di
    ld hl, sp+$02
    xor a
    ldh [rIF], a
    ld a, [hl]
    ldh [rIE], a
    ei
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12df
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12e5
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12eb
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12f1
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12f7
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_12fd
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_1303
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_1309
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_130f
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    call Call_000_1315
    pop bc
    ret


    ld hl, $c7bb
    di
    ld a, [hl+]
    ei
    ld d, [hl]
    ld e, a
    ret


    ret


Call_000_1459:
    pop hl
    ld a, [$c7ba]
    push af
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    inc hl
    push hl
    ld [$c7ba], a
    ld [$2000], a
    ld hl, $1472
    push hl
    ld l, e
    ld h, d
    jp hl


    pop hl
    pop af
    ld [$2000], a
    ld [$c7ba], a
    jp hl


Call_000_147b:
    push af
    push bc

jr_000_147d:
    ld b, $ff

jr_000_147f:
    call Call_000_148b
    or a
    jr nz, jr_000_147d

    dec b
    jr nz, jr_000_147f

    pop bc
    pop af
    ret


Call_000_148b:
    push bc
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, b
    pop bc
    ret


Call_000_14b8:
jr_000_14b8:
    call Call_000_148b
    and b
    jr z, jr_000_14b8

    ret


Call_000_14bf:
    call Call_000_148b
    ld e, a
    ret


Call_000_14c4:
    push bc
    ld hl, sp+$04
    ld b, [hl]
    call Call_000_14b8
    ld e, a
    pop bc
    ret


Call_000_14ce:
    ld hl, $c000
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ret


Call_000_14dd:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    call Call_000_14ce
    pop bc
    ret


Call_000_14ea:
    ldh a, [rLCDC]
    bit 4, a
    jp nz, Jump_000_1537

    push bc
    ld hl, sp+$07
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld l, [hl]
    push hl
    xor a
    or e
    jr nz, jr_000_1505

    ld de, $1000
    jr jr_000_150e

jr_000_1505:
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l

jr_000_150e:
    pop hl
    ld a, l
    rlca
    sbc a
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld bc, $9000
    add hl, bc
    pop bc

jr_000_151d:
    bit 3, h
    jr z, jr_000_1527

    bit 4, h
    jr z, jr_000_1527

    res 4, h

jr_000_1527:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_1527

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_151d

    pop bc
    ret


Call_000_1537:
Jump_000_1537:
    push bc
    ld hl, sp+$07
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld l, [hl]
    push hl
    xor a
    or e
    jr nz, jr_000_154b

    ld de, $1000
    jr jr_000_1554

jr_000_154b:
    ld h, $00
    ld l, e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l

jr_000_1554:
    pop hl
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push bc
    ld bc, $8000
    add hl, bc
    pop bc
    call Call_000_15d2
    pop bc
    ret


Call_000_1566:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_1583
    ld e, l
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_1586
    ld e, l
    ld d, h
    pop bc
    ret


Call_000_1583:
    ld b, $00
    ld d, b

Call_000_1586:
    ld hl, $0000
    ld a, $0f

jr_000_158b:
    sla e
    rl d
    jr nc, jr_000_1592

    add hl, bc

jr_000_1592:
    add hl, hl
    dec a
    jr nz, jr_000_158b

    bit 7, d
    jr z, jr_000_159b

    add hl, bc

jr_000_159b:
    ret


Call_000_159c:
    ld hl, $c000
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    add d
    ld [hl+], a
    ret


Call_000_15ad:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    call Call_000_159c
    pop bc
    ret


Call_000_15ba:
    ld hl, $c002
    sla c
    sla c
    ld b, $00
    add hl, bc
    ld a, d
    ld [hl], a
    ret


Call_000_15c7:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld d, [hl]
    call Call_000_15ba
    pop bc
    ret


Call_000_15d2:
jr_000_15d2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_15d2

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_15d2

    ret


    push bc
    ld hl, sp+$09
    ld d, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    call Call_000_15d2
    pop bc
    ret


Call_000_15f4:
    push bc
    ld hl, sp+$04
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    call Call_000_1619
    pop bc
    ret


    push hl
    ldh a, [rLCDC]
    bit 6, a
    jr nz, jr_000_1614

    ld hl, $9800
    jr jr_000_1628

jr_000_1614:
    ld hl, $9c00
    jr jr_000_1628

Call_000_1619:
    push hl
    ldh a, [rLCDC]
    bit 3, a
    jr nz, jr_000_1625

    ld hl, $9800
    jr jr_000_1628

jr_000_1625:
    ld hl, $9c00

Call_000_1628:
jr_000_1628:
    push bc
    xor a
    or e
    jr z, jr_000_1634

    ld bc, $0020

jr_000_1630:
    add hl, bc
    dec e
    jr nz, jr_000_1630

jr_000_1634:
    ld b, $00
    ld c, d
    add hl, bc
    pop bc
    pop de
    push hl
    push de

jr_000_163c:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_163c

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec d
    jr nz, jr_000_163c

    pop hl
    ld d, h
    pop hl
    dec e
    jr z, jr_000_1658

    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    push hl
    push de
    jr jr_000_163c

jr_000_1658:
    ret


    push bc
    ld hl, sp+$0b
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld hl, sp+$04
    push de
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    call Call_000_1628
    pop bc
    ret


Call_000_1672:
    ld de, $c0a0
    ld a, $01
    ld [de], a
    ld de, $c0a1
    ld a, $01
    ld [de], a
    ld de, $c0a2
    ld a, $01
    ld [de], a
    ld de, $c0a3
    ld a, $01
    ld [de], a
    ld de, $c0a4
    ld a, $01
    ld [de], a
    ld de, $c0a5
    ld a, $01
    ld [de], a
    ld de, $c0a6
    ld a, $01
    ld [de], a
    ld de, $c0a7
    ld a, $01
    ld [de], a
    ld de, $c0a8
    ld a, $01
    ld [de], a
    ld de, $c0a9
    ld a, $01
    ld [de], a
    ld de, $c0aa
    ld a, $01
    ld [de], a
    ld de, $c0ab
    ld a, $01
    ld [de], a
    ld de, $c0ac
    ld a, $01
    ld [de], a
    ld de, $c0ad
    ld a, $01
    ld [de], a
    ld de, $c0ae
    ld a, $01
    ld [de], a
    ld de, $c0af
    ld a, $01
    ld [de], a
    ld de, $c0b0
    ld a, $01
    ld [de], a
    ld de, $c0b1
    ld a, $01
    ld [de], a
    ld de, $c0b2
    ld a, $01
    ld [de], a
    ld de, $c0b3
    ld a, $01
    ld [de], a
    ld de, $c0b4
    ld a, $01
    ld [de], a
    ld de, $c0b5
    ld a, $01
    ld [de], a
    ld de, $c0b6
    ld a, $01
    ld [de], a
    ld de, $c0b7
    ld a, $01
    ld [de], a
    ld de, $c0b8
    ld a, $01
    ld [de], a
    ld de, $c0b9
    ld a, $01
    ld [de], a
    ld de, $c0ba
    ld a, $01
    ld [de], a
    ld de, $c0bb
    ld a, $01
    ld [de], a
    ld de, $c0bc
    ld a, $01
    ld [de], a
    ld de, $c0bd
    ld a, $01
    ld [de], a
    ld de, $c0be
    ld a, $01
    ld [de], a
    ld de, $c0bf
    ld a, $01
    ld [de], a
    ld de, $c0c0
    ld a, $01
    ld [de], a
    ld de, $c0c1
    ld a, $01
    ld [de], a
    ld de, $c0c2
    ld a, $01
    ld [de], a
    ld de, $c0c3
    ld a, $01
    ld [de], a
    ld de, $c0c4
    ld a, $01
    ld [de], a
    ld de, $c0c5
    ld a, $01
    ld [de], a
    ld de, $c0c6
    ld a, $01
    ld [de], a
    ld de, $c0c7
    ld a, $01
    ld [de], a
    ld de, $c0c8
    ld a, $01
    ld [de], a
    ld de, $c0c9
    ld a, $01
    ld [de], a
    ld de, $c0ca
    ld a, $01
    ld [de], a
    ld de, $c0cb
    ld a, $01
    ld [de], a
    ld de, $c0cc
    ld a, $01
    ld [de], a
    ld de, $c0cd
    ld a, $01
    ld [de], a
    ld de, $c0ce
    ld a, $01
    ld [de], a
    ld de, $c0cf
    ld a, $01
    ld [de], a
    ld de, $c0d0
    ld a, $01
    ld [de], a
    ld de, $c0d1
    ld a, $01
    ld [de], a
    ld de, $c0d2
    ld a, $01
    ld [de], a
    ld de, $c0d3
    ld a, $01
    ld [de], a
    ld de, $c0d4
    ld a, $01
    ld [de], a
    ld de, $c0d5
    ld a, $01
    ld [de], a
    ld de, $c0d6
    ld a, $01
    ld [de], a
    ld de, $c0d7
    ld a, $01
    ld [de], a
    ld de, $c0d8
    ld a, $01
    ld [de], a
    ld de, $c0d9
    ld a, $01
    ld [de], a
    ld de, $c0da
    ld a, $01
    ld [de], a
    ld de, $c0db
    ld a, $01
    ld [de], a
    ld de, $c0dc
    ld a, $01
    ld [de], a
    ld de, $c0dd
    ld a, $01
    ld [de], a
    ld de, $c0de
    ld a, $08
    ld [de], a
    ld de, $c0df
    ld a, $0a
    ld [de], a
    ld de, $c0e0
    ld a, $17
    ld [de], a
    ld de, $c0e1
    ld a, $06
    ld [de], a
    ld de, $c0e2
    ld a, $01
    ld [de], a
    ld de, $c0e3
    ld a, $0e
    ld [de], a
    ld de, $c0e4
    ld a, $06
    ld [de], a
    ld de, $c0e5
    ld a, $01
    ld [de], a
    ld de, $c0e6
    ld a, $14
    ld [de], a
    ld de, $c0e7
    ld a, $10
    ld [de], a
    ld de, $c0e8
    ld a, $0e
    ld [de], a
    ld de, $c0e9
    ld a, $06
    ld [de], a
    ld de, $c0ea
    ld a, $15
    ld [de], a
    ld de, $c0eb
    ld a, $09
    ld [de], a
    ld de, $c0ec
    ld a, $0a
    ld [de], a
    ld de, $c0ed
    ld a, $0f
    ld [de], a
    ld de, $c0ee
    ld a, $08
    ld [de], a
    ld de, $c0ef
    ld a, $1f
    ld [de], a
    ld de, $c0f0
    ld a, $01
    ld [de], a
    ld de, $c0f1
    ld a, $01
    ld [de], a
    ld de, $c0f2
    ld a, $01
    ld [de], a
    ld de, $c0f3
    ld a, $01
    ld [de], a
    ld de, $c0f4
    ld a, $01
    ld [de], a
    ld de, $c0f5
    ld a, $01
    ld [de], a
    ld de, $c0f6
    ld a, $01
    ld [de], a
    ld de, $c0f7
    ld a, $01
    ld [de], a
    ld de, $c0f8
    ld a, $01
    ld [de], a
    ld de, $c0f9
    ld a, $01
    ld [de], a
    ld de, $c0fa
    ld a, $01
    ld [de], a
    ld de, $c0fb
    ld a, $01
    ld [de], a
    ld de, $c0fc
    ld a, $01
    ld [de], a
    ld de, $c0fd
    ld a, $01
    ld [de], a
    ld de, $c0fe
    ld a, $01
    ld [de], a
    ld de, $c0ff
    ld a, $01
    ld [de], a
    ld de, $c100
    ld a, $01
    ld [de], a
    ld de, $c101
    ld a, $01
    ld [de], a
    ld de, $c102
    ld a, $01
    ld [de], a
    ld de, $c103
    ld a, $01
    ld [de], a
    ld de, $c104
    ld a, $01
    ld [de], a
    ld de, $c105
    ld a, $01
    ld [de], a
    ld de, $c106
    ld a, $01
    ld [de], a
    ld de, $c107
    ld a, $01
    ld [de], a
    ld de, $c108
    ld a, $01
    ld [de], a
    ld de, $c109
    ld a, $01
    ld [de], a
    ld de, $c10a
    ld a, $01
    ld [de], a
    ld de, $c10b
    ld a, $01
    ld [de], a
    ld de, $c10c
    ld a, $01
    ld [de], a
    ld de, $c10d
    ld a, $01
    ld [de], a
    ld de, $c10e
    ld a, $01
    ld [de], a
    ld de, $c10f
    ld a, $01
    ld [de], a
    ld de, $c110
    ld a, $01
    ld [de], a
    ld de, $c111
    ld a, $01
    ld [de], a
    ld de, $c112
    ld a, $01
    ld [de], a
    ld de, $c113
    ld a, $01
    ld [de], a
    ld de, $c114
    ld a, $01
    ld [de], a
    ld de, $c115
    ld a, $01
    ld [de], a
    ld de, $c116
    ld a, $01
    ld [de], a
    ld de, $c117
    ld a, $01
    ld [de], a
    ld de, $c118
    ld a, $1c
    ld [de], a
    ld de, $c119
    ld a, $1c
    ld [de], a
    ld de, $c11a
    ld a, $1c
    ld [de], a
    ld de, $c11b
    ld a, $1c
    ld [de], a
    ld de, $c11c
    ld a, $1c
    ld [de], a
    ld de, $c11d
    ld a, $1c
    ld [de], a
    ld de, $c11e
    ld a, $1c
    ld [de], a
    ld de, $c11f
    ld a, $1c
    ld [de], a
    ld de, $c120
    ld a, $1c
    ld [de], a
    ld de, $c121
    ld a, $1c
    ld [de], a
    ld de, $c122
    ld a, $1c
    ld [de], a
    ld de, $c123
    ld a, $1c
    ld [de], a
    ld de, $c124
    ld a, $1c
    ld [de], a
    ld de, $c125
    ld a, $1c
    ld [de], a
    ld de, $c126
    ld a, $1c
    ld [de], a
    ld de, $c127
    ld a, $1c
    ld [de], a
    ld de, $c128
    ld a, $1c
    ld [de], a
    ld de, $c129
    ld a, $1c
    ld [de], a
    ld de, $c12a
    ld a, $1c
    ld [de], a
    ld de, $c12b
    ld a, $01
    ld [de], a
    ld de, $c12c
    ld a, $01
    ld [de], a
    ld de, $c12d
    ld a, $01
    ld [de], a
    ld de, $c12e
    ld a, $01
    ld [de], a
    ld de, $c12f
    ld a, $01
    ld [de], a
    ld de, $c130
    ld a, $01
    ld [de], a
    ld de, $c131
    ld a, $01
    ld [de], a
    ld de, $c132
    ld a, $01
    ld [de], a
    ld de, $c133
    ld a, $01
    ld [de], a
    ld de, $c134
    ld a, $01
    ld [de], a
    ld de, $c135
    ld a, $01
    ld [de], a
    ld de, $c136
    ld a, $01
    ld [de], a
    ld de, $c137
    ld a, $01
    ld [de], a
    ld de, $c138
    ld a, $01
    ld [de], a
    ld de, $c139
    ld a, $01
    ld [de], a
    ld de, $c13a
    ld a, $01
    ld [de], a
    ld de, $c13b
    ld a, $01
    ld [de], a
    ld de, $c13c
    ld a, $01
    ld [de], a
    ld de, $c13d
    ld a, $01
    ld [de], a
    ld de, $c13e
    ld a, $01
    ld [de], a
    ld de, $c13f
    ld a, $01
    ld [de], a
    ld de, $c140
    ld a, $02
    ld [de], a
    ld de, $c141
    ld a, $01
    ld [de], a
    ld de, $c142
    ld a, $03
    ld [de], a
    ld de, $c143
    ld a, $01
    ld [de], a
    ld de, $c144
    ld a, $04
    ld [de], a
    ld de, $c145
    ld a, $01
    ld [de], a
    ld de, $c146
    ld a, $05
    ld [de], a
    ld de, $c147
    ld a, $01
    ld [de], a
    ld de, $c148
    ld a, $06
    ld [de], a
    ld de, $c149
    ld a, $01
    ld [de], a
    ld de, $c14a
    ld a, $07
    ld [de], a
    ld de, $c14b
    ld a, $01
    ld [de], a
    ld de, $c14c
    ld a, $08
    ld [de], a
    ld de, $c14d
    ld a, $01
    ld [de], a
    ld de, $c14e
    ld a, $09
    ld [de], a
    ld de, $c14f
    ld a, $01
    ld [de], a
    ld de, $c150
    ld a, $0a
    ld [de], a
    ld de, $c151
    ld a, $01
    ld [de], a
    ld de, $c152
    ld a, $0b
    ld [de], a
    ld de, $c153
    ld a, $01
    ld [de], a
    ld de, $c154
    ld a, $01
    ld [de], a
    ld de, $c155
    ld a, $01
    ld [de], a
    ld de, $c156
    ld a, $01
    ld [de], a
    ld de, $c157
    ld a, $01
    ld [de], a
    ld de, $c158
    ld a, $01
    ld [de], a
    ld de, $c159
    ld a, $01
    ld [de], a
    ld de, $c15a
    ld a, $01
    ld [de], a
    ld de, $c15b
    ld a, $01
    ld [de], a
    ld de, $c15c
    ld a, $01
    ld [de], a
    ld de, $c15d
    ld a, $01
    ld [de], a
    ld de, $c15e
    ld a, $01
    ld [de], a
    ld de, $c15f
    ld a, $01
    ld [de], a
    ld de, $c160
    ld a, $01
    ld [de], a
    ld de, $c161
    ld a, $01
    ld [de], a
    ld de, $c162
    ld a, $01
    ld [de], a
    ld de, $c163
    ld a, $01
    ld [de], a
    ld de, $c164
    ld a, $01
    ld [de], a
    ld de, $c165
    ld a, $01
    ld [de], a
    ld de, $c166
    ld a, $01
    ld [de], a
    ld de, $c167
    ld a, $01
    ld [de], a
    ld de, $c168
    ld a, $0c
    ld [de], a
    ld de, $c169
    ld a, $01
    ld [de], a
    ld de, $c16a
    ld a, $0d
    ld [de], a
    ld de, $c16b
    ld a, $01
    ld [de], a
    ld de, $c16c
    ld a, $0e
    ld [de], a
    ld de, $c16d
    ld a, $01
    ld [de], a
    ld de, $c16e
    ld a, $0f
    ld [de], a
    ld de, $c16f
    ld a, $01
    ld [de], a
    ld de, $c170
    ld a, $10
    ld [de], a
    ld de, $c171
    ld a, $01
    ld [de], a
    ld de, $c172
    ld a, $11
    ld [de], a
    ld de, $c173
    ld a, $01
    ld [de], a
    ld de, $c174
    ld a, $12
    ld [de], a
    ld de, $c175
    ld a, $01
    ld [de], a
    ld de, $c176
    ld a, $13
    ld [de], a
    ld de, $c177
    ld a, $01
    ld [de], a
    ld de, $c178
    ld a, $14
    ld [de], a
    ld de, $c179
    ld a, $01
    ld [de], a
    ld de, $c17a
    ld a, $15
    ld [de], a
    ld de, $c17b
    ld a, $01
    ld [de], a
    ld de, $c17c
    ld a, $01
    ld [de], a
    ld de, $c17d
    ld a, $01
    ld [de], a
    ld de, $c17e
    ld a, $01
    ld [de], a
    ld de, $c17f
    ld a, $01
    ld [de], a
    ld de, $c180
    ld a, $01
    ld [de], a
    ld de, $c181
    ld a, $01
    ld [de], a
    ld de, $c182
    ld a, $01
    ld [de], a
    ld de, $c183
    ld a, $01
    ld [de], a
    ld de, $c184
    ld a, $01
    ld [de], a
    ld de, $c185
    ld a, $01
    ld [de], a
    ld de, $c186
    ld a, $01
    ld [de], a
    ld de, $c187
    ld a, $01
    ld [de], a
    ld de, $c188
    ld a, $01
    ld [de], a
    ld de, $c189
    ld a, $01
    ld [de], a
    ld de, $c18a
    ld a, $01
    ld [de], a
    ld de, $c18b
    ld a, $01
    ld [de], a
    ld de, $c18c
    ld a, $01
    ld [de], a
    ld de, $c18d
    ld a, $01
    ld [de], a
    ld de, $c18e
    ld a, $01
    ld [de], a
    ld de, $c18f
    ld a, $01
    ld [de], a
    ld de, $c190
    ld a, $16
    ld [de], a
    ld de, $c191
    ld a, $01
    ld [de], a
    ld de, $c192
    ld a, $17
    ld [de], a
    ld de, $c193
    ld a, $01
    ld [de], a
    ld de, $c194
    ld a, $18
    ld [de], a
    ld de, $c195
    ld a, $01
    ld [de], a
    ld de, $c196
    ld a, $19
    ld [de], a
    ld de, $c197
    ld a, $01
    ld [de], a
    ld de, $c198
    ld a, $1a
    ld [de], a
    ld de, $c199
    ld a, $01
    ld [de], a
    ld de, $c19a
    ld a, $1b
    ld [de], a
    ld de, $c19b
    ld a, $01
    ld [de], a
    ld de, $c19c
    ld a, $1c
    ld [de], a
    ld de, $c19d
    ld a, $01
    ld [de], a
    ld de, $c19e
    ld a, $1d
    ld [de], a
    ld de, $c19f
    ld a, $01
    ld [de], a
    ld de, $c1a0
    ld a, $1e
    ld [de], a
    ld de, $c1a1
    ld a, $01
    ld [de], a
    ld de, $c1a2
    ld a, $1f
    ld [de], a
    ld de, $c1a3
    ld a, $01
    ld [de], a
    ld de, $c1a4
    ld a, $01
    ld [de], a
    ld de, $c1a5
    ld a, $01
    ld [de], a
    ld de, $c1a6
    ld a, $01
    ld [de], a
    ld de, $c1a7
    ld a, $01
    ld [de], a
    ld de, $c1a8
    ld a, $01
    ld [de], a
    ld de, $c1a9
    ld a, $01
    ld [de], a
    ld de, $c1aa
    ld a, $01
    ld [de], a
    ld de, $c1ab
    ld a, $01
    ld [de], a
    ld de, $c1ac
    ld a, $01
    ld [de], a
    ld de, $c1ad
    ld a, $01
    ld [de], a
    ld de, $c1ae
    ld a, $01
    ld [de], a
    ld de, $c1af
    ld a, $01
    ld [de], a
    ld de, $c1b0
    ld a, $01
    ld [de], a
    ld de, $c1b1
    ld a, $01
    ld [de], a
    ld de, $c1b2
    ld a, $01
    ld [de], a
    ld de, $c1b3
    ld a, $01
    ld [de], a
    ld de, $c1b4
    ld a, $01
    ld [de], a
    ld de, $c1b5
    ld a, $01
    ld [de], a
    ld de, $c1b6
    ld a, $01
    ld [de], a
    ld de, $c1b7
    ld a, $01
    ld [de], a
    ld de, $c1b8
    ld a, $20
    ld [de], a
    ld de, $c1b9
    ld a, $01
    ld [de], a
    ld de, $c1ba
    ld a, $21
    ld [de], a
    ld de, $c1bb
    ld a, $01
    ld [de], a
    ld de, $c1bc
    ld a, $22
    ld [de], a
    ld de, $c1bd
    ld a, $01
    ld [de], a
    ld de, $c1be
    ld a, $23
    ld [de], a
    ld de, $c1bf
    ld a, $01
    ld [de], a
    ld de, $c1c0
    ld a, $24
    ld [de], a
    ld de, $c1c1
    ld a, $01
    ld [de], a
    ld de, $c1c2
    ld a, $25
    ld [de], a
    ld de, $c1c3
    ld a, $01
    ld [de], a
    ld de, $c1c4
    ld a, $26
    ld [de], a
    ld de, $c1c5
    ld a, $01
    ld [de], a
    ld de, $c1c6
    ld a, $27
    ld [de], a
    ld de, $c1c7
    ld a, $01
    ld [de], a
    ld de, $c1c8
    ld a, $28
    ld [de], a
    ld de, $c1c9
    ld a, $01
    ld [de], a
    ld de, $c1ca
    ld a, $29
    ld [de], a
    ld de, $c1cb
    ld a, $01
    ld [de], a
    ld de, $c1cc
    ld a, $01
    ld [de], a
    ld de, $c1cd
    ld a, $01
    ld [de], a
    ld de, $c1ce
    ld a, $01
    ld [de], a
    ld de, $c1cf
    ld a, $01
    ld [de], a
    ld de, $c1d0
    ld a, $01
    ld [de], a
    ld de, $c1d1
    ld a, $01
    ld [de], a
    ld de, $c1d2
    ld a, $01
    ld [de], a
    ld de, $c1d3
    ld a, $01
    ld [de], a
    ld de, $c1d4
    ld a, $01
    ld [de], a
    ld de, $c1d5
    ld a, $01
    ld [de], a
    ld de, $c1d6
    ld a, $01
    ld [de], a
    ld de, $c1d7
    ld a, $01
    ld [de], a
    ld de, $c1d8
    ld a, $01
    ld [de], a
    ld de, $c1d9
    ld a, $01
    ld [de], a
    ld de, $c1da
    ld a, $01
    ld [de], a
    ld de, $c1db
    ld a, $01
    ld [de], a
    ld de, $c1dc
    ld a, $01
    ld [de], a
    ld de, $c1dd
    ld a, $01
    ld [de], a
    ld de, $c1de
    ld a, $01
    ld [de], a
    ld de, $c1df
    ld a, $01
    ld [de], a
    ld de, $c1e0
    ld a, $01
    ld [de], a
    ld de, $c1e1
    ld a, $01
    ld [de], a
    ld de, $c1e2
    ld a, $01
    ld [de], a
    ld de, $c1e3
    ld a, $01
    ld [de], a
    ld de, $c1e4
    ld a, $01
    ld [de], a
    ld de, $c1e5
    ld a, $01
    ld [de], a
    ld de, $c1e6
    ld a, $01
    ld [de], a
    ld de, $c1e7
    ld a, $01
    ld [de], a
    ld de, $c1e8
    ld a, $01
    ld [de], a
    ld de, $c1e9
    ld a, $01
    ld [de], a
    ld de, $c1ea
    ld a, $01
    ld [de], a
    ld de, $c1eb
    ld a, $01
    ld [de], a
    ld de, $c1ec
    ld a, $01
    ld [de], a
    ld de, $c1ed
    ld a, $01
    ld [de], a
    ld de, $c1ee
    ld a, $01
    ld [de], a
    ld de, $c1ef
    ld a, $01
    ld [de], a
    ld de, $c1f0
    ld a, $2a
    ld [de], a
    ld de, $c1f1
    ld a, $01
    ld [de], a
    ld de, $c1f2
    ld a, $2b
    ld [de], a
    ld de, $c1f3
    ld a, $01
    ld [de], a
    ld de, $c1f4
    ld a, $01
    ld [de], a
    ld de, $c1f5
    ld a, $01
    ld [de], a
    ld de, $c1f6
    ld a, $01
    ld [de], a
    ld de, $c1f7
    ld a, $01
    ld [de], a
    ld de, $c1f8
    ld a, $01
    ld [de], a
    ld de, $c1f9
    ld a, $01
    ld [de], a
    ld de, $c1fa
    ld a, $01
    ld [de], a
    ld de, $c1fb
    ld a, $01
    ld [de], a
    ld de, $c1fc
    ld a, $01
    ld [de], a
    ld de, $c1fd
    ld a, $01
    ld [de], a
    ld de, $c1fe
    ld a, $01
    ld [de], a
    ld de, $c1ff
    ld a, $01
    ld [de], a
    ld de, $c200
    ld a, $01
    ld [de], a
    ld de, $c201
    ld a, $01
    ld [de], a
    ld de, $c202
    ld a, $01
    ld [de], a
    ld de, $c203
    ld a, $01
    ld [de], a
    ld de, $c204
    ld a, $01
    ld [de], a
    ld de, $c205
    ld a, $01
    ld [de], a
    ld de, $c206
    ld a, $01
    ld [de], a
    ld de, $c207
    ld a, $01
    ld [de], a
    ld de, $c208
    ld a, $ff
    ld [de], a
    ld de, $c209
    ld a, $ff
    ld [de], a
    ld de, $c20a
    ld a, $ff
    ld [de], a
    ld de, $c20b
    ld a, $ff
    ld [de], a
    ld de, $c20c
    ld a, $ff
    ld [de], a
    ld de, $c20d
    ld a, $ff
    ld [de], a
    ld de, $c20e
    ld a, $ff
    ld [de], a
    ld de, $c20f
    ld a, $ff
    ld [de], a
    ld de, $c210
    ld a, $ff
    ld [de], a
    ld de, $c211
    ld a, $ff
    ld [de], a
    ld de, $c212
    ld a, $ff
    ld [de], a
    ld de, $c213
    ld a, $ff
    ld [de], a
    ld de, $c214
    ld a, $ff
    ld [de], a
    ld de, $c215
    ld a, $ff
    ld [de], a
    ld de, $c216
    ld a, $ff
    ld [de], a
    ld de, $c217
    ld a, $ff
    ld [de], a
    ld de, $c218
    ld a, $e7
    ld [de], a
    ld de, $c219
    ld a, $e7
    ld [de], a
    ld de, $c21a
    ld a, $c3
    ld [de], a
    ld de, $c21b
    ld a, $c3
    ld [de], a
    ld de, $c21c
    ld a, $99
    ld [de], a
    ld de, $c21d
    ld a, $99
    ld [de], a
    ld de, $c21e
    ld a, $3c
    ld [de], a
    ld de, $c21f
    ld a, $3c
    ld [de], a
    ld de, $c220
    ld a, $3c
    ld [de], a
    ld de, $c221
    ld a, $3c
    ld [de], a
    ld de, $c222
    ld a, $00
    ld [de], a
    ld de, $c223
    ld a, $00
    ld [de], a
    ld de, $c224
    ld a, $3c
    ld [de], a
    ld de, $c225
    ld a, $3c
    ld [de], a
    ld de, $c226
    ld a, $3c
    ld [de], a
    ld de, $c227
    ld a, $3c
    ld [de], a
    ld de, $c228
    ld a, $03
    ld [de], a
    ld de, $c229
    ld a, $03
    ld [de], a
    ld de, $c22a
    ld a, $3d
    ld [de], a
    ld de, $c22b
    ld a, $3d
    ld [de], a
    ld de, $c22c
    ld a, $3c
    ld [de], a
    ld de, $c22d
    ld a, $3c
    ld [de], a
    ld de, $c22e
    ld a, $3c
    ld [de], a
    ld de, $c22f
    ld a, $3c
    ld [de], a
    ld de, $c230
    ld a, $01
    ld [de], a
    ld de, $c231
    ld a, $01
    ld [de], a
    ld de, $c232
    ld a, $3c
    ld [de], a
    ld de, $c233
    ld a, $3c
    ld [de], a
    ld de, $c234
    ld a, $3c
    ld [de], a
    ld de, $c235
    ld a, $3c
    ld [de], a
    ld de, $c236
    ld a, $01
    ld [de], a
    ld de, $c237
    ld a, $01
    ld [de], a
    ld de, $c238
    ld a, $81
    ld [de], a
    ld de, $c239
    ld a, $81
    ld [de], a
    ld de, $c23a
    ld a, $00
    ld [de], a
    ld de, $c23b
    ld a, $00
    ld [de], a
    ld de, $c23c
    ld a, $3c
    ld [de], a
    ld de, $c23d
    ld a, $3c
    ld [de], a
    ld de, $c23e
    ld a, $3f
    ld [de], a
    ld de, $c23f
    ld a, $3f
    ld [de], a
    ld de, $c240
    ld a, $3f
    ld [de], a
    ld de, $c241
    ld a, $3f
    ld [de], a
    ld de, $c242
    ld a, $3c
    ld [de], a
    ld de, $c243
    ld a, $3c
    ld [de], a
    ld de, $c244
    ld a, $00
    ld [de], a
    ld de, $c245
    ld a, $00
    ld [de], a
    ld de, $c246
    ld a, $81
    ld [de], a
    ld de, $c247
    ld a, $81
    ld [de], a
    ld de, $c248
    ld a, $01
    ld [de], a
    ld de, $c249
    ld a, $01
    ld [de], a
    ld de, $c24a
    ld a, $00
    ld [de], a
    ld de, $c24b
    ld a, $00
    ld [de], a
    ld de, $c24c
    ld a, $3c
    ld [de], a
    ld de, $c24d
    ld a, $3c
    ld [de], a
    ld de, $c24e
    ld a, $3c
    ld [de], a
    ld de, $c24f
    ld a, $3c
    ld [de], a
    ld de, $c250
    ld a, $3c
    ld [de], a
    ld de, $c251
    ld a, $3c
    ld [de], a
    ld de, $c252
    ld a, $3c
    ld [de], a
    ld de, $c253
    ld a, $3c
    ld [de], a
    ld de, $c254
    ld a, $00
    ld [de], a
    ld de, $c255
    ld a, $00
    ld [de], a
    ld de, $c256
    ld a, $01
    ld [de], a
    ld de, $c257
    ld a, $01
    ld [de], a
    ld de, $c258
    ld a, $00
    ld [de], a
    ld de, $c259
    ld a, $00
    ld [de], a
    ld de, $c25a
    ld a, $00
    ld [de], a
    ld de, $c25b
    ld a, $00
    ld [de], a
    ld de, $c25c
    ld a, $3f
    ld [de], a
    ld de, $c25d
    ld a, $3f
    ld [de], a
    ld de, $c25e
    ld a, $00
    ld [de], a
    ld de, $c25f
    ld a, $00
    ld [de], a
    ld de, $c260
    ld a, $00
    ld [de], a
    ld de, $c261
    ld a, $00
    ld [de], a
    ld de, $c262
    ld a, $3f
    ld [de], a
    ld de, $c263
    ld a, $3f
    ld [de], a
    ld de, $c264
    ld a, $00
    ld [de], a
    ld de, $c265
    ld a, $00
    ld [de], a
    ld de, $c266
    ld a, $00
    ld [de], a
    ld de, $c267
    ld a, $00
    ld [de], a
    ld de, $c268
    ld a, $00
    ld [de], a
    ld de, $c269
    ld a, $00
    ld [de], a
    ld de, $c26a
    ld a, $00
    ld [de], a
    ld de, $c26b
    ld a, $00
    ld [de], a
    ld de, $c26c
    ld a, $3f
    ld [de], a
    ld de, $c26d
    ld a, $3f
    ld [de], a
    ld de, $c26e
    ld a, $3f
    ld [de], a
    ld de, $c26f
    ld a, $3f
    ld [de], a
    ld de, $c270
    ld a, $00
    ld [de], a
    ld de, $c271
    ld a, $00
    ld [de], a
    ld de, $c272
    ld a, $00
    ld [de], a
    ld de, $c273
    ld a, $00
    ld [de], a
    ld de, $c274
    ld a, $3f
    ld [de], a
    ld de, $c275
    ld a, $3f
    ld [de], a
    ld de, $c276
    ld a, $3f
    ld [de], a
    ld de, $c277
    ld a, $3f
    ld [de], a
    ld de, $c278
    ld a, $c0
    ld [de], a
    ld de, $c279
    ld a, $c0
    ld [de], a
    ld de, $c27a
    ld a, $9f
    ld [de], a
    ld de, $c27b
    ld a, $9f
    ld [de], a
    ld de, $c27c
    ld a, $3f
    ld [de], a
    ld de, $c27d
    ld a, $3f
    ld [de], a
    ld de, $c27e
    ld a, $3f
    ld [de], a
    ld de, $c27f
    ld a, $3f
    ld [de], a
    ld de, $c280
    ld a, $38
    ld [de], a
    ld de, $c281
    ld a, $38
    ld [de], a
    ld de, $c282
    ld a, $3c
    ld [de], a
    ld de, $c283
    ld a, $3c
    ld [de], a
    ld de, $c284
    ld a, $9c
    ld [de], a
    ld de, $c285
    ld a, $9c
    ld [de], a
    ld de, $c286
    ld a, $c0
    ld [de], a
    ld de, $c287
    ld a, $c0
    ld [de], a
    ld de, $c288
    ld a, $3c
    ld [de], a
    ld de, $c289
    ld a, $3c
    ld [de], a
    ld de, $c28a
    ld a, $3c
    ld [de], a
    ld de, $c28b
    ld a, $3c
    ld [de], a
    ld de, $c28c
    ld a, $3c
    ld [de], a
    ld de, $c28d
    ld a, $3c
    ld [de], a
    ld de, $c28e
    ld a, $00
    ld [de], a
    ld de, $c28f
    ld a, $00
    ld [de], a
    ld de, $c290
    ld a, $00
    ld [de], a
    ld de, $c291
    ld a, $00
    ld [de], a
    ld de, $c292
    ld a, $3c
    ld [de], a
    ld de, $c293
    ld a, $3c
    ld [de], a
    ld de, $c294
    ld a, $3c
    ld [de], a
    ld de, $c295
    ld a, $3c
    ld [de], a
    ld de, $c296
    ld a, $3c
    ld [de], a
    ld de, $c297
    ld a, $3c
    ld [de], a
    ld de, $c298
    ld a, $00
    ld [de], a
    ld de, $c299
    ld a, $00
    ld [de], a
    ld de, $c29a
    ld a, $00
    ld [de], a
    ld de, $c29b
    ld a, $00
    ld [de], a
    ld de, $c29c
    ld a, $e7
    ld [de], a
    ld de, $c29d
    ld a, $e7
    ld [de], a
    ld de, $c29e
    ld a, $e7
    ld [de], a
    ld de, $c29f
    ld a, $e7
    ld [de], a
    ld de, $c2a0
    ld a, $e7
    ld [de], a
    ld de, $c2a1
    ld a, $e7
    ld [de], a
    ld de, $c2a2
    ld a, $e7
    ld [de], a
    ld de, $c2a3
    ld a, $e7
    ld [de], a
    ld de, $c2a4
    ld a, $00
    ld [de], a
    ld de, $c2a5
    ld a, $00
    ld [de], a
    ld de, $c2a6
    ld a, $00
    ld [de], a
    ld de, $c2a7
    ld a, $00
    ld [de], a
    ld de, $c2a8
    ld a, $f0
    ld [de], a
    ld de, $c2a9
    ld a, $f0
    ld [de], a
    ld de, $c2aa
    ld a, $fc
    ld [de], a
    ld de, $c2ab
    ld a, $fc
    ld [de], a
    ld de, $c2ac
    ld a, $fc
    ld [de], a
    ld de, $c2ad
    ld a, $fc
    ld [de], a
    ld de, $c2ae
    ld a, $fc
    ld [de], a
    ld de, $c2af
    ld a, $fc
    ld [de], a
    ld de, $c2b0
    ld a, $fc
    ld [de], a
    ld de, $c2b1
    ld a, $fc
    ld [de], a
    ld de, $c2b2
    ld a, $3c
    ld [de], a
    ld de, $c2b3
    ld a, $3c
    ld [de], a
    ld de, $c2b4
    ld a, $3c
    ld [de], a
    ld de, $c2b5
    ld a, $3c
    ld [de], a
    ld de, $c2b6
    ld a, $81
    ld [de], a
    ld de, $c2b7
    ld a, $81
    ld [de], a
    ld de, $c2b8
    ld a, $3c
    ld [de], a
    ld de, $c2b9
    ld a, $3c
    ld [de], a
    ld de, $c2ba
    ld a, $39
    ld [de], a
    ld de, $c2bb
    ld a, $39
    ld [de], a
    ld de, $c2bc
    ld a, $33
    ld [de], a
    ld de, $c2bd
    ld a, $33
    ld [de], a
    ld de, $c2be
    ld a, $07
    ld [de], a
    ld de, $c2bf
    ld a, $07
    ld [de], a
    ld de, $c2c0
    ld a, $07
    ld [de], a
    ld de, $c2c1
    ld a, $07
    ld [de], a
    ld de, $c2c2
    ld a, $23
    ld [de], a
    ld de, $c2c3
    ld a, $23
    ld [de], a
    ld de, $c2c4
    ld a, $31
    ld [de], a
    ld de, $c2c5
    ld a, $31
    ld [de], a
    ld de, $c2c6
    ld a, $38
    ld [de], a
    ld de, $c2c7
    ld a, $38
    ld [de], a
    ld de, $c2c8
    ld a, $3f
    ld [de], a
    ld de, $c2c9
    ld a, $3f
    ld [de], a
    ld de, $c2ca
    ld a, $3f
    ld [de], a
    ld de, $c2cb
    ld a, $3f
    ld [de], a
    ld de, $c2cc
    ld a, $3f
    ld [de], a
    ld de, $c2cd
    ld a, $3f
    ld [de], a
    ld de, $c2ce
    ld a, $3f
    ld [de], a
    ld de, $c2cf
    ld a, $3f
    ld [de], a
    ld de, $c2d0
    ld a, $3f
    ld [de], a
    ld de, $c2d1
    ld a, $3f
    ld [de], a
    ld de, $c2d2
    ld a, $3f
    ld [de], a
    ld de, $c2d3
    ld a, $3f
    ld [de], a
    ld de, $c2d4
    ld a, $3f
    ld [de], a
    ld de, $c2d5
    ld a, $3f
    ld [de], a
    ld de, $c2d6
    ld a, $01
    ld [de], a
    ld de, $c2d7
    ld a, $01
    ld [de], a
    ld de, $c2d8
    ld a, $3c
    ld [de], a
    ld de, $c2d9
    ld a, $3c
    ld [de], a
    ld de, $c2da
    ld a, $18
    ld [de], a
    ld de, $c2db
    ld a, $18
    ld [de], a
    ld de, $c2dc
    ld a, $18
    ld [de], a
    ld de, $c2dd
    ld a, $18
    ld [de], a
    ld de, $c2de
    ld a, $00
    ld [de], a
    ld de, $c2df
    ld a, $00
    ld [de], a
    ld de, $c2e0
    ld a, $24
    ld [de], a
    ld de, $c2e1
    ld a, $24
    ld [de], a
    ld de, $c2e2
    ld a, $3c
    ld [de], a
    ld de, $c2e3
    ld a, $3c
    ld [de], a
    ld de, $c2e4
    ld a, $3c
    ld [de], a
    ld de, $c2e5
    ld a, $3c
    ld [de], a
    ld de, $c2e6
    ld a, $3c
    ld [de], a
    ld de, $c2e7
    ld a, $3c
    ld [de], a
    ld de, $c2e8
    ld a, $3c
    ld [de], a
    ld de, $c2e9
    ld a, $3c
    ld [de], a
    ld de, $c2ea
    ld a, $1c
    ld [de], a
    ld de, $c2eb
    ld a, $1c
    ld [de], a
    ld de, $c2ec
    ld a, $0c
    ld [de], a
    ld de, $c2ed
    ld a, $0c
    ld [de], a
    ld de, $c2ee
    ld a, $04
    ld [de], a
    ld de, $c2ef
    ld a, $04
    ld [de], a
    ld de, $c2f0
    ld a, $20
    ld [de], a
    ld de, $c2f1
    ld a, $20
    ld [de], a
    ld de, $c2f2
    ld a, $30
    ld [de], a
    ld de, $c2f3
    ld a, $30
    ld [de], a
    ld de, $c2f4
    ld a, $38
    ld [de], a
    ld de, $c2f5
    ld a, $38
    ld [de], a
    ld de, $c2f6
    ld a, $38
    ld [de], a
    ld de, $c2f7
    ld a, $38
    ld [de], a
    ld de, $c2f8
    ld a, $81
    ld [de], a
    ld de, $c2f9
    ld a, $81
    ld [de], a
    ld de, $c2fa
    ld a, $3c
    ld [de], a
    ld de, $c2fb
    ld a, $3c
    ld [de], a
    ld de, $c2fc
    ld a, $3c
    ld [de], a
    ld de, $c2fd
    ld a, $3c
    ld [de], a
    ld de, $c2fe
    ld a, $3c
    ld [de], a
    ld de, $c2ff
    ld a, $3c
    ld [de], a
    ld de, $c300
    ld a, $3c
    ld [de], a
    ld de, $c301
    ld a, $3c
    ld [de], a
    ld de, $c302
    ld a, $3c
    ld [de], a
    ld de, $c303
    ld a, $3c
    ld [de], a
    ld de, $c304
    ld a, $3c
    ld [de], a
    ld de, $c305
    ld a, $3c
    ld [de], a
    ld de, $c306
    ld a, $81
    ld [de], a
    ld de, $c307
    ld a, $81
    ld [de], a
    ld de, $c308
    ld a, $01
    ld [de], a
    ld de, $c309
    ld a, $01
    ld [de], a
    ld de, $c30a
    ld a, $00
    ld [de], a
    ld de, $c30b
    ld a, $00
    ld [de], a
    ld de, $c30c
    ld a, $3c
    ld [de], a
    ld de, $c30d
    ld a, $3c
    ld [de], a
    ld de, $c30e
    ld a, $3c
    ld [de], a
    ld de, $c30f
    ld a, $3c
    ld [de], a
    ld de, $c310
    ld a, $00
    ld [de], a
    ld de, $c311
    ld a, $00
    ld [de], a
    ld de, $c312
    ld a, $01
    ld [de], a
    ld de, $c313
    ld a, $01
    ld [de], a
    ld de, $c314
    ld a, $3f
    ld [de], a
    ld de, $c315
    ld a, $3f
    ld [de], a
    ld de, $c316
    ld a, $3f
    ld [de], a
    ld de, $c317
    ld a, $3f
    ld [de], a
    ld de, $c318
    ld a, $81
    ld [de], a
    ld de, $c319
    ld a, $81
    ld [de], a
    ld de, $c31a
    ld a, $3c
    ld [de], a
    ld de, $c31b
    ld a, $3c
    ld [de], a
    ld de, $c31c
    ld a, $3c
    ld [de], a
    ld de, $c31d
    ld a, $3c
    ld [de], a
    ld de, $c31e
    ld a, $3c
    ld [de], a
    ld de, $c31f
    ld a, $3c
    ld [de], a
    ld de, $c320
    ld a, $3c
    ld [de], a
    ld de, $c321
    ld a, $3c
    ld [de], a
    ld de, $c322
    ld a, $30
    ld [de], a
    ld de, $c323
    ld a, $30
    ld [de], a
    ld de, $c324
    ld a, $39
    ld [de], a
    ld de, $c325
    ld a, $39
    ld [de], a
    ld de, $c326
    ld a, $82
    ld [de], a
    ld de, $c327
    ld a, $82
    ld [de], a
    ld de, $c328
    ld a, $01
    ld [de], a
    ld de, $c329
    ld a, $01
    ld [de], a
    ld de, $c32a
    ld a, $3c
    ld [de], a
    ld de, $c32b
    ld a, $3c
    ld [de], a
    ld de, $c32c
    ld a, $3c
    ld [de], a
    ld de, $c32d
    ld a, $3c
    ld [de], a
    ld de, $c32e
    ld a, $38
    ld [de], a
    ld de, $c32f
    ld a, $38
    ld [de], a
    ld de, $c330
    ld a, $03
    ld [de], a
    ld de, $c331
    ld a, $03
    ld [de], a
    ld de, $c332
    ld a, $23
    ld [de], a
    ld de, $c333
    ld a, $23
    ld [de], a
    ld de, $c334
    ld a, $39
    ld [de], a
    ld de, $c335
    ld a, $39
    ld [de], a
    ld de, $c336
    ld a, $3c
    ld [de], a
    ld de, $c337
    ld a, $3c
    ld [de], a
    ld de, $c338
    ld a, $81
    ld [de], a
    ld de, $c339
    ld a, $81
    ld [de], a
    ld de, $c33a
    ld a, $3c
    ld [de], a
    ld de, $c33b
    ld a, $3c
    ld [de], a
    ld de, $c33c
    ld a, $3f
    ld [de], a
    ld de, $c33d
    ld a, $3f
    ld [de], a
    ld de, $c33e
    ld a, $3f
    ld [de], a
    ld de, $c33f
    ld a, $3f
    ld [de], a
    ld de, $c340
    ld a, $81
    ld [de], a
    ld de, $c341
    ld a, $81
    ld [de], a
    ld de, $c342
    ld a, $fc
    ld [de], a
    ld de, $c343
    ld a, $fc
    ld [de], a
    ld de, $c344
    ld a, $3c
    ld [de], a
    ld de, $c345
    ld a, $3c
    ld [de], a
    ld de, $c346
    ld a, $81
    ld [de], a
    ld de, $c347
    ld a, $81
    ld [de], a
    ld de, $c348
    ld a, $00
    ld [de], a
    ld de, $c349
    ld a, $00
    ld [de], a
    ld de, $c34a
    ld a, $00
    ld [de], a
    ld de, $c34b
    ld a, $00
    ld [de], a
    ld de, $c34c
    ld a, $e7
    ld [de], a
    ld de, $c34d
    ld a, $e7
    ld [de], a
    ld de, $c34e
    ld a, $e7
    ld [de], a
    ld de, $c34f
    ld a, $e7
    ld [de], a
    ld de, $c350
    ld a, $e7
    ld [de], a
    ld de, $c351
    ld a, $e7
    ld [de], a
    ld de, $c352
    ld a, $e7
    ld [de], a
    ld de, $c353
    ld a, $e7
    ld [de], a
    ld de, $c354
    ld a, $e7
    ld [de], a
    ld de, $c355
    ld a, $e7
    ld [de], a
    ld de, $c356
    ld a, $e7
    ld [de], a
    ld de, $c357
    ld a, $e7
    ld [de], a
    ld de, $c358
    ld a, $3c
    ld [de], a
    ld de, $c359
    ld a, $3c
    ld [de], a
    ld de, $c35a
    ld a, $3c
    ld [de], a
    ld de, $c35b
    ld a, $3c
    ld [de], a
    ld de, $c35c
    ld a, $3c
    ld [de], a
    ld de, $c35d
    ld a, $3c
    ld [de], a
    ld de, $c35e
    ld a, $3c
    ld [de], a
    ld de, $c35f
    ld a, $3c
    ld [de], a
    ld de, $c360
    ld a, $3c
    ld [de], a
    ld de, $c361
    ld a, $3c
    ld [de], a
    ld de, $c362
    ld a, $3c
    ld [de], a
    ld de, $c363
    ld a, $3c
    ld [de], a
    ld de, $c364
    ld a, $3c
    ld [de], a
    ld de, $c365
    ld a, $3c
    ld [de], a
    ld de, $c366
    ld a, $81
    ld [de], a
    ld de, $c367
    ld a, $81
    ld [de], a
    ld de, $c368
    ld a, $3c
    ld [de], a
    ld de, $c369
    ld a, $3c
    ld [de], a
    ld de, $c36a
    ld a, $3c
    ld [de], a
    ld de, $c36b
    ld a, $3c
    ld [de], a
    ld de, $c36c
    ld a, $3c
    ld [de], a
    ld de, $c36d
    ld a, $3c
    ld [de], a
    ld de, $c36e
    ld a, $3c
    ld [de], a
    ld de, $c36f
    ld a, $3c
    ld [de], a
    ld de, $c370
    ld a, $3c
    ld [de], a
    ld de, $c371
    ld a, $3c
    ld [de], a
    ld de, $c372
    ld a, $99
    ld [de], a
    ld de, $c373
    ld a, $99
    ld [de], a
    ld de, $c374
    ld a, $c3
    ld [de], a
    ld de, $c375
    ld a, $c3
    ld [de], a
    ld de, $c376
    ld a, $e7
    ld [de], a
    ld de, $c377
    ld a, $e7
    ld [de], a
    ld de, $c378
    ld a, $3c
    ld [de], a
    ld de, $c379
    ld a, $3c
    ld [de], a
    ld de, $c37a
    ld a, $3c
    ld [de], a
    ld de, $c37b
    ld a, $3c
    ld [de], a
    ld de, $c37c
    ld a, $3c
    ld [de], a
    ld de, $c37d
    ld a, $3c
    ld [de], a
    ld de, $c37e
    ld a, $3c
    ld [de], a
    ld de, $c37f
    ld a, $3c
    ld [de], a
    ld de, $c380
    ld a, $24
    ld [de], a
    ld de, $c381
    ld a, $24
    ld [de], a
    ld de, $c382
    ld a, $00
    ld [de], a
    ld de, $c383
    ld a, $00
    ld [de], a
    ld de, $c384
    ld a, $18
    ld [de], a
    ld de, $c385
    ld a, $18
    ld [de], a
    ld de, $c386
    ld a, $3c
    ld [de], a
    ld de, $c387
    ld a, $3c
    ld [de], a
    ld de, $c388
    ld a, $3c
    ld [de], a
    ld de, $c389
    ld a, $3c
    ld [de], a
    ld de, $c38a
    ld a, $18
    ld [de], a
    ld de, $c38b
    ld a, $18
    ld [de], a
    ld de, $c38c
    ld a, $99
    ld [de], a
    ld de, $c38d
    ld a, $99
    ld [de], a
    ld de, $c38e
    ld a, $c3
    ld [de], a
    ld de, $c38f
    ld a, $c3
    ld [de], a
    ld de, $c390
    ld a, $c3
    ld [de], a
    ld de, $c391
    ld a, $c3
    ld [de], a
    ld de, $c392
    ld a, $99
    ld [de], a
    ld de, $c393
    ld a, $99
    ld [de], a
    ld de, $c394
    ld a, $18
    ld [de], a
    ld de, $c395
    ld a, $18
    ld [de], a
    ld de, $c396
    ld a, $3c
    ld [de], a
    ld de, $c397
    ld a, $3c
    ld [de], a
    ld de, $c398
    ld a, $3c
    ld [de], a
    ld de, $c399
    ld a, $3c
    ld [de], a
    ld de, $c39a
    ld a, $3c
    ld [de], a
    ld de, $c39b
    ld a, $3c
    ld [de], a
    ld de, $c39c
    ld a, $18
    ld [de], a
    ld de, $c39d
    ld a, $18
    ld [de], a
    ld de, $c39e
    ld a, $81
    ld [de], a
    ld de, $c39f
    ld a, $81
    ld [de], a
    ld de, $c3a0
    ld a, $c3
    ld [de], a
    ld de, $c3a1
    ld a, $c3
    ld [de], a
    ld de, $c3a2
    ld a, $e7
    ld [de], a
    ld de, $c3a3
    ld a, $e7
    ld [de], a
    ld de, $c3a4
    ld a, $e7
    ld [de], a
    ld de, $c3a5
    ld a, $e7
    ld [de], a
    ld de, $c3a6
    ld a, $e7
    ld [de], a
    ld de, $c3a7
    ld a, $e7
    ld [de], a
    ld de, $c3a8
    ld a, $00
    ld [de], a
    ld de, $c3a9
    ld a, $00
    ld [de], a
    ld de, $c3aa
    ld a, $fc
    ld [de], a
    ld de, $c3ab
    ld a, $fc
    ld [de], a
    ld de, $c3ac
    ld a, $f9
    ld [de], a
    ld de, $c3ad
    ld a, $f9
    ld [de], a
    ld de, $c3ae
    ld a, $e3
    ld [de], a
    ld de, $c3af
    ld a, $e3
    ld [de], a
    ld de, $c3b0
    ld a, $c7
    ld [de], a
    ld de, $c3b1
    ld a, $c7
    ld [de], a
    ld de, $c3b2
    ld a, $9f
    ld [de], a
    ld de, $c3b3
    ld a, $9f
    ld [de], a
    ld de, $c3b4
    ld a, $3f
    ld [de], a
    ld de, $c3b5
    ld a, $3f
    ld [de], a
    ld de, $c3b6
    ld a, $00
    ld [de], a
    ld de, $c3b7
    ld a, $00
    ld [de], a
    ld de, $c3b8
    ld a, $ff
    ld [de], a
    ld de, $c3b9
    ld a, $ff
    ld [de], a
    ld de, $c3ba
    ld a, $ff
    ld [de], a
    ld de, $c3bb
    ld a, $ff
    ld [de], a
    ld de, $c3bc
    ld a, $ff
    ld [de], a
    ld de, $c3bd
    ld a, $ff
    ld [de], a
    ld de, $c3be
    ld a, $ff
    ld [de], a
    ld de, $c3bf
    ld a, $ff
    ld [de], a
    ld de, $c3c0
    ld a, $ff
    ld [de], a
    ld de, $c3c1
    ld a, $ff
    ld [de], a
    ld de, $c3c2
    ld a, $ff
    ld [de], a
    ld de, $c3c3
    ld a, $ff
    ld [de], a
    ld de, $c3c4
    ld a, $ff
    ld [de], a
    ld de, $c3c5
    ld a, $ff
    ld [de], a
    ld de, $c3c6
    ld a, $00
    ld [de], a
    ld de, $c3c7
    ld a, $00
    ld [de], a
    ld de, $c3c8
    ld a, $ff
    ld [de], a
    ld de, $c3c9
    ld a, $ff
    ld [de], a
    ld de, $c3ca
    ld a, $ff
    ld [de], a
    ld de, $c3cb
    ld a, $ff
    ld [de], a
    ld de, $c3cc
    ld a, $ff
    ld [de], a
    ld de, $c3cd
    ld a, $ff
    ld [de], a
    ld de, $c3ce
    ld a, $ff
    ld [de], a
    ld de, $c3cf
    ld a, $ff
    ld [de], a
    ld de, $c3d0
    ld a, $ff
    ld [de], a
    ld de, $c3d1
    ld a, $ff
    ld [de], a
    ld de, $c3d2
    ld a, $ff
    ld [de], a
    ld de, $c3d3
    ld a, $ff
    ld [de], a
    ld de, $c3d4
    ld a, $3f
    ld [de], a
    ld de, $c3d5
    ld a, $3f
    ld [de], a
    ld de, $c3d6
    ld a, $3f
    ld [de], a
    ld de, $c3d7
    ld a, $3f
    ld [de], a
    ld de, $c3d8
    ld a, $ff
    ld [de], a
    ld de, $c3d9
    ld a, $ff
    ld [de], a
    ld de, $c3da
    ld a, $ff
    ld [de], a
    ld de, $c3db
    ld a, $ff
    ld [de], a
    ld de, $c3dc
    ld a, $ff
    ld [de], a
    ld de, $c3dd
    ld a, $ff
    ld [de], a
    ld de, $c3de
    ld a, $81
    ld [de], a
    ld de, $c3df
    ld a, $81
    ld [de], a
    ld de, $c3e0
    ld a, $81
    ld [de], a
    ld de, $c3e1
    ld a, $81
    ld [de], a
    ld de, $c3e2
    ld a, $ff
    ld [de], a
    ld de, $c3e3
    ld a, $ff
    ld [de], a
    ld de, $c3e4
    ld a, $ff
    ld [de], a
    ld de, $c3e5
    ld a, $ff
    ld [de], a
    ld de, $c3e6
    ld a, $ff
    ld [de], a
    ld de, $c3e7
    ld a, $ff
    ld [de], a
    ld de, $c3e8
    ld a, $e7
    ld [de], a
    ld de, $c3e9
    ld a, $e7
    ld [de], a
    ld de, $c3ea
    ld a, $e7
    ld [de], a
    ld de, $c3eb
    ld a, $e7
    ld [de], a
    ld de, $c3ec
    ld a, $e7
    ld [de], a
    ld de, $c3ed
    ld a, $e7
    ld [de], a
    ld de, $c3ee
    ld a, $e7
    ld [de], a
    ld de, $c3ef
    ld a, $e7
    ld [de], a
    ld de, $c3f0
    ld a, $e7
    ld [de], a
    ld de, $c3f1
    ld a, $e7
    ld [de], a
    ld de, $c3f2
    ld a, $ff
    ld [de], a
    ld de, $c3f3
    ld a, $ff
    ld [de], a
    ld de, $c3f4
    ld a, $e7
    ld [de], a
    ld de, $c3f5
    ld a, $e7
    ld [de], a
    ld de, $c3f6
    ld a, $e7
    ld [de], a
    ld de, $c3f7
    ld a, $e7
    ld [de], a
    ld de, $c3f8
    ld a, $c3
    ld [de], a
    ld de, $c3f9
    ld a, $c3
    ld [de], a
    ld de, $c3fa
    ld a, $b9
    ld [de], a
    ld de, $c3fb
    ld a, $b9
    ld [de], a
    ld de, $c3fc
    ld a, $3c
    ld [de], a
    ld de, $c3fd
    ld a, $3c
    ld [de], a
    ld de, $c3fe
    ld a, $3c
    ld [de], a
    ld de, $c3ff
    ld a, $3c
    ld [de], a
    ld de, $c400
    ld a, $3c
    ld [de], a
    ld de, $c401
    ld a, $3c
    ld [de], a
    ld de, $c402
    ld a, $3c
    ld [de], a
    ld de, $c403
    ld a, $3c
    ld [de], a
    ld de, $c404
    ld a, $9d
    ld [de], a
    ld de, $c405
    ld a, $9d
    ld [de], a
    ld de, $c406
    ld a, $c3
    ld [de], a
    ld de, $c407
    ld a, $c3
    ld [de], a
    ld de, $c408
    ld a, $e7
    ld [de], a
    ld de, $c409
    ld a, $e7
    ld [de], a
    ld de, $c40a
    ld a, $c7
    ld [de], a
    ld de, $c40b
    ld a, $c7
    ld [de], a
    ld de, $c40c
    ld a, $e7
    ld [de], a
    ld de, $c40d
    ld a, $e7
    ld [de], a
    ld de, $c40e
    ld a, $e7
    ld [de], a
    ld de, $c40f
    ld a, $e7
    ld [de], a
    ld de, $c410
    ld a, $e7
    ld [de], a
    ld de, $c411
    ld a, $e7
    ld [de], a
    ld de, $c412
    ld a, $e7
    ld [de], a
    ld de, $c413
    ld a, $e7
    ld [de], a
    ld de, $c414
    ld a, $e7
    ld [de], a
    ld de, $c415
    ld a, $e7
    ld [de], a
    ld de, $c416
    ld a, $81
    ld [de], a
    ld de, $c417
    ld a, $81
    ld [de], a
    ld de, $c418
    ld a, $81
    ld [de], a
    ld de, $c419
    ld a, $81
    ld [de], a
    ld de, $c41a
    ld a, $3c
    ld [de], a
    ld de, $c41b
    ld a, $3c
    ld [de], a
    ld de, $c41c
    ld a, $fc
    ld [de], a
    ld de, $c41d
    ld a, $fc
    ld [de], a
    ld de, $c41e
    ld a, $f9
    ld [de], a
    ld de, $c41f
    ld a, $f9
    ld [de], a
    ld de, $c420
    ld a, $f3
    ld [de], a
    ld de, $c421
    ld a, $f3
    ld [de], a
    ld de, $c422
    ld a, $c7
    ld [de], a
    ld de, $c423
    ld a, $c7
    ld [de], a
    ld de, $c424
    ld a, $8f
    ld [de], a
    ld de, $c425
    ld a, $8f
    ld [de], a
    ld de, $c426
    ld a, $00
    ld [de], a
    ld de, $c427
    ld a, $00
    ld [de], a
    ld de, $c428
    ld a, $c0
    ld [de], a
    ld de, $c429
    ld a, $c0
    ld [de], a
    ld de, $c42a
    ld a, $f9
    ld [de], a
    ld de, $c42b
    ld a, $f9
    ld [de], a
    ld de, $c42c
    ld a, $f3
    ld [de], a
    ld de, $c42d
    ld a, $f3
    ld [de], a
    ld de, $c42e
    ld a, $e7
    ld [de], a
    ld de, $c42f
    ld a, $e7
    ld [de], a
    ld de, $c430
    ld a, $c1
    ld [de], a
    ld de, $c431
    ld a, $c1
    ld [de], a
    ld de, $c432
    ld a, $fc
    ld [de], a
    ld de, $c433
    ld a, $fc
    ld [de], a
    ld de, $c434
    ld a, $3c
    ld [de], a
    ld de, $c435
    ld a, $3c
    ld [de], a
    ld de, $c436
    ld a, $81
    ld [de], a
    ld de, $c437
    ld a, $81
    ld [de], a
    ld de, $c438
    ld a, $f3
    ld [de], a
    ld de, $c439
    ld a, $f3
    ld [de], a
    ld de, $c43a
    ld a, $e3
    ld [de], a
    ld de, $c43b
    ld a, $e3
    ld [de], a
    ld de, $c43c
    ld a, $c3
    ld [de], a
    ld de, $c43d
    ld a, $c3
    ld [de], a
    ld de, $c43e
    ld a, $93
    ld [de], a
    ld de, $c43f
    ld a, $93
    ld [de], a
    ld de, $c440
    ld a, $33
    ld [de], a
    ld de, $c441
    ld a, $33
    ld [de], a
    ld de, $c442
    ld a, $00
    ld [de], a
    ld de, $c443
    ld a, $00
    ld [de], a
    ld de, $c444
    ld a, $f3
    ld [de], a
    ld de, $c445
    ld a, $f3
    ld [de], a
    ld de, $c446
    ld a, $f3
    ld [de], a
    ld de, $c447
    ld a, $f3
    ld [de], a
    ld de, $c448
    ld a, $03
    ld [de], a
    ld de, $c449
    ld a, $03
    ld [de], a
    ld de, $c44a
    ld a, $7f
    ld [de], a
    ld de, $c44b
    ld a, $7f
    ld [de], a
    ld de, $c44c
    ld a, $01
    ld [de], a
    ld de, $c44d
    ld a, $01
    ld [de], a
    ld de, $c44e
    ld a, $fc
    ld [de], a
    ld de, $c44f
    ld a, $fc
    ld [de], a
    ld de, $c450
    ld a, $fc
    ld [de], a
    ld de, $c451
    ld a, $fc
    ld [de], a
    ld de, $c452
    ld a, $fc
    ld [de], a
    ld de, $c453
    ld a, $fc
    ld [de], a
    ld de, $c454
    ld a, $3c
    ld [de], a
    ld de, $c455
    ld a, $3c
    ld [de], a
    ld de, $c456
    ld a, $81
    ld [de], a
    ld de, $c457
    ld a, $81
    ld [de], a
    ld de, $c458
    ld a, $e0
    ld [de], a
    ld de, $c459
    ld a, $e0
    ld [de], a
    ld de, $c45a
    ld a, $cf
    ld [de], a
    ld de, $c45b
    ld a, $cf
    ld [de], a
    ld de, $c45c
    ld a, $9f
    ld [de], a
    ld de, $c45d
    ld a, $9f
    ld [de], a
    ld de, $c45e
    ld a, $3f
    ld [de], a
    ld de, $c45f
    ld a, $3f
    ld [de], a
    ld de, $c460
    ld a, $00
    ld [de], a
    ld de, $c461
    ld a, $00
    ld [de], a
    ld de, $c462
    ld a, $3c
    ld [de], a
    ld de, $c463
    ld a, $3c
    ld [de], a
    ld de, $c464
    ld a, $3c
    ld [de], a
    ld de, $c465
    ld a, $3c
    ld [de], a
    ld de, $c466
    ld a, $81
    ld [de], a
    ld de, $c467
    ld a, $81
    ld [de], a
    ld de, $c468
    ld a, $00
    ld [de], a
    ld de, $c469
    ld a, $00
    ld [de], a
    ld de, $c46a
    ld a, $3c
    ld [de], a
    ld de, $c46b
    ld a, $3c
    ld [de], a
    ld de, $c46c
    ld a, $f9
    ld [de], a
    ld de, $c46d
    ld a, $f9
    ld [de], a
    ld de, $c46e
    ld a, $f3
    ld [de], a
    ld de, $c46f
    ld a, $f3
    ld [de], a
    ld de, $c470
    ld a, $e7
    ld [de], a
    ld de, $c471
    ld a, $e7
    ld [de], a
    ld de, $c472
    ld a, $e7
    ld [de], a
    ld de, $c473
    ld a, $e7
    ld [de], a
    ld de, $c474
    ld a, $e7
    ld [de], a
    ld de, $c475
    ld a, $e7
    ld [de], a
    ld de, $c476
    ld a, $e7
    ld [de], a
    ld de, $c477
    ld a, $e7
    ld [de], a
    ld de, $c478
    ld a, $c3
    ld [de], a
    ld de, $c479
    ld a, $c3
    ld [de], a
    ld de, $c47a
    ld a, $bd
    ld [de], a
    ld de, $c47b
    ld a, $bd
    ld [de], a
    ld de, $c47c
    ld a, $99
    ld [de], a
    ld de, $c47d
    ld a, $99
    ld [de], a
    ld de, $c47e
    ld a, $e3
    ld [de], a
    ld de, $c47f
    ld a, $e3
    ld [de], a
    ld de, $c480
    ld a, $c7
    ld [de], a
    ld de, $c481
    ld a, $c7
    ld [de], a
    ld de, $c482
    ld a, $99
    ld [de], a
    ld de, $c483
    ld a, $99
    ld [de], a
    ld de, $c484
    ld a, $bd
    ld [de], a
    ld de, $c485
    ld a, $bd
    ld [de], a
    ld de, $c486
    ld a, $c3
    ld [de], a
    ld de, $c487
    ld a, $c3
    ld [de], a
    ld de, $c488
    ld a, $81
    ld [de], a
    ld de, $c489
    ld a, $81
    ld [de], a
    ld de, $c48a
    ld a, $3c
    ld [de], a
    ld de, $c48b
    ld a, $3c
    ld [de], a
    ld de, $c48c
    ld a, $3c
    ld [de], a
    ld de, $c48d
    ld a, $3c
    ld [de], a
    ld de, $c48e
    ld a, $00
    ld [de], a
    ld de, $c48f
    ld a, $00
    ld [de], a
    ld de, $c490
    ld a, $fc
    ld [de], a
    ld de, $c491
    ld a, $fc
    ld [de], a
    ld de, $c492
    ld a, $fc
    ld [de], a
    ld de, $c493
    ld a, $fc
    ld [de], a
    ld de, $c494
    ld a, $39
    ld [de], a
    ld de, $c495
    ld a, $39
    ld [de], a
    ld de, $c496
    ld a, $83
    ld [de], a
    ld de, $c497
    ld a, $83
    ld [de], a
    ld de, $c498
    ld a, $ff
    ld [de], a
    ld de, $c499
    ld a, $ff
    ld [de], a
    ld de, $c49a
    ld a, $99
    ld [de], a
    ld de, $c49b
    ld a, $99
    ld [de], a
    ld de, $c49c
    ld a, $c3
    ld [de], a
    ld de, $c49d
    ld a, $c3
    ld [de], a
    ld de, $c49e
    ld a, $e7
    ld [de], a
    ld de, $c49f
    ld a, $e7
    ld [de], a
    ld de, $c4a0
    ld a, $c3
    ld [de], a
    ld de, $c4a1
    ld a, $c3
    ld [de], a
    ld de, $c4a2
    ld a, $99
    ld [de], a
    ld de, $c4a3
    ld a, $99
    ld [de], a
    ld de, $c4a4
    ld a, $3c
    ld [de], a
    ld de, $c4a5
    ld a, $3c
    ld [de], a
    ld de, $c4a6
    ld a, $ff
    ld [de], a
    ld de, $c4a7
    ld a, $ff
    ld [de], a
    ld de, $c4a8
    ld a, $fe
    ld [de], a
    ld de, $c4a9
    ld a, $fe
    ld [de], a
    ld de, $c4aa
    ld a, $fc
    ld [de], a
    ld de, $c4ab
    ld a, $fc
    ld [de], a
    ld de, $c4ac
    ld a, $fc
    ld [de], a
    ld de, $c4ad
    ld a, $fc
    ld [de], a
    ld de, $c4ae
    ld a, $f9
    ld [de], a
    ld de, $c4af
    ld a, $f9
    ld [de], a
    ld de, $c4b0
    ld a, $39
    ld [de], a
    ld de, $c4b1
    ld a, $39
    ld [de], a
    ld de, $c4b2
    ld a, $13
    ld [de], a
    ld de, $c4b3
    ld a, $13
    ld [de], a
    ld de, $c4b4
    ld a, $83
    ld [de], a
    ld de, $c4b5
    ld a, $83
    ld [de], a
    ld de, $c4b6
    ld a, $cf
    ld [de], a
    ld de, $c4b7
    ld a, $cf
    ld [de], a
    ld de, $c4b8
    ld a, $e7
    ld [de], a
    ld de, $c4b9
    ld a, $00
    ld [de], a
    ld de, $c4ba
    ld a, $81
    ld [de], a
    ld de, $c4bb
    ld a, $00
    ld [de], a
    ld de, $c4bc
    ld a, $81
    ld [de], a
    ld de, $c4bd
    ld a, $00
    ld [de], a
    ld de, $c4be
    ld a, $00
    ld [de], a
    ld de, $c4bf
    ld a, $00
    ld [de], a
    ld de, $c4c0
    ld a, $00
    ld [de], a
    ld de, $c4c1
    ld a, $00
    ld [de], a
    ld de, $c4c2
    ld a, $81
    ld [de], a
    ld de, $c4c3
    ld a, $00
    ld [de], a
    ld de, $c4c4
    ld a, $81
    ld [de], a
    ld de, $c4c5
    ld a, $00
    ld [de], a
    ld de, $c4c6
    ld a, $e7
    ld [de], a
    ld de, $c4c7
    ld a, $00
    ld [de], a
    ld de, $c4c8
    ld a, $01
    ld [de], a
    ld de, $c4c9
    ld a, $01
    ld [de], a
    ld de, $c4ca
    ld a, $1f
    ld [de], a
    ld de, $c4cb
    ld a, $01
    ld [de], a
    ld de, $c4cc
    ld a, $01
    ld [de], a
    ld de, $c4cd
    ld a, $01
    ld [de], a
    ld de, $c4ce
    ld a, $01
    ld [de], a
    ld de, $c4cf
    ld a, $01
    ld [de], a
    ld de, $c4d0
    ld a, $01
    ld [de], a
    ld de, $c4d1
    ld a, $01
    ld [de], a
    ld de, $c4d2
    ld a, $01
    ld [de], a
    ld de, $c4d3
    ld a, $01
    ld [de], a
    ld de, $c4d4
    ld a, $01
    ld [de], a
    ld de, $c4d5
    ld a, $01
    ld [de], a
    ld de, $c4d6
    ld a, $01
    ld [de], a
    ld de, $c4d7
    ld a, $01
    ld [de], a
    ld de, $c4d8
    ld a, $01
    ld [de], a
    ld de, $c4d9
    ld a, $01
    ld [de], a
    ld de, $c4da
    ld a, $01
    ld [de], a
    ld de, $c4db
    ld a, $01
    ld [de], a
    ld de, $c4dc
    ld a, $01
    ld [de], a
    ld de, $c4dd
    ld a, $01
    ld [de], a
    ld de, $c4de
    ld a, $01
    ld [de], a
    ld de, $c4df
    ld a, $01
    ld [de], a
    ld de, $c4e0
    ld a, $01
    ld [de], a
    ld de, $c4e1
    ld a, $01
    ld [de], a
    ld de, $c4e2
    ld a, $01
    ld [de], a
    ld de, $c4e3
    ld a, $01
    ld [de], a
    ld de, $c4e4
    ld a, $01
    ld [de], a
    ld de, $c4e5
    ld a, $01
    ld [de], a
    ld de, $c4e6
    ld a, $01
    ld [de], a
    ld de, $c4e7
    ld a, $01
    ld [de], a
    ld de, $c4e8
    ld a, $01
    ld [de], a
    ld de, $c4e9
    ld a, $01
    ld [de], a
    ld de, $c4ea
    ld a, $01
    ld [de], a
    ld de, $c4eb
    ld a, $1f
    ld [de], a
    ld de, $c4ec
    ld a, $01
    ld [de], a
    ld de, $c4ed
    ld a, $01
    ld [de], a
    ld de, $c4ee
    ld a, $01
    ld [de], a
    ld de, $c4ef
    ld a, $01
    ld [de], a
    ld de, $c4f0
    ld a, $01
    ld [de], a
    ld de, $c4f1
    ld a, $01
    ld [de], a
    ld de, $c4f2
    ld a, $01
    ld [de], a
    ld de, $c4f3
    ld a, $01
    ld [de], a
    ld de, $c4f4
    ld a, $01
    ld [de], a
    ld de, $c4f5
    ld a, $01
    ld [de], a
    ld de, $c4f6
    ld a, $01
    ld [de], a
    ld de, $c4f7
    ld a, $01
    ld [de], a
    ld de, $c4f8
    ld a, $1f
    ld [de], a
    ld de, $c4f9
    ld a, $01
    ld [de], a
    ld de, $c4fa
    ld a, $01
    ld [de], a
    ld de, $c4fb
    ld a, $01
    ld [de], a
    ld de, $c4fc
    ld a, $01
    ld [de], a
    ld de, $c4fd
    ld a, $01
    ld [de], a
    ld de, $c4fe
    ld a, $01
    ld [de], a
    ld de, $c4ff
    ld a, $01
    ld [de], a
    ld de, $c500
    ld a, $01
    ld [de], a
    ld de, $c501
    ld a, $01
    ld [de], a
    ld de, $c502
    ld a, $01
    ld [de], a
    ld de, $c503
    ld a, $01
    ld [de], a
    ld de, $c504
    ld a, $01
    ld [de], a
    ld de, $c505
    ld a, $01
    ld [de], a
    ld de, $c506
    ld a, $01
    ld [de], a
    ld de, $c507
    ld a, $01
    ld [de], a
    ld de, $c508
    ld a, $01
    ld [de], a
    ld de, $c509
    ld a, $01
    ld [de], a
    ld de, $c50a
    ld a, $01
    ld [de], a
    ld de, $c50b
    ld a, $01
    ld [de], a
    ld de, $c50c
    ld a, $01
    ld [de], a
    ld de, $c50d
    ld a, $01
    ld [de], a
    ld de, $c50e
    ld a, $01
    ld [de], a
    ld de, $c50f
    ld a, $01
    ld [de], a
    ld de, $c510
    ld a, $01
    ld [de], a
    ld de, $c511
    ld a, $01
    ld [de], a
    ld de, $c512
    ld a, $01
    ld [de], a
    ld de, $c513
    ld a, $01
    ld [de], a
    ld de, $c514
    ld a, $01
    ld [de], a
    ld de, $c515
    ld a, $01
    ld [de], a
    ld de, $c516
    ld a, $01
    ld [de], a
    ld de, $c517
    ld a, $01
    ld [de], a
    ld de, $c518
    ld a, $01
    ld [de], a
    ld de, $c519
    ld a, $01
    ld [de], a
    ld de, $c51a
    ld a, $01
    ld [de], a
    ld de, $c51b
    ld a, $01
    ld [de], a
    ld de, $c51c
    ld a, $01
    ld [de], a
    ld de, $c51d
    ld a, $01
    ld [de], a
    ld de, $c51e
    ld a, $01
    ld [de], a
    ld de, $c51f
    ld a, $01
    ld [de], a
    ld de, $c520
    ld a, $01
    ld [de], a
    ld de, $c521
    ld a, $01
    ld [de], a
    ld de, $c522
    ld a, $01
    ld [de], a
    ld de, $c523
    ld a, $01
    ld [de], a
    ld de, $c524
    ld a, $01
    ld [de], a
    ld de, $c525
    ld a, $01
    ld [de], a
    ld de, $c526
    ld a, $01
    ld [de], a
    ld de, $c527
    ld a, $01
    ld [de], a
    ld de, $c528
    ld a, $01
    ld [de], a
    ld de, $c529
    ld a, $01
    ld [de], a
    ld de, $c52a
    ld a, $01
    ld [de], a
    ld de, $c52b
    ld a, $01
    ld [de], a
    ld de, $c52c
    ld a, $01
    ld [de], a
    ld de, $c52d
    ld a, $01
    ld [de], a
    ld de, $c52e
    ld a, $01
    ld [de], a
    ld de, $c52f
    ld a, $01
    ld [de], a
    ld de, $c530
    ld a, $01
    ld [de], a
    ld de, $c531
    ld a, $01
    ld [de], a
    ld de, $c532
    ld a, $01
    ld [de], a
    ld de, $c533
    ld a, $01
    ld [de], a
    ld de, $c534
    ld a, $01
    ld [de], a
    ld de, $c535
    ld a, $01
    ld [de], a
    ld de, $c536
    ld a, $01
    ld [de], a
    ld de, $c537
    ld a, $01
    ld [de], a
    ld de, $c538
    ld a, $01
    ld [de], a
    ld de, $c539
    ld a, $01
    ld [de], a
    ld de, $c53a
    ld a, $01
    ld [de], a
    ld de, $c53b
    ld a, $01
    ld [de], a
    ld de, $c53c
    ld a, $01
    ld [de], a
    ld de, $c53d
    ld a, $01
    ld [de], a
    ld de, $c53e
    ld a, $01
    ld [de], a
    ld de, $c53f
    ld a, $01
    ld [de], a
    ld de, $c540
    ld a, $01
    ld [de], a
    ld de, $c541
    ld a, $01
    ld [de], a
    ld de, $c542
    ld a, $01
    ld [de], a
    ld de, $c543
    ld a, $1a
    ld [de], a
    ld de, $c544
    ld a, $01
    ld [de], a
    ld de, $c545
    ld a, $01
    ld [de], a
    ld de, $c546
    ld a, $01
    ld [de], a
    ld de, $c547
    ld a, $06
    ld [de], a
    ld de, $c548
    ld a, $01
    ld [de], a
    ld de, $c549
    ld a, $01
    ld [de], a
    ld de, $c54a
    ld a, $01
    ld [de], a
    ld de, $c54b
    ld a, $02
    ld [de], a
    ld de, $c54c
    ld a, $01
    ld [de], a
    ld de, $c54d
    ld a, $01
    ld [de], a
    ld de, $c54e
    ld a, $01
    ld [de], a
    ld de, $c54f
    ld a, $09
    ld [de], a
    ld de, $c550
    ld a, $01
    ld [de], a
    ld de, $c551
    ld a, $1f
    ld [de], a
    ld de, $c552
    ld a, $01
    ld [de], a
    ld de, $c553
    ld a, $01
    ld [de], a
    ld de, $c554
    ld a, $01
    ld [de], a
    ld de, $c555
    ld a, $01
    ld [de], a
    ld de, $c556
    ld a, $01
    ld [de], a
    ld de, $c557
    ld a, $01
    ld [de], a
    ld de, $c558
    ld a, $01
    ld [de], a
    ld de, $c559
    ld a, $01
    ld [de], a
    ld de, $c55a
    ld a, $01
    ld [de], a
    ld de, $c55b
    ld a, $01
    ld [de], a
    ld de, $c55c
    ld a, $01
    ld [de], a
    ld de, $c55d
    ld a, $01
    ld [de], a
    ld de, $c55e
    ld a, $01
    ld [de], a
    ld de, $c55f
    ld a, $01
    ld [de], a
    ld de, $c560
    ld a, $01
    ld [de], a
    ld de, $c561
    ld a, $01
    ld [de], a
    ld de, $c562
    ld a, $01
    ld [de], a
    ld de, $c563
    ld a, $01
    ld [de], a
    ld de, $c564
    ld a, $01
    ld [de], a
    ld de, $c565
    ld a, $01
    ld [de], a
    ld de, $c566
    ld a, $01
    ld [de], a
    ld de, $c567
    ld a, $01
    ld [de], a
    ld de, $c568
    ld a, $01
    ld [de], a
    ld de, $c569
    ld a, $01
    ld [de], a
    ld de, $c56a
    ld a, $01
    ld [de], a
    ld de, $c56b
    ld a, $01
    ld [de], a
    ld de, $c56c
    ld a, $01
    ld [de], a
    ld de, $c56d
    ld a, $01
    ld [de], a
    ld de, $c56e
    ld a, $01
    ld [de], a
    ld de, $c56f
    ld a, $01
    ld [de], a
    ld de, $c570
    ld a, $01
    ld [de], a
    ld de, $c571
    ld a, $01
    ld [de], a
    ld de, $c572
    ld a, $01
    ld [de], a
    ld de, $c573
    ld a, $01
    ld [de], a
    ld de, $c574
    ld a, $01
    ld [de], a
    ld de, $c575
    ld a, $01
    ld [de], a
    ld de, $c576
    ld a, $01
    ld [de], a
    ld de, $c577
    ld a, $01
    ld [de], a
    ld de, $c578
    ld a, $01
    ld [de], a
    ld de, $c579
    ld a, $01
    ld [de], a
    ld de, $c57a
    ld a, $01
    ld [de], a
    ld de, $c57b
    ld a, $01
    ld [de], a
    ld de, $c57c
    ld a, $01
    ld [de], a
    ld de, $c57d
    ld a, $01
    ld [de], a
    ld de, $c57e
    ld a, $01
    ld [de], a
    ld de, $c57f
    ld a, $01
    ld [de], a
    ld de, $c580
    ld a, $01
    ld [de], a
    ld de, $c581
    ld a, $01
    ld [de], a
    ld de, $c582
    ld a, $01
    ld [de], a
    ld de, $c583
    ld a, $01
    ld [de], a
    ld de, $c584
    ld a, $01
    ld [de], a
    ld de, $c585
    ld a, $01
    ld [de], a
    ld de, $c586
    ld a, $01
    ld [de], a
    ld de, $c587
    ld a, $01
    ld [de], a
    ld de, $c588
    ld a, $01
    ld [de], a
    ld de, $c589
    ld a, $01
    ld [de], a
    ld de, $c58a
    ld a, $01
    ld [de], a
    ld de, $c58b
    ld a, $01
    ld [de], a
    ld de, $c58c
    ld a, $01
    ld [de], a
    ld de, $c58d
    ld a, $01
    ld [de], a
    ld de, $c58e
    ld a, $01
    ld [de], a
    ld de, $c58f
    ld a, $1f
    ld [de], a
    ld de, $c590
    ld a, $01
    ld [de], a
    ld de, $c591
    ld a, $01
    ld [de], a
    ld de, $c592
    ld a, $01
    ld [de], a
    ld de, $c593
    ld a, $01
    ld [de], a
    ld de, $c594
    ld a, $01
    ld [de], a
    ld de, $c595
    ld a, $01
    ld [de], a
    ld de, $c596
    ld a, $1f
    ld [de], a
    ld de, $c597
    ld a, $01
    ld [de], a
    ld de, $c598
    ld a, $01
    ld [de], a
    ld de, $c599
    ld a, $01
    ld [de], a
    ld de, $c59a
    ld a, $01
    ld [de], a
    ld de, $c59b
    ld a, $01
    ld [de], a
    ld de, $c59c
    ld a, $01
    ld [de], a
    ld de, $c59d
    ld a, $01
    ld [de], a
    ld de, $c59e
    ld a, $01
    ld [de], a
    ld de, $c59f
    ld a, $01
    ld [de], a
    ld de, $c5a0
    ld a, $01
    ld [de], a
    ld de, $c5a1
    ld a, $01
    ld [de], a
    ld de, $c5a2
    ld a, $01
    ld [de], a
    ld de, $c5a3
    ld a, $01
    ld [de], a
    ld de, $c5a4
    ld a, $01
    ld [de], a
    ld de, $c5a5
    ld a, $01
    ld [de], a
    ld de, $c5a6
    ld a, $01
    ld [de], a
    ld de, $c5a7
    ld a, $01
    ld [de], a
    ld de, $c5a8
    ld a, $01
    ld [de], a
    ld de, $c5a9
    ld a, $01
    ld [de], a
    ld de, $c5aa
    ld a, $01
    ld [de], a
    ld de, $c5ab
    ld a, $01
    ld [de], a
    ld de, $c5ac
    ld a, $01
    ld [de], a
    ld de, $c5ad
    ld a, $01
    ld [de], a
    ld de, $c5ae
    ld a, $01
    ld [de], a
    ld de, $c5af
    ld a, $01
    ld [de], a
    ld de, $c5b0
    ld a, $01
    ld [de], a
    ld de, $c5b1
    ld a, $01
    ld [de], a
    ld de, $c5b2
    ld a, $01
    ld [de], a
    ld de, $c5b3
    ld a, $01
    ld [de], a
    ld de, $c5b4
    ld a, $01
    ld [de], a
    ld de, $c5b5
    ld a, $01
    ld [de], a
    ld de, $c5b6
    ld a, $01
    ld [de], a
    ld de, $c5b7
    ld a, $01
    ld [de], a
    ld de, $c5b8
    ld a, $01
    ld [de], a
    ld de, $c5b9
    ld a, $01
    ld [de], a
    ld de, $c5ba
    ld a, $01
    ld [de], a
    ld de, $c5bb
    ld a, $01
    ld [de], a
    ld de, $c5bc
    ld a, $01
    ld [de], a
    ld de, $c5bd
    ld a, $01
    ld [de], a
    ld de, $c5be
    ld a, $01
    ld [de], a
    ld de, $c5bf
    ld a, $01
    ld [de], a
    ld de, $c5c0
    ld a, $01
    ld [de], a
    ld de, $c5c1
    ld a, $01
    ld [de], a
    ld de, $c5c2
    ld a, $01
    ld [de], a
    ld de, $c5c3
    ld a, $01
    ld [de], a
    ld de, $c5c4
    ld a, $01
    ld [de], a
    ld de, $c5c5
    ld a, $01
    ld [de], a
    ld de, $c5c6
    ld a, $1f
    ld [de], a
    ld de, $c5c7
    ld a, $01
    ld [de], a
    ld de, $c5c8
    ld a, $01
    ld [de], a
    ld de, $c5c9
    ld a, $01
    ld [de], a
    ld de, $c5ca
    ld a, $01
    ld [de], a
    ld de, $c5cb
    ld a, $01
    ld [de], a
    ld de, $c5cc
    ld a, $01
    ld [de], a
    ld de, $c5cd
    ld a, $01
    ld [de], a
    ld de, $c5ce
    ld a, $01
    ld [de], a
    ld de, $c5cf
    ld a, $1f
    ld [de], a
    ld de, $c5d0
    ld a, $01
    ld [de], a
    ld de, $c5d1
    ld a, $01
    ld [de], a
    ld de, $c5d2
    ld a, $01
    ld [de], a
    ld de, $c5d3
    ld a, $01
    ld [de], a
    ld de, $c5d4
    ld a, $01
    ld [de], a
    ld de, $c5d5
    ld a, $01
    ld [de], a
    ld de, $c5d6
    ld a, $01
    ld [de], a
    ld de, $c5d7
    ld a, $01
    ld [de], a
    ld de, $c5d8
    ld a, $01
    ld [de], a
    ld de, $c5d9
    ld a, $01
    ld [de], a
    ld de, $c5da
    ld a, $01
    ld [de], a
    ld de, $c5db
    ld a, $01
    ld [de], a
    ld de, $c5dc
    ld a, $01
    ld [de], a
    ld de, $c5dd
    ld a, $01
    ld [de], a
    ld de, $c5de
    ld a, $01
    ld [de], a
    ld de, $c5df
    ld a, $01
    ld [de], a
    ld de, $c5e0
    ld a, $01
    ld [de], a
    ld de, $c5e1
    ld a, $01
    ld [de], a
    ld de, $c5e2
    ld a, $01
    ld [de], a
    ld de, $c5e3
    ld a, $01
    ld [de], a
    ld de, $c5e4
    ld a, $01
    ld [de], a
    ld de, $c5e5
    ld a, $01
    ld [de], a
    ld de, $c5e6
    ld a, $01
    ld [de], a
    ld de, $c5e7
    ld a, $01
    ld [de], a
    ld de, $c5e8
    ld a, $01
    ld [de], a
    ld de, $c5e9
    ld a, $01
    ld [de], a
    ld de, $c5ea
    ld a, $1f
    ld [de], a
    ld de, $c5eb
    ld a, $01
    ld [de], a
    ld de, $c5ec
    ld a, $01
    ld [de], a
    ld de, $c5ed
    ld a, $01
    ld [de], a
    ld de, $c5ee
    ld a, $01
    ld [de], a
    ld de, $c5ef
    ld a, $01
    ld [de], a
    ld de, $c5f0
    ld a, $01
    ld [de], a
    ld de, $c5f1
    ld a, $01
    ld [de], a
    ld de, $c5f2
    ld a, $01
    ld [de], a
    ld de, $c5f3
    ld a, $01
    ld [de], a
    ld de, $c5f4
    ld a, $01
    ld [de], a
    ld de, $c5f5
    ld a, $1f
    ld [de], a
    ld de, $c5f6
    ld a, $01
    ld [de], a
    ld de, $c5f7
    ld a, $01
    ld [de], a
    ld de, $c5f8
    ld a, $01
    ld [de], a
    ld de, $c5f9
    ld a, $01
    ld [de], a
    ld de, $c5fa
    ld a, $01
    ld [de], a
    ld de, $c5fb
    ld a, $01
    ld [de], a
    ld de, $c5fc
    ld a, $01
    ld [de], a
    ld de, $c5fd
    ld a, $01
    ld [de], a
    ld de, $c5fe
    ld a, $01
    ld [de], a
    ld de, $c5ff
    ld a, $01
    ld [de], a
    ld de, $c600
    ld a, $01
    ld [de], a
    ld de, $c601
    ld a, $01
    ld [de], a
    ld de, $c602
    ld a, $01
    ld [de], a
    ld de, $c603
    ld a, $01
    ld [de], a
    ld de, $c604
    ld a, $01
    ld [de], a
    ld de, $c605
    ld a, $01
    ld [de], a
    ld de, $c606
    ld a, $01
    ld [de], a
    ld de, $c607
    ld a, $01
    ld [de], a
    ld de, $c608
    ld a, $01
    ld [de], a
    ld de, $c609
    ld a, $01
    ld [de], a
    ld de, $c60a
    ld a, $01
    ld [de], a
    ld de, $c60b
    ld a, $01
    ld [de], a
    ld de, $c60c
    ld a, $01
    ld [de], a
    ld de, $c60d
    ld a, $01
    ld [de], a
    ld de, $c60e
    ld a, $01
    ld [de], a
    ld de, $c60f
    ld a, $01
    ld [de], a
    ld de, $c610
    ld a, $01
    ld [de], a
    ld de, $c611
    ld a, $01
    ld [de], a
    ld de, $c612
    ld a, $01
    ld [de], a
    ld de, $c613
    ld a, $01
    ld [de], a
    ld de, $c614
    ld a, $01
    ld [de], a
    ld de, $c615
    ld a, $01
    ld [de], a
    ld de, $c616
    ld a, $01
    ld [de], a
    ld de, $c617
    ld a, $01
    ld [de], a
    ld de, $c618
    ld a, $01
    ld [de], a
    ld de, $c619
    ld a, $01
    ld [de], a
    ld de, $c61a
    ld a, $01
    ld [de], a
    ld de, $c61b
    ld a, $1f
    ld [de], a
    ld de, $c61c
    ld a, $01
    ld [de], a
    ld de, $c61d
    ld a, $01
    ld [de], a
    ld de, $c61e
    ld a, $01
    ld [de], a
    ld de, $c61f
    ld a, $01
    ld [de], a
    ld de, $c620
    ld a, $01
    ld [de], a
    ld de, $c621
    ld a, $01
    ld [de], a
    ld de, $c622
    ld a, $01
    ld [de], a
    ld de, $c623
    ld a, $01
    ld [de], a
    ld de, $c624
    ld a, $01
    ld [de], a
    ld de, $c625
    ld a, $01
    ld [de], a
    ld de, $c626
    ld a, $01
    ld [de], a
    ld de, $c627
    ld a, $01
    ld [de], a
    ld de, $c628
    ld a, $01
    ld [de], a
    ld de, $c629
    ld a, $01
    ld [de], a
    ld de, $c62a
    ld a, $01
    ld [de], a
    ld de, $c62b
    ld a, $01
    ld [de], a
    ld de, $c62c
    ld a, $01
    ld [de], a
    ld de, $c62d
    ld a, $01
    ld [de], a
    ld de, $c62e
    ld a, $01
    ld [de], a
    ld de, $c62f
    ld a, $01
    ld [de], a
    ld de, $c630
    ld a, $01
    ld [de], a
    ld de, $c631
    ld a, $01
    ld [de], a
    ld de, $c632
    ld a, $2a
    ld [de], a
    ld de, $c633
    ld a, $01
    ld [de], a
    ld de, $c634
    ld a, $01
    ld [de], a
    ld de, $c635
    ld a, $01
    ld [de], a
    ld de, $c636
    ld a, $01
    ld [de], a
    ld de, $c637
    ld a, $01
    ld [de], a
    ld de, $c638
    ld a, $01
    ld [de], a
    ld de, $c639
    ld a, $01
    ld [de], a
    ld de, $c63a
    ld a, $01
    ld [de], a
    ld de, $c63b
    ld a, $01
    ld [de], a
    ld de, $c63c
    ld a, $01
    ld [de], a
    ld de, $c63d
    ld a, $01
    ld [de], a
    ld de, $c63e
    ld a, $01
    ld [de], a
    ld de, $c63f
    ld a, $01
    ld [de], a
    ld de, $c640
    ld a, $01
    ld [de], a
    ld de, $c641
    ld a, $01
    ld [de], a
    ld de, $c642
    ld a, $01
    ld [de], a
    ld de, $c643
    ld a, $01
    ld [de], a
    ld de, $c644
    ld a, $01
    ld [de], a
    ld de, $c645
    ld a, $01
    ld [de], a
    ld de, $c646
    ld a, $01
    ld [de], a
    ld de, $c647
    ld a, $01
    ld [de], a
    ld de, $c648
    ld a, $01
    ld [de], a
    ld de, $c649
    ld a, $01
    ld [de], a
    ld de, $c64a
    ld a, $01
    ld [de], a
    ld de, $c64b
    ld a, $01
    ld [de], a
    ld de, $c64c
    ld a, $01
    ld [de], a
    ld de, $c64d
    ld a, $01
    ld [de], a
    ld de, $c64e
    ld a, $01
    ld [de], a
    ld de, $c64f
    ld a, $2a
    ld [de], a
    ld de, $c650
    ld a, $01
    ld [de], a
    ld de, $c651
    ld a, $01
    ld [de], a
    ld de, $c652
    ld a, $01
    ld [de], a
    ld de, $c653
    ld a, $01
    ld [de], a
    ld de, $c654
    ld a, $01
    ld [de], a
    ld de, $c655
    ld a, $01
    ld [de], a
    ld de, $c656
    ld a, $2a
    ld [de], a
    ld de, $c657
    ld a, $01
    ld [de], a
    ld de, $c658
    ld a, $01
    ld [de], a
    ld de, $c659
    ld a, $01
    ld [de], a
    ld de, $c65a
    ld a, $01
    ld [de], a
    ld de, $c65b
    ld a, $01
    ld [de], a
    ld de, $c65c
    ld a, $01
    ld [de], a
    ld de, $c65d
    ld a, $01
    ld [de], a
    ld de, $c65e
    ld a, $01
    ld [de], a
    ld de, $c65f
    ld a, $01
    ld [de], a
    ld de, $c660
    ld a, $01
    ld [de], a
    ld de, $c661
    ld a, $01
    ld [de], a
    ld de, $c662
    ld a, $01
    ld [de], a
    ld de, $c663
    ld a, $01
    ld [de], a
    ld de, $c664
    ld a, $01
    ld [de], a
    ld de, $c665
    ld a, $01
    ld [de], a
    ld de, $c666
    ld a, $01
    ld [de], a
    ld de, $c667
    ld a, $01
    ld [de], a
    ld de, $c668
    ld a, $01
    ld [de], a
    ld de, $c669
    ld a, $01
    ld [de], a
    ld de, $c66a
    ld a, $01
    ld [de], a
    ld de, $c66b
    ld a, $01
    ld [de], a
    ld de, $c66c
    ld a, $01
    ld [de], a
    ld de, $c66d
    ld a, $01
    ld [de], a
    ld de, $c66e
    ld a, $01
    ld [de], a
    ld de, $c66f
    ld a, $01
    ld [de], a
    ld de, $c670
    ld a, $01
    ld [de], a
    ld de, $c671
    ld a, $01
    ld [de], a
    ld de, $c672
    ld a, $01
    ld [de], a
    ld de, $c673
    ld a, $01
    ld [de], a
    ld de, $c674
    ld a, $01
    ld [de], a
    ld de, $c675
    ld a, $01
    ld [de], a
    ld de, $c676
    ld a, $01
    ld [de], a
    ld de, $c677
    ld a, $01
    ld [de], a
    ld de, $c678
    ld a, $01
    ld [de], a
    ld de, $c679
    ld a, $01
    ld [de], a
    ld de, $c67a
    ld a, $2a
    ld [de], a
    ld de, $c67b
    ld a, $01
    ld [de], a
    ld de, $c67c
    ld a, $01
    ld [de], a
    ld de, $c67d
    ld a, $01
    ld [de], a
    ld de, $c67e
    ld a, $01
    ld [de], a
    ld de, $c67f
    ld a, $01
    ld [de], a
    ld de, $c680
    ld a, $2a
    ld [de], a
    ld de, $c681
    ld a, $01
    ld [de], a
    ld de, $c682
    ld a, $01
    ld [de], a
    ld de, $c683
    ld a, $01
    ld [de], a
    ld de, $c684
    ld a, $01
    ld [de], a
    ld de, $c685
    ld a, $01
    ld [de], a
    ld de, $c686
    ld a, $01
    ld [de], a
    ld de, $c687
    ld a, $01
    ld [de], a
    ld de, $c688
    ld a, $2a
    ld [de], a
    ld de, $c689
    ld a, $01
    ld [de], a
    ld de, $c68a
    ld a, $01
    ld [de], a
    ld de, $c68b
    ld a, $01
    ld [de], a
    ld de, $c68c
    ld a, $01
    ld [de], a
    ld de, $c68d
    ld a, $01
    ld [de], a
    ld de, $c68e
    ld a, $01
    ld [de], a
    ld de, $c68f
    ld a, $01
    ld [de], a
    ld de, $c690
    ld a, $01
    ld [de], a
    ld de, $c691
    ld a, $01
    ld [de], a
    ld de, $c692
    ld a, $01
    ld [de], a
    ld de, $c693
    ld a, $01
    ld [de], a
    ld de, $c694
    ld a, $01
    ld [de], a
    ld de, $c695
    ld a, $01
    ld [de], a
    ld de, $c696
    ld a, $01
    ld [de], a
    ld de, $c697
    ld a, $01
    ld [de], a
    ld de, $c698
    ld a, $01
    ld [de], a
    ld de, $c699
    ld a, $01
    ld [de], a
    ld de, $c69a
    ld a, $01
    ld [de], a
    ld de, $c69b
    ld a, $01
    ld [de], a
    ld de, $c69c
    ld a, $01
    ld [de], a
    ld de, $c69d
    ld a, $01
    ld [de], a
    ld de, $c69e
    ld a, $01
    ld [de], a
    ld de, $c69f
    ld a, $01
    ld [de], a
    ld de, $c6a0
    ld a, $01
    ld [de], a
    ld de, $c6a1
    ld a, $01
    ld [de], a
    ld de, $c6a2
    ld a, $01
    ld [de], a
    ld de, $c6a3
    ld a, $01
    ld [de], a
    ld de, $c6a4
    ld a, $01
    ld [de], a
    ld de, $c6a5
    ld a, $01
    ld [de], a
    ld de, $c6a6
    ld a, $01
    ld [de], a
    ld de, $c6a7
    ld a, $01
    ld [de], a
    ld de, $c6a8
    ld a, $01
    ld [de], a
    ld de, $c6a9
    ld a, $01
    ld [de], a
    ld de, $c6aa
    ld a, $01
    ld [de], a
    ld de, $c6ab
    ld a, $01
    ld [de], a
    ld de, $c6ac
    ld a, $01
    ld [de], a
    ld de, $c6ad
    ld a, $01
    ld [de], a
    ld de, $c6ae
    ld a, $01
    ld [de], a
    ld de, $c6af
    ld a, $01
    ld [de], a
    ld de, $c6b0
    ld a, $01
    ld [de], a
    ld de, $c6b1
    ld a, $01
    ld [de], a
    ld de, $c6b2
    ld a, $01
    ld [de], a
    ld de, $c6b3
    ld a, $01
    ld [de], a
    ld de, $c6b4
    ld a, $01
    ld [de], a
    ld de, $c6b5
    ld a, $01
    ld [de], a
    ld de, $c6b6
    ld a, $01
    ld [de], a
    ld de, $c6b7
    ld a, $01
    ld [de], a
    ld de, $c6b8
    ld a, $01
    ld [de], a
    ld de, $c6b9
    ld a, $01
    ld [de], a
    ld de, $c6ba
    ld a, $01
    ld [de], a
    ld de, $c6bb
    ld a, $01
    ld [de], a
    ld de, $c6bc
    ld a, $01
    ld [de], a
    ld de, $c6bd
    ld a, $01
    ld [de], a
    ld de, $c6be
    ld a, $01
    ld [de], a
    ld de, $c6bf
    ld a, $01
    ld [de], a
    ld de, $c6c0
    ld a, $01
    ld [de], a
    ld de, $c6c1
    ld a, $01
    ld [de], a
    ld de, $c6c2
    ld a, $01
    ld [de], a
    ld de, $c6c3
    ld a, $01
    ld [de], a
    ld de, $c6c4
    ld a, $01
    ld [de], a
    ld de, $c6c5
    ld a, $01
    ld [de], a
    ld de, $c6c6
    ld a, $01
    ld [de], a
    ld de, $c6c7
    ld a, $01
    ld [de], a
    ld de, $c6c8
    ld a, $01
    ld [de], a
    ld de, $c6c9
    ld a, $01
    ld [de], a
    ld de, $c6ca
    ld a, $01
    ld [de], a
    ld de, $c6cb
    ld a, $01
    ld [de], a
    ld de, $c6cc
    ld a, $01
    ld [de], a
    ld de, $c6cd
    ld a, $01
    ld [de], a
    ld de, $c6ce
    ld a, $01
    ld [de], a
    ld de, $c6cf
    ld a, $01
    ld [de], a
    ld de, $c6d0
    ld a, $01
    ld [de], a
    ld de, $c6d1
    ld a, $01
    ld [de], a
    ld de, $c6d2
    ld a, $2a
    ld [de], a
    ld de, $c6d3
    ld a, $01
    ld [de], a
    ld de, $c6d4
    ld a, $01
    ld [de], a
    ld de, $c6d5
    ld a, $0f
    ld [de], a
    ld de, $c6d6
    ld a, $01
    ld [de], a
    ld de, $c6d7
    ld a, $10
    ld [de], a
    ld de, $c6d8
    ld a, $01
    ld [de], a
    ld de, $c6d9
    ld a, $01
    ld [de], a
    ld de, $c6da
    ld a, $0f
    ld [de], a
    ld de, $c6db
    ld a, $01
    ld [de], a
    ld de, $c6dc
    ld a, $10
    ld [de], a
    ld de, $c6dd
    ld a, $01
    ld [de], a
    ld de, $c6de
    ld a, $01
    ld [de], a
    ld de, $c6df
    ld a, $0f
    ld [de], a
    ld de, $c6e0
    ld a, $01
    ld [de], a
    ld de, $c6e1
    ld a, $10
    ld [de], a
    ld de, $c6e2
    ld a, $01
    ld [de], a
    ld de, $c6e3
    ld a, $01
    ld [de], a
    ld de, $c6e4
    ld a, $01
    ld [de], a
    ld de, $c6e5
    ld a, $01
    ld [de], a
    ld de, $c6e6
    ld a, $01
    ld [de], a
    ld de, $c6e7
    ld a, $01
    ld [de], a
    ld de, $c6e8
    ld a, $01
    ld [de], a
    ld de, $c6e9
    ld a, $01
    ld [de], a
    ld de, $c6ea
    ld a, $01
    ld [de], a
    ld de, $c6eb
    ld a, $01
    ld [de], a
    ld de, $c6ec
    ld a, $01
    ld [de], a
    ld de, $c6ed
    ld a, $01
    ld [de], a
    ld de, $c6ee
    ld a, $01
    ld [de], a
    ld de, $c6ef
    ld a, $01
    ld [de], a
    ld de, $c6f0
    ld a, $01
    ld [de], a
    ld de, $c6f1
    ld a, $01
    ld [de], a
    ld de, $c6f2
    ld a, $01
    ld [de], a
    ld de, $c6f3
    ld a, $01
    ld [de], a
    ld de, $c6f4
    ld a, $01
    ld [de], a
    ld de, $c6f5
    ld a, $01
    ld [de], a
    ld de, $c6f6
    ld a, $01
    ld [de], a
    ld de, $c6f7
    ld a, $2a
    ld [de], a
    ld de, $c6f8
    ld a, $01
    ld [de], a
    ld de, $c6f9
    ld a, $01
    ld [de], a
    ld de, $c6fa
    ld a, $01
    ld [de], a
    ld de, $c6fb
    ld a, $01
    ld [de], a
    ld de, $c6fc
    ld a, $01
    ld [de], a
    ld de, $c6fd
    ld a, $01
    ld [de], a
    ld de, $c6fe
    ld a, $01
    ld [de], a
    ld de, $c6ff
    ld a, $01
    ld [de], a
    ld de, $c700
    ld a, $01
    ld [de], a
    ld de, $c701
    ld a, $01
    ld [de], a
    ld de, $c702
    ld a, $01
    ld [de], a
    ld de, $c703
    ld a, $01
    ld [de], a
    ld de, $c704
    ld a, $01
    ld [de], a
    ld de, $c705
    ld a, $01
    ld [de], a
    ld de, $c706
    ld a, $01
    ld [de], a
    ld de, $c707
    ld a, $01
    ld [de], a
    ld de, $c708
    ld a, $01
    ld [de], a
    ld de, $c709
    ld a, $01
    ld [de], a
    ld de, $c70a
    ld a, $01
    ld [de], a
    ld de, $c70b
    ld a, $01
    ld [de], a
    ld de, $c70c
    ld a, $01
    ld [de], a
    ld de, $c70d
    ld a, $01
    ld [de], a
    ld de, $c70e
    ld a, $01
    ld [de], a
    ld de, $c70f
    ld a, $01
    ld [de], a
    ld de, $c710
    ld a, $01
    ld [de], a
    ld de, $c711
    ld a, $01
    ld [de], a
    ld de, $c712
    ld a, $01
    ld [de], a
    ld de, $c713
    ld a, $01
    ld [de], a
    ld de, $c714
    ld a, $01
    ld [de], a
    ld de, $c715
    ld a, $01
    ld [de], a
    ld de, $c716
    ld a, $01
    ld [de], a
    ld de, $c717
    ld a, $01
    ld [de], a
    ld de, $c718
    ld a, $2a
    ld [de], a
    ld de, $c719
    ld a, $01
    ld [de], a
    ld de, $c71a
    ld a, $01
    ld [de], a
    ld de, $c71b
    ld a, $01
    ld [de], a
    ld de, $c71c
    ld a, $01
    ld [de], a
    ld de, $c71d
    ld a, $01
    ld [de], a
    ld de, $c71e
    ld a, $01
    ld [de], a
    ld de, $c71f
    ld a, $01
    ld [de], a
    ld de, $c720
    ld a, $01
    ld [de], a
    ld de, $c721
    ld a, $01
    ld [de], a
    ld de, $c722
    ld a, $01
    ld [de], a
    ld de, $c723
    ld a, $01
    ld [de], a
    ld de, $c724
    ld a, $01
    ld [de], a
    ld de, $c725
    ld a, $01
    ld [de], a
    ld de, $c726
    ld a, $01
    ld [de], a
    ld de, $c727
    ld a, $01
    ld [de], a
    ld de, $c728
    ld a, $01
    ld [de], a
    ld de, $c729
    ld a, $01
    ld [de], a
    ld de, $c72a
    ld a, $01
    ld [de], a
    ld de, $c72b
    ld a, $01
    ld [de], a
    ld de, $c72c
    ld a, $01
    ld [de], a
    ld de, $c72d
    ld a, $01
    ld [de], a
    ld de, $c72e
    ld a, $01
    ld [de], a
    ld de, $c72f
    ld a, $01
    ld [de], a
    ld de, $c730
    ld a, $01
    ld [de], a
    ld de, $c731
    ld a, $01
    ld [de], a
    ld de, $c732
    ld a, $01
    ld [de], a
    ld de, $c733
    ld a, $01
    ld [de], a
    ld de, $c734
    ld a, $01
    ld [de], a
    ld de, $c735
    ld a, $01
    ld [de], a
    ld de, $c736
    ld a, $01
    ld [de], a
    ld de, $c737
    ld a, $01
    ld [de], a
    ld de, $c738
    ld a, $01
    ld [de], a
    ld de, $c739
    ld a, $01
    ld [de], a
    ld de, $c73a
    ld a, $01
    ld [de], a
    ld de, $c73b
    ld a, $01
    ld [de], a
    ld de, $c73c
    ld a, $01
    ld [de], a
    ld de, $c73d
    ld a, $01
    ld [de], a
    ld de, $c73e
    ld a, $01
    ld [de], a
    ld de, $c73f
    ld a, $01
    ld [de], a
    ld de, $c740
    ld a, $01
    ld [de], a
    ld de, $c741
    ld a, $01
    ld [de], a
    ld de, $c742
    ld a, $01
    ld [de], a
    ld de, $c743
    ld a, $01
    ld [de], a
    ld de, $c744
    ld a, $01
    ld [de], a
    ld de, $c745
    ld a, $01
    ld [de], a
    ld de, $c746
    ld a, $01
    ld [de], a
    ld de, $c747
    ld a, $01
    ld [de], a
    ld de, $c748
    ld a, $01
    ld [de], a
    ld de, $c749
    ld a, $01
    ld [de], a
    ld de, $c74a
    ld a, $01
    ld [de], a
    ld de, $c74b
    ld a, $01
    ld [de], a
    ld de, $c74c
    ld a, $01
    ld [de], a
    ld de, $c74d
    ld a, $01
    ld [de], a
    ld de, $c74e
    ld a, $2a
    ld [de], a
    ld de, $c74f
    ld a, $01
    ld [de], a
    ld de, $c750
    ld a, $01
    ld [de], a
    ld de, $c751
    ld a, $01
    ld [de], a
    ld de, $c752
    ld a, $01
    ld [de], a
    ld de, $c753
    ld a, $01
    ld [de], a
    ld de, $c754
    ld a, $01
    ld [de], a
    ld de, $c755
    ld a, $01
    ld [de], a
    ld de, $c756
    ld a, $01
    ld [de], a
    ld de, $c757
    ld a, $01
    ld [de], a
    ld de, $c758
    ld a, $01
    ld [de], a
    ld de, $c759
    ld a, $01
    ld [de], a
    ld de, $c75a
    ld a, $01
    ld [de], a
    ld de, $c75b
    ld a, $01
    ld [de], a
    ld de, $c75c
    ld a, $01
    ld [de], a
    ld de, $c75d
    ld a, $2a
    ld [de], a
    ld de, $c75e
    ld a, $01
    ld [de], a
    ld de, $c75f
    ld a, $01
    ld [de], a
    ld de, $c760
    ld a, $01
    ld [de], a
    ld de, $c761
    ld a, $01
    ld [de], a
    ld de, $c762
    ld a, $01
    ld [de], a
    ld de, $c763
    ld a, $01
    ld [de], a
    ld de, $c764
    ld a, $01
    ld [de], a
    ld de, $c765
    ld a, $01
    ld [de], a
    ld de, $c766
    ld a, $01
    ld [de], a
    ld de, $c767
    ld a, $01
    ld [de], a
    ld de, $c768
    ld a, $01
    ld [de], a
    ld de, $c769
    ld a, $01
    ld [de], a
    ld de, $c76a
    ld a, $01
    ld [de], a
    ld de, $c76b
    ld a, $01
    ld [de], a
    ld de, $c76c
    ld a, $01
    ld [de], a
    ld de, $c76d
    ld a, $2a
    ld [de], a
    ld de, $c76e
    ld a, $01
    ld [de], a
    ld de, $c76f
    ld a, $01
    ld [de], a
    ld de, $c770
    ld a, $01
    ld [de], a
    ld de, $c771
    ld a, $01
    ld [de], a
    ld de, $c772
    ld a, $01
    ld [de], a
    ld de, $c773
    ld a, $01
    ld [de], a
    ld de, $c774
    ld a, $01
    ld [de], a
    ld de, $c775
    ld a, $01
    ld [de], a
    ld de, $c776
    ld a, $01
    ld [de], a
    ld de, $c777
    ld a, $01
    ld [de], a
    ld de, $c778
    ld a, $01
    ld [de], a
    ld de, $c779
    ld a, $01
    ld [de], a
    ld de, $c77a
    ld a, $01
    ld [de], a
    ld de, $c77b
    ld a, $01
    ld [de], a
    ld de, $c77c
    ld a, $01
    ld [de], a
    ld de, $c77d
    ld a, $01
    ld [de], a
    ld de, $c77e
    ld a, $01
    ld [de], a
    ld de, $c77f
    ld a, $01
    ld [de], a
    ld de, $c780
    ld a, $01
    ld [de], a
    ld de, $c781
    ld a, $01
    ld [de], a
    ld de, $c782
    ld a, $01
    ld [de], a
    ld de, $c783
    ld a, $01
    ld [de], a
    ld de, $c784
    ld a, $01
    ld [de], a
    ld de, $c785
    ld a, $01
    ld [de], a
    ld de, $c786
    ld a, $01
    ld [de], a
    ld de, $c787
    ld a, $01
    ld [de], a
    ld de, $c788
    ld a, $01
    ld [de], a
    ld de, $c789
    ld a, $01
    ld [de], a
    ld de, $c78a
    ld a, $01
    ld [de], a
    ld de, $c78b
    ld a, $01
    ld [de], a
    ld de, $c78c
    ld a, $01
    ld [de], a
