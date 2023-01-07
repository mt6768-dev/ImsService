.class synthetic Lcom/mediatek/ims/internal/ImsDataTracker$3;
.super Ljava/lang/Object;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->values()[Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$3;->$SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability:[I

    :try_start_0
    sget-object v1, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$3;->$SwitchMap$com$mediatek$ims$internal$ImsDataTracker$MdCapability:[I

    sget-object v1, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    invoke-virtual {v1}, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
