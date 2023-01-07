.class Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$2;
.super Lcom/mediatek/ims/internal/DialogEventPackageReceiver$ListenerBase;
.source "ImsMultiEndpointProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    .line 53
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$2;->this$0:Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    invoke-direct {p0}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy$2;->this$0:Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;

    invoke-static {v0, p1}, Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;->access$100(Lcom/mediatek/ims/internal/ImsMultiEndpointProxy;Ljava/util/List;)V

    .line 57
    return-void
.end method
