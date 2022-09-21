.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MdConfigResult"
.end annotation


# instance fields
.field configResult:I

.field lockObj:Ljava/lang/Object;

.field requestConfigNum:I

.field resultArray:[I

.field final synthetic this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->this$0:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->requestConfigNum:I

    .line 150
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->resultArray:[I

    .line 151
    const/16 p1, 0x1e

    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->configResult:I

    .line 152
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;->lockObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage;
    .param p2, "x1"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$1;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$MdConfigResult;-><init>(Lcom/mediatek/ims/config/internal/ImsConfigStorage;)V

    return-void
.end method
