.class public final Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellInfo$CellInfoRatSpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x5t

.field public static final gsm:B = 0x0t

.field public static final lte:B = 0x3t

.field public static final nr:B = 0x4t

.field public static final tdscdma:B = 0x2t

.field public static final wcdma:B = 0x1t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 25
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 32
    const-string v0, "Unknown"

    return-object v0

    .line 31
    :cond_0
    const-string v0, "cdma"

    return-object v0

    .line 30
    :cond_1
    const-string v0, "nr"

    return-object v0

    .line 29
    :cond_2
    const-string v0, "lte"

    return-object v0

    .line 28
    :cond_3
    const-string v0, "tdscdma"

    return-object v0

    .line 27
    :cond_4
    const-string v0, "wcdma"

    return-object v0

    .line 26
    :cond_5
    const-string v0, "gsm"

    return-object v0
.end method
