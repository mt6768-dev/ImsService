.class public Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;
.super Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.source "ImsMultiEndpointProxy.java"


# static fields
.field private static final MSG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpointProxy"


# instance fields
.field private final mDepListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

.field private mExternalCallStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private mReceiver:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    .line 53
    new-instance v0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$2;-><init>(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mDepListener:Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    .line 37
    new-instance v1, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    invoke-direct {v1, p1, v0}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;-><init>(Landroid/content/Context;Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;)V

    iput-object v1, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mReceiver:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    .line 38
    new-instance v0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$1;-><init>(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mHandler:Landroid/os/Handler;

    .line 50
    const-string v0, "ImsMultiEndpointProxy"

    invoke-static {v0, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    .line 22
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mExternalCallStateList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;
    .param p1, "x1"    # Ljava/util/List;

    .line 22
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->update(Ljava/util/List;)V

    return-void
.end method

.method private update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "externalCallDialogs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mExternalCallStateList:Ljava/util/List;

    .line 71
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->onImsExternalCallStateUpdate(Ljava/util/List;)V

    .line 72
    return-void
.end method


# virtual methods
.method public requestImsExternalCallStateInfo()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method
