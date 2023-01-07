.class Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImsDataSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkAvailableCallback"
.end annotation


# instance fields
.field private mNetworkCallbackRegistered:Z

.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 504
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->mNetworkCallbackRegistered:Z

    .line 507
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 511
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v0}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$2300(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 512
    .local v0, "netInfo":Landroid/net/NetworkInfo;
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailable: networInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mNetworkCallbackRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->mNetworkCallbackRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 514
    iget-boolean v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->mNetworkCallbackRegistered:Z

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    invoke-static {v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->access$1700(Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;)Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 517
    :cond_0
    return-void
.end method

.method public setNetworkCallbackRegistered(Z)V
    .locals 3
    .param p1, "regState"    # Z

    .line 520
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->this$1:Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkCallbackRegistered regState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection;->logd(Ljava/lang/String;)V

    .line 521
    iput-boolean p1, p0, Lcom/mediatek/ims/internal/ImsDataSynchronizer$DataConnection$NetworkAvailableCallback;->mNetworkCallbackRegistered:Z

    .line 522
    return-void
.end method
