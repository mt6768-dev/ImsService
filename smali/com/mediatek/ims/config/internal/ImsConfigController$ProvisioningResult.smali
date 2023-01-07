.class Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;
.super Ljava/lang/Object;
.source "ImsConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProvisioningResult"
.end annotation


# instance fields
.field lockObj:Ljava/lang/Object;

.field provisionInfo:Ljava/lang/String;

.field provisionResult:I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 p1, 0x3

    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->provisionResult:I

    .line 98
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigController;Lcom/mediatek/ims/config/internal/ImsConfigController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigController;
    .param p2, "x1"    # Lcom/mediatek/ims/config/internal/ImsConfigController$1;

    .line 95
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController$ProvisioningResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigController;)V

    return-void
.end method
