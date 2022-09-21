.class public final Landroid/hardware/radio/V1_4/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"


# static fields
.field public static final EDGE:I = 0x4

.field public static final EHRPD:I = 0x2000

.field public static final EVDO_0:I = 0x80

.field public static final EVDO_A:I = 0x100

.field public static final EVDO_B:I = 0x1000

.field public static final GPRS:I = 0x2

.field public static final GSM:I = 0x10000

.field public static final HSDPA:I = 0x200

.field public static final HSPA:I = 0x800

.field public static final HSPAP:I = 0x8000

.field public static final HSUPA:I = 0x400

.field public static final IS95A:I = 0x10

.field public static final IS95B:I = 0x20

.field public static final LTE:I = 0x4000

.field public static final LTE_CA:I = 0x80000

.field public static final NR:I = 0x100000

.field public static final ONE_X_RTT:I = 0x40

.field public static final TD_SCDMA:I = 0x20000

.field public static final UMTS:I = 0x8

.field public static final UNKNOWN:I = 0x1


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

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 96
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x1

    .line 99
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 100
    const-string v2, "GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x2

    .line 103
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 104
    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x4

    .line 107
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 108
    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x8

    .line 111
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 112
    const-string v2, "IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x10

    .line 115
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 116
    const-string v2, "IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x20

    .line 119
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 120
    const-string v2, "ONE_X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0x40

    .line 123
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 124
    const-string v2, "EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit16 v1, v1, 0x80

    .line 127
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 128
    const-string v2, "EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit16 v1, v1, 0x100

    .line 131
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 132
    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit16 v1, v1, 0x200

    .line 135
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 136
    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit16 v1, v1, 0x400

    .line 139
    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 140
    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit16 v1, v1, 0x800

    .line 143
    :cond_b
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 144
    const-string v2, "EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit16 v1, v1, 0x1000

    .line 147
    :cond_c
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 148
    const-string v2, "EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit16 v1, v1, 0x2000

    .line 151
    :cond_d
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    .line 152
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    or-int/lit16 v1, v1, 0x4000

    .line 155
    :cond_e
    const v2, 0x8000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_f

    .line 156
    const-string v3, "HSPAP"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    or-int/2addr v1, v2

    .line 159
    :cond_f
    const/high16 v2, 0x10000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_10

    .line 160
    const-string v3, "GSM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    or-int/2addr v1, v2

    .line 163
    :cond_10
    const/high16 v2, 0x20000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_11

    .line 164
    const-string v3, "TD_SCDMA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/2addr v1, v2

    .line 167
    :cond_11
    const/high16 v2, 0x80000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_12

    .line 168
    const-string v3, "LTE_CA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/2addr v1, v2

    .line 171
    :cond_12
    const/high16 v2, 0x100000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_13

    .line 172
    const-string v3, "NR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/2addr v1, v2

    .line 175
    :cond_13
    if-eq p0, v1, :cond_14

    .line 176
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

    .line 178
    :cond_14
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 29
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 30
    const-string v0, "UNKNOWN"

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 33
    const-string v0, "GPRS"

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 36
    const-string v0, "EDGE"

    return-object v0

    .line 38
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 39
    const-string v0, "UMTS"

    return-object v0

    .line 41
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 42
    const-string v0, "IS95A"

    return-object v0

    .line 44
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 45
    const-string v0, "IS95B"

    return-object v0

    .line 47
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 48
    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 50
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 51
    const-string v0, "EVDO_0"

    return-object v0

    .line 53
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 54
    const-string v0, "EVDO_A"

    return-object v0

    .line 56
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 57
    const-string v0, "HSDPA"

    return-object v0

    .line 59
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 60
    const-string v0, "HSUPA"

    return-object v0

    .line 62
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 63
    const-string v0, "HSPA"

    return-object v0

    .line 65
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    .line 66
    const-string v0, "EVDO_B"

    return-object v0

    .line 68
    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    .line 69
    const-string v0, "EHRPD"

    return-object v0

    .line 71
    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    .line 72
    const-string v0, "LTE"

    return-object v0

    .line 74
    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    .line 75
    const-string v0, "HSPAP"

    return-object v0

    .line 77
    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    .line 78
    const-string v0, "GSM"

    return-object v0

    .line 80
    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    .line 81
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 83
    :cond_11
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_12

    .line 84
    const-string v0, "LTE_CA"

    return-object v0

    .line 86
    :cond_12
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_13

    .line 87
    const-string v0, "NR"

    return-object v0

    .line 89
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
