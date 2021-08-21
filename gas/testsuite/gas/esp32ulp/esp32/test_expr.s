start:
    // binary
    move r3, 1+2          # Expr_Op_Type_Add
    move r3, 3-5          # Expr_Op_Type_Sub
    move r3, 2*3          # Expr_Op_Type_Mult
    move r3, 4/2          # Expr_Op_Type_Div
    move r3, 4 % 3        # Expr_Op_Type_Mod
    move r3, 0xff << 2    # Expr_Op_Type_Lshift
    move r3, 0xff >> 1    # Expr_Op_Type_Rshift
    move r3, 0xe7 & 0xf0  # Expr_Op_Type_BAND
    move r3, 0xe0 | 0x4   # Expr_Op_Type_BOR
    move r3, 10 ^ 2       # Expr_Op_Type_BXOR

    // unary
    move r3, -5           # Expr_Op_Type_NEG
    move r3, ~5           # Expr_Op_Type_COMP

    // parens, precedence
    move r3, (0xabcdef | 0xff) & 0xff
    move r3, 0x1234 & ~2
    move r3, 42|4&0xf     # 46
    move r3, (42|4)&0xf   # 14
    move r3, 10 ^ 2
