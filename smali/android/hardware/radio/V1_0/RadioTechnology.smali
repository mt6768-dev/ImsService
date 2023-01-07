.class public final Landroid/hardware/radio/V1_0/RadioTechnology;
.super Ljava/lang/Object;
.source "RadioTechnology.java"


# static fields
.field public static final EDGE:I = 0x2

.field public static final EHRPD:I = 0xd

.field public static final EVDO_0:I = 0x7

.field public static final EVDO_A:I = 0x8

.field public static final EVDO_B:I = 0xc

.field public static final GPRS:I = 0x1

.field public static final GSM:I = 0x10

.field public static final HSDPA:I = 0x9

.field public static final HSPA:I = 0xb

.field public static final HSPAP:I = 0xf

.field public static final HSUPA:I = 0xa

.field public static final IS95A:I = 0x4

.field public static final IS95B:I = 0x5

.field public static final IWLAN:I = 0x12

.field public static final LTE:I = 0xe

.field public static final LTE_CA:I = 0x13

.field public static final ONE_X_RTT:I = 0x6

.field public static final TD_SCDMA:I = 0x11

.field public static final UMTS:I = 0x3

.field public static final UNKNOWN:I


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
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 94
    const-string v2, "GPRS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x1

    .line 97
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 98
    const-string v2, "EDGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    or-int/lit8 v1, v1, 0x2

    .line 101
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 102
    const-string v2, "UMTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    or-int/lit8 v1, v1, 0x3

    .line 105
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 106
    const-string v2, "IS95A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x4

    .line 109
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 110
    const-string v2, "IS95B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x5

    .line 113
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 114
    const-string v2, "ONE_X_RTT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x6

    .line 117
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 118
    const-string v2, "EVDO_0"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x7

    .line 121
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 122
    const-string v2, "EVDO_A"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x8

    .line 125
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 126
    const-string v2, "HSDPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x9

    .line 129
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 130
    const-string v2, "HSUPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0xa

    .line 133
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 134
    const-string v2, "HSPA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0xb

    .line 137
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 138
    const-string v2, "EVDO_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0xc

    .line 141
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 142
    const-string v2, "EHRPD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0xd

    .line 145
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 146
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xe

    .line 149
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 150
    const-string v2, "HSPAP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0xf

    .line 153
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 154
    const-string v2, "GSM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0x10

    .line 157
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 158
    const-string v2, "TD_SCDMA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0x11

    .line 161
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 162
    const-string v2, "IWLAN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0x12

    .line 165
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 166
    const-string v2, "LTE_CA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    or-int/lit8 v1, v1, 0x13

    .line 169
    :cond_12
    if-eq p0, v1, :cond_13

    .line 170
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

    .line 172
    :cond_13
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 26
    if-nez p0, :cond_0

    .line 27
    const-string v0, "UNKNOWN"

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 30
    const-string v0, "GPRS"

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 33
    const-string v0, "EDGE"

    return-object v0

    .line 35
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 36
    const-string v0, "UMTS"

    return-object v0

    .line 38
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 39
    const-string v0, "IS95A"

    return-object v0

    .line 41
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 42
    const-string v0, "IS95B"

    return-object v0

    .line 44
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 45
    const-string v0, "ONE_X_RTT"

    return-object v0

    .line 47
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 48
    const-string v0, "EVDO_0"

    return-object v0

    .line 50
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 51
    const-string v0, "EVDO_A"

    return-object v0

    .line 53
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 54
    const-string v0, "HSDPA"

    return-object v0

    .line 56
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 57
    const-string v0, "HSUPA"

    return-object v0

    .line 59
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 60
    const-string v0, "HSPA"

    return-object v0

    .line 62
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 63
    const-string v0, "EVDO_B"

    return-object v0

    .line 65
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 66
    const-string v0, "EHRPD"

    return-object v0

    .line 68
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 69
    const-string v0, "LTE"

    return-object v0

    .line 71
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 72
    const-string v0, "HSPAP"

    return-object v0

    .line 74
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 75
    const-string v0, "GSM"

    return-object v0

    .line 77
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 78
    const-string v0, "TD_SCDMA"

    return-object v0

    .line 80
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 81
    const-string v0, "IWLAN"

    return-object v0

    .line 83
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 84
    const-string v0, "LTE_CA"

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
