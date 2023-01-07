.class public final Landroid/hardware/radio/V1_5/IndicationFilter;
.super Ljava/lang/Object;
.source "IndicationFilter.java"


# static fields
.field public static final ALL:I = -0x1

.field public static final BARRING_INFO:I = 0x40

.field public static final DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final FULL_NETWORK_STATE:I = 0x2

.field public static final LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final NONE:I = 0x0

.field public static final PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final REGISTRATION_FAILURE:I = 0x20

.field public static final SIGNAL_STRENGTH:I = 0x1


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

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 86
    .local v1, "flipped":I
    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 88
    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v1, v1, -0x1

    .line 91
    :cond_0
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 92
    const-string v2, "SIGNAL_STRENGTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x1

    .line 95
    :cond_1
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 96
    const-string v2, "FULL_NETWORK_STATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x2

    .line 99
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 100
    const-string v2, "DATA_CALL_DORMANCY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x4

    .line 103
    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 104
    const-string v2, "LINK_CAPACITY_ESTIMATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x8

    .line 107
    :cond_4
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 108
    const-string v2, "PHYSICAL_CHANNEL_CONFIG"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x10

    .line 111
    :cond_5
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 112
    const-string v2, "REGISTRATION_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x20

    .line 115
    :cond_6
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 116
    const-string v2, "BARRING_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x40

    .line 119
    :cond_7
    if-eq p0, v1, :cond_8

    .line 120
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

    .line 122
    :cond_8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string v0, "NONE"

    return-object v0

    .line 56
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 57
    const-string v0, "ALL"

    return-object v0

    .line 59
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 60
    const-string v0, "SIGNAL_STRENGTH"

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 63
    const-string v0, "FULL_NETWORK_STATE"

    return-object v0

    .line 65
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 66
    const-string v0, "DATA_CALL_DORMANCY_CHANGED"

    return-object v0

    .line 68
    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    .line 69
    const-string v0, "LINK_CAPACITY_ESTIMATE"

    return-object v0

    .line 71
    :cond_5
    const/16 v0, 0x10

    if-ne p0, v0, :cond_6

    .line 72
    const-string v0, "PHYSICAL_CHANNEL_CONFIG"

    return-object v0

    .line 74
    :cond_6
    const/16 v0, 0x20

    if-ne p0, v0, :cond_7

    .line 75
    const-string v0, "REGISTRATION_FAILURE"

    return-object v0

    .line 77
    :cond_7
    const/16 v0, 0x40

    if-ne p0, v0, :cond_8

    .line 78
    const-string v0, "BARRING_INFO"

    return-object v0

    .line 80
    :cond_8
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
