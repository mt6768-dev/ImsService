.class public final Landroid/hardware/radio/V1_5/CellIdentity$hidl_discriminator;
.super Ljava/lang/Object;
.source "CellIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "hidl_discriminator"
.end annotation


# static fields
.field public static final cdma:B = 0x4t

.field public static final gsm:B = 0x1t

.field public static final lte:B = 0x5t

.field public static final noinit:B = 0x0t

.field public static final nr:B = 0x6t

.field public static final tdscdma:B = 0x3t

.field public static final wcdma:B = 0x2t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getName(B)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # B

    .line 19
    packed-switch p0, :pswitch_data_0

    .line 27
    const-string v0, "Unknown"

    return-object v0

    .line 26
    :pswitch_0
    const-string v0, "nr"

    return-object v0

    .line 25
    :pswitch_1
    const-string v0, "lte"

    return-object v0

    .line 24
    :pswitch_2
    const-string v0, "cdma"

    return-object v0

    .line 23
    :pswitch_3
    const-string v0, "tdscdma"

    return-object v0

    .line 22
    :pswitch_4
    const-string v0, "wcdma"

    return-object v0

    .line 21
    :pswitch_5
    const-string v0, "gsm"

    return-object v0

    .line 20
    :pswitch_6
    const-string v0, "noinit"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
