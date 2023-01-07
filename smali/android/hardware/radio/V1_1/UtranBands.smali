.class public final Landroid/hardware/radio/V1_1/UtranBands;
.super Ljava/lang/Object;
.source "UtranBands.java"


# static fields
.field public static final BAND_1:I = 0x1

.field public static final BAND_10:I = 0xa

.field public static final BAND_11:I = 0xb

.field public static final BAND_12:I = 0xc

.field public static final BAND_13:I = 0xd

.field public static final BAND_14:I = 0xe

.field public static final BAND_19:I = 0x13

.field public static final BAND_2:I = 0x2

.field public static final BAND_20:I = 0x14

.field public static final BAND_21:I = 0x15

.field public static final BAND_22:I = 0x16

.field public static final BAND_25:I = 0x19

.field public static final BAND_26:I = 0x1a

.field public static final BAND_3:I = 0x3

.field public static final BAND_4:I = 0x4

.field public static final BAND_5:I = 0x5

.field public static final BAND_6:I = 0x6

.field public static final BAND_7:I = 0x7

.field public static final BAND_8:I = 0x8

.field public static final BAND_9:I = 0x9


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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 93
    const-string v2, "BAND_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x1

    .line 96
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 97
    const-string v2, "BAND_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x2

    .line 100
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 101
    const-string v2, "BAND_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x3

    .line 104
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 105
    const-string v2, "BAND_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x4

    .line 108
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 109
    const-string v2, "BAND_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x5

    .line 112
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 113
    const-string v2, "BAND_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x6

    .line 116
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 117
    const-string v2, "BAND_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x7

    .line 120
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 121
    const-string v2, "BAND_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x8

    .line 124
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 125
    const-string v2, "BAND_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x9

    .line 128
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 129
    const-string v2, "BAND_10"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v1, v1, 0xa

    .line 132
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 133
    const-string v2, "BAND_11"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v1, v1, 0xb

    .line 136
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 137
    const-string v2, "BAND_12"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v1, v1, 0xc

    .line 140
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 141
    const-string v2, "BAND_13"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v1, v1, 0xd

    .line 144
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 145
    const-string v2, "BAND_14"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v1, v1, 0xe

    .line 148
    :cond_d
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_e

    .line 149
    const-string v2, "BAND_19"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v1, v1, 0x13

    .line 152
    :cond_e
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_f

    .line 153
    const-string v2, "BAND_20"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v1, v1, 0x14

    .line 156
    :cond_f
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_10

    .line 157
    const-string v2, "BAND_21"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v1, v1, 0x15

    .line 160
    :cond_10
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_11

    .line 161
    const-string v2, "BAND_22"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v1, v1, 0x16

    .line 164
    :cond_11
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_12

    .line 165
    const-string v2, "BAND_25"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v1, v1, 0x19

    .line 168
    :cond_12
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_13

    .line 169
    const-string v2, "BAND_26"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v1, v1, 0x1a

    .line 172
    :cond_13
    if-eq p0, v1, :cond_14

    .line 173
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

    .line 175
    :cond_14
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 26
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 27
    const-string v0, "BAND_1"

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 30
    const-string v0, "BAND_2"

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 33
    const-string v0, "BAND_3"

    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 36
    const-string v0, "BAND_4"

    return-object v0

    .line 38
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 39
    const-string v0, "BAND_5"

    return-object v0

    .line 41
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 42
    const-string v0, "BAND_6"

    return-object v0

    .line 44
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 45
    const-string v0, "BAND_7"

    return-object v0

    .line 47
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 48
    const-string v0, "BAND_8"

    return-object v0

    .line 50
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 51
    const-string v0, "BAND_9"

    return-object v0

    .line 53
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 54
    const-string v0, "BAND_10"

    return-object v0

    .line 56
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 57
    const-string v0, "BAND_11"

    return-object v0

    .line 59
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 60
    const-string v0, "BAND_12"

    return-object v0

    .line 62
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 63
    const-string v0, "BAND_13"

    return-object v0

    .line 65
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 66
    const-string v0, "BAND_14"

    return-object v0

    .line 68
    :cond_d
    const/16 v0, 0x13

    if-ne p0, v0, :cond_e

    .line 69
    const-string v0, "BAND_19"

    return-object v0

    .line 71
    :cond_e
    const/16 v0, 0x14

    if-ne p0, v0, :cond_f

    .line 72
    const-string v0, "BAND_20"

    return-object v0

    .line 74
    :cond_f
    const/16 v0, 0x15

    if-ne p0, v0, :cond_10

    .line 75
    const-string v0, "BAND_21"

    return-object v0

    .line 77
    :cond_10
    const/16 v0, 0x16

    if-ne p0, v0, :cond_11

    .line 78
    const-string v0, "BAND_22"

    return-object v0

    .line 80
    :cond_11
    const/16 v0, 0x19

    if-ne p0, v0, :cond_12

    .line 81
    const-string v0, "BAND_25"

    return-object v0

    .line 83
    :cond_12
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_13

    .line 84
    const-string v0, "BAND_26"

    return-object v0

    .line 86
    :cond_13
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
