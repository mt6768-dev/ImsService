.class Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NwLostCallback"
.end annotation


# instance fields
.field private mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)V
    .locals 0
    .param p2, "conn"    # Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 897
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 898
    iput-object p2, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    .line 899
    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 903
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$200(Lcom/mediatek/ims/internal/DataDispatcher;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0xc3505

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 904
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->access$3100(Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 905
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost: networInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->logd(Ljava/lang/String;)V

    .line 906
    iget-object v1, p0, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection$NwLostCallback;->mConn:Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    const v2, 0xc3502

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 908
    return-void
.end method
