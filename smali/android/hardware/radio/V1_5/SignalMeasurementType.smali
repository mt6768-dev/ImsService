.class public final Landroid/hardware/radio/V1_5/SignalMeasurementType;
.super Ljava/lang/Object;
.source "SignalMeasurementType.java"


# static fields
.field public static final RSCP:I = 0x2

.field public static final RSRP:I = 0x3

.field public static final RSRQ:I = 0x4

.field public static final RSSI:I = 0x1

.field public static final RSSNR:I = 0x5

.field public static final SSRSRP:I = 0x6

.field public static final SSRSRQ:I = 0x7

.field public static final SSSINR:I = 0x8


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

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 94
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 95
    const-string v2, "RSSI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    or-int/lit8 v1, v1, 0x1

    .line 98
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 99
    const-string v2, "RSCP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    or-int/lit8 v1, v1, 0x2

    .line 102
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 103
    const-string v2, "RSRP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    or-int/lit8 v1, v1, 0x3

    .line 106
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 107
    const-string v2, "RSRQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    or-int/lit8 v1, v1, 0x4

    .line 110
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 111
    const-string v2, "RSSNR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    or-int/lit8 v1, v1, 0x5

    .line 114
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 115
    const-string v2, "SSRSRP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    or-int/lit8 v1, v1, 0x6

    .line 118
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 119
    const-string v2, "SSRSRQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    or-int/lit8 v1, v1, 0x7

    .line 122
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 123
    const-string v2, "SSSINR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    or-int/lit8 v1, v1, 0x8

    .line 126
    :cond_7
    if-eq p0, v1, :cond_8

    .line 127
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

    .line 129
    :cond_8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 64
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 65
    const-string v0, "RSSI"

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 68
    const-string v0, "RSCP"

    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 71
    const-string v0, "RSRP"

    return-object v0

    .line 73
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 74
    const-string v0, "RSRQ"

    return-object v0

    .line 76
    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 77
    const-string v0, "RSSNR"

    return-object v0

    .line 79
    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 80
    const-string v0, "SSRSRP"

    return-object v0

    .line 82
    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 83
    const-string v0, "SSRSRQ"

    return-object v0

    .line 85
    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 86
    const-string v0, "SSSINR"

    return-object v0

    .line 88
    :cond_7
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
