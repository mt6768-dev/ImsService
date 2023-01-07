.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningResult"
.end annotation


# instance fields
.field lockObj:Ljava/lang/Object;

.field provisionInfo:[Ljava/lang/String;

.field provisionResult:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/16 p1, 0x14

    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->provisionResult:I

    .line 144
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    .param p2, "x1"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;

    .line 141
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    return-void
.end method
