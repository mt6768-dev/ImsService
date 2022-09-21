.class public final enum Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
.super Ljava/lang/Enum;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MdCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

.field public static final enum AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

.field public static final enum LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 36
    new-instance v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    const-string v1, "AUTOSETUPIMS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->AUTOSETUPIMS:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    .line 34
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    sget-object v4, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->LEGACY:Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->$VALUES:[Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;
    .locals 1

    .line 34
    sget-object v0, Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->$VALUES:[Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    invoke-virtual {v0}, [Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/ims/internal/ImsDataTracker$MdCapability;

    return-object v0
.end method
