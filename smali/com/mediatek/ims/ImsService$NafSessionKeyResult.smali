.class Lcom/mediatek/ims/ImsService$NafSessionKeyResult;
.super Ljava/lang/Object;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NafSessionKeyResult"
.end annotation


# instance fields
.field cmdResult:I

.field lockObj:Ljava/lang/Object;

.field nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->nafSessionKey:Lcom/mediatek/gba/NafSessionKey;

    .line 335
    const/4 p1, 0x1

    iput p1, p0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->cmdResult:I

    .line 336
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/ImsService;
    .param p2, "x1"    # Lcom/mediatek/ims/ImsService$1;

    .line 333
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsService$NafSessionKeyResult;-><init>(Lcom/mediatek/ims/ImsService;)V

    return-void
.end method
