.class public final Lvendor/mediatek/hardware/radio/V3_0/MtkApnTypes;
.super Ljava/lang/Object;
.source "MtkApnTypes.java"


# static fields
.field public static final ALL:I = 0x3ff

.field public static final BIP:I = 0x2000

.field public static final CBS:I = 0x80

.field public static final DEFAULT:I = 0x1

.field public static final DUN:I = 0x8

.field public static final EMERGENCY:I = 0x200

.field public static final FOTA:I = 0x20

.field public static final HIPRI:I = 0x10

.field public static final IA:I = 0x100

.field public static final IMS:I = 0x40

.field public static final MMS:I = 0x2

.field public static final MTKALL:I = 0x7fff

.field public static final NONE:I = 0x0

.field public static final RCS:I = 0x1000

.field public static final SUPL:I = 0x4

.field public static final VSIM:I = 0x4000

.field public static final WAP:I = 0x400

.field public static final XCAP:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 84
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 86
    const-string v2, "DEFAULT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x1

    .line 89
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 90
    const-string v2, "MMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x2

    .line 93
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 94
    const-string v2, "SUPL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x4

    .line 97
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 98
    const-string v2, "DUN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x8

    .line 101
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 102
    const-string v2, "HIPRI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x10

    .line 105
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 106
    const-string v2, "FOTA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x20

    .line 109
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 110
    const-string v2, "IMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x40

    .line 113
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 114
    const-string v2, "CBS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit16 v1, v1, 0x80

    .line 117
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 118
    const-string v2, "IA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit16 v1, v1, 0x100

    .line 121
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 122
    const-string v2, "EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit16 v1, v1, 0x200

    .line 125
    :cond_9
    and-int/lit16 v2, p0, 0x3ff

    const/16 v3, 0x3ff

    if-ne v2, v3, :cond_a

    .line 126
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit16 v1, v1, 0x3ff

    .line 129
    :cond_a
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_b

    .line 130
    const-string v2, "WAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit16 v1, v1, 0x400

    .line 133
    :cond_b
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_c

    .line 134
    const-string v2, "XCAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit16 v1, v1, 0x800

    .line 137
    :cond_c
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_d

    .line 138
    const-string v2, "RCS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit16 v1, v1, 0x1000

    .line 141
    :cond_d
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_e

    .line 142
    const-string v2, "BIP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit16 v1, v1, 0x2000

    .line 145
    :cond_e
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_f

    .line 146
    const-string v2, "VSIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit16 v1, v1, 0x4000

    .line 149
    :cond_f
    and-int/lit16 v2, p0, 0x7fff

    const/16 v3, 0x7fff

    if-ne v2, v3, :cond_10

    .line 150
    const-string v2, "MTKALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit16 v1, v1, 0x7fff

    .line 153
    :cond_10
    if-eq p0, v1, :cond_11

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_11
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string v0, "NONE"

    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 28
    const-string v0, "DEFAULT"

    return-object v0

    .line 30
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 31
    const-string v0, "MMS"

    return-object v0

    .line 33
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 34
    const-string v0, "SUPL"

    return-object v0

    .line 36
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 37
    const-string v0, "DUN"

    return-object v0

    .line 39
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 40
    const-string v0, "HIPRI"

    return-object v0

    .line 42
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 43
    const-string v0, "FOTA"

    return-object v0

    .line 45
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 46
    const-string v0, "IMS"

    return-object v0

    .line 48
    :cond_7
    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    .line 49
    const-string v0, "CBS"

    return-object v0

    .line 51
    :cond_8
    const/16 v0, 0x100

    if-ne p0, v0, :cond_9

    .line 52
    const-string v0, "IA"

    return-object v0

    .line 54
    :cond_9
    const/16 v0, 0x200

    if-ne p0, v0, :cond_a

    .line 55
    const-string v0, "EMERGENCY"

    return-object v0

    .line 57
    :cond_a
    const/16 v0, 0x3ff

    if-ne p0, v0, :cond_b

    .line 58
    const-string v0, "ALL"

    return-object v0

    .line 60
    :cond_b
    const/16 v0, 0x400

    if-ne p0, v0, :cond_c

    .line 61
    const-string v0, "WAP"

    return-object v0

    .line 63
    :cond_c
    const/16 v0, 0x800

    if-ne p0, v0, :cond_d

    .line 64
    const-string v0, "XCAP"

    return-object v0

    .line 66
    :cond_d
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_e

    .line 67
    const-string v0, "RCS"

    return-object v0

    .line 69
    :cond_e
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_f

    .line 70
    const-string v0, "BIP"

    return-object v0

    .line 72
    :cond_f
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_10

    .line 73
    const-string v0, "VSIM"

    return-object v0

    .line 75
    :cond_10
    const/16 v0, 0x7fff

    if-ne p0, v0, :cond_11

    .line 76
    const-string v0, "MTKALL"

    return-object v0

    .line 78
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
