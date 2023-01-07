.class public final Landroid/hardware/radio/V1_4/EmergencyServiceCategory;
.super Ljava/lang/Object;
.source "EmergencyServiceCategory.java"


# static fields
.field public static final AIEC:I = 0x40

.field public static final AMBULANCE:I = 0x2

.field public static final FIRE_BRIGADE:I = 0x4

.field public static final MARINE_GUARD:I = 0x8

.field public static final MIEC:I = 0x20

.field public static final MOUNTAIN_RESCUE:I = 0x10

.field public static final POLICE:I = 0x1

.field public static final UNSPECIFIED:I


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

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 53
    .local v1, "flipped":I
    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 55
    const-string v2, "POLICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    or-int/lit8 v1, v1, 0x1

    .line 58
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 59
    const-string v2, "AMBULANCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    or-int/lit8 v1, v1, 0x2

    .line 62
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 63
    const-string v2, "FIRE_BRIGADE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    or-int/lit8 v1, v1, 0x4

    .line 66
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 67
    const-string v2, "MARINE_GUARD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    or-int/lit8 v1, v1, 0x8

    .line 70
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 71
    const-string v2, "MOUNTAIN_RESCUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    or-int/lit8 v1, v1, 0x10

    .line 74
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 75
    const-string v2, "MIEC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    or-int/lit8 v1, v1, 0x20

    .line 78
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 79
    const-string v2, "AIEC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    or-int/lit8 v1, v1, 0x40

    .line 82
    :cond_6
    if-eq p0, v1, :cond_7

    .line 83
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

    .line 85
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 27
    const-string v0, "POLICE"

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 30
    const-string v0, "AMBULANCE"

    return-object v0

    .line 32
    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 33
    const-string v0, "FIRE_BRIGADE"

    return-object v0

    .line 35
    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    .line 36
    const-string v0, "MARINE_GUARD"

    return-object v0

    .line 38
    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    .line 39
    const-string v0, "MOUNTAIN_RESCUE"

    return-object v0

    .line 41
    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    .line 42
    const-string v0, "MIEC"

    return-object v0

    .line 44
    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    .line 45
    const-string v0, "AIEC"

    return-object v0

    .line 47
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
