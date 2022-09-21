.class public final Landroid/hardware/radio/V1_1/GeranBands;
.super Ljava/lang/Object;
.source "GeranBands.java"


# static fields
.field public static final BAND_450:I = 0x3

.field public static final BAND_480:I = 0x4

.field public static final BAND_710:I = 0x5

.field public static final BAND_750:I = 0x6

.field public static final BAND_850:I = 0x8

.field public static final BAND_DCS1800:I = 0xc

.field public static final BAND_E900:I = 0xa

.field public static final BAND_ER900:I = 0xe

.field public static final BAND_P900:I = 0x9

.field public static final BAND_PCS1900:I = 0xd

.field public static final BAND_R900:I = 0xb

.field public static final BAND_T380:I = 0x1

.field public static final BAND_T410:I = 0x2

.field public static final BAND_T810:I = 0x7


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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 69
    const-string v2, "BAND_T380"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, 0x1

    .line 72
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 73
    const-string v2, "BAND_T410"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x2

    .line 76
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 77
    const-string v2, "BAND_450"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x3

    .line 80
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 81
    const-string v2, "BAND_480"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x4

    .line 84
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 85
    const-string v2, "BAND_710"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x5

    .line 88
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 89
    const-string v2, "BAND_750"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x6

    .line 92
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 93
    const-string v2, "BAND_T810"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit8 v1, v1, 0x7

    .line 96
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 97
    const-string v2, "BAND_850"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit8 v1, v1, 0x8

    .line 100
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 101
    const-string v2, "BAND_P900"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x9

    .line 104
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 105
    const-string v2, "BAND_E900"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0xa

    .line 108
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 109
    const-string v2, "BAND_R900"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0xb

    .line 112
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 113
    const-string v2, "BAND_DCS1800"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0xc

    .line 116
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 117
    const-string v2, "BAND_PCS1900"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0xd

    .line 120
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 121
    const-string v2, "BAND_ER900"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0xe

    .line 124
    :cond_d
    if-eq p0, v1, :cond_e

    .line 125
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

    .line 127
    :cond_e
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 20
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 21
    const-string v0, "BAND_T380"

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 24
    const-string v0, "BAND_T410"

    return-object v0

    .line 26
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 27
    const-string v0, "BAND_450"

    return-object v0

    .line 29
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 30
    const-string v0, "BAND_480"

    return-object v0

    .line 32
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 33
    const-string v0, "BAND_710"

    return-object v0

    .line 35
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 36
    const-string v0, "BAND_750"

    return-object v0

    .line 38
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 39
    const-string v0, "BAND_T810"

    return-object v0

    .line 41
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 42
    const-string v0, "BAND_850"

    return-object v0

    .line 44
    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 45
    const-string v0, "BAND_P900"

    return-object v0

    .line 47
    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 48
    const-string v0, "BAND_E900"

    return-object v0

    .line 50
    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    .line 51
    const-string v0, "BAND_R900"

    return-object v0

    .line 53
    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    .line 54
    const-string v0, "BAND_DCS1800"

    return-object v0

    .line 56
    :cond_b
    const/16 v0, 0xd

    if-ne p0, v0, :cond_c

    .line 57
    const-string v0, "BAND_PCS1900"

    return-object v0

    .line 59
    :cond_c
    const/16 v0, 0xe

    if-ne p0, v0, :cond_d

    .line 60
    const-string v0, "BAND_ER900"

    return-object v0

    .line 62
    :cond_d
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
