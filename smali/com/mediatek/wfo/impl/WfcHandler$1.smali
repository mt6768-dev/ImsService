.class Lcom/mediatek/wfo/impl/WfcHandler$1;
.super Lcom/mediatek/wfo/IWifiOffloadService$Stub;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcHandler;

    .line 326
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-direct {p0}, Lcom/mediatek/wfo/IWifiOffloadService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public factoryReset()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "factoryReset()"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    iget-object v0, v0, Lcom/mediatek/wfo/impl/WfcHandler;->mWosExt:Lcom/mediatek/wfo/op/IWosExt;

    invoke-interface {v0}, Lcom/mediatek/wfo/op/IWosExt;->factoryReset()V

    .line 393
    return-void
.end method

.method public getDisconnectCause(I)Lcom/mediatek/wfo/DisconnectCause;
    .locals 2
    .param p1, "simIdx"    # I

    .line 347
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "getDisconnectCause()"

    invoke-static {v0, p1, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$100(Lcom/mediatek/wfo/impl/WfcHandler;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$200(Lcom/mediatek/wfo/impl/WfcHandler;)[Lcom/mediatek/wfo/DisconnectCause;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMccMncAllowList(I)[Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .line 384
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "getMccMncAllowList() not supported"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRatType(I)I
    .locals 2
    .param p1, "simIdx"    # I

    .line 341
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "getRatType() not supported"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method public registerForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;

    .line 329
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForHandoverEvent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$000(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 331
    return-void
.end method

.method public setEpdgFqdn(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "simIdx"    # I
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "wfcEnabled"    # Z

    .line 355
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "setEpdgFqdn() not supported"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public setMccMncAllowList([Ljava/lang/String;)Z
    .locals 2
    .param p1, "allowList"    # [Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "setMccMncAllowList() not supported"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method public setWifiOff()Z
    .locals 3

    .line 397
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->isWifiPdnExisted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 399
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->setWifiOff()V

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->access$402(Lcom/mediatek/wfo/impl/WfcHandler;Z)Z

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiOff() mHasWiFiDisabledPending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$400(Lcom/mediatek/wfo/impl/WfcHandler;)Z

    move-result v0

    return v0
.end method

.method public unregisterForHandoverEvent(Lcom/mediatek/wfo/IWifiOffloadListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/wfo/IWifiOffloadListener;

    .line 335
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterForHandoverEvent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mediatek/wfo/IWifiOffloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$000(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 337
    return-void
.end method

.method public updateCallState(IIII)V
    .locals 2
    .param p1, "simIdx"    # I
    .param p2, "callId"    # I
    .param p3, "callType"    # I
    .param p4, "callState"    # I

    .line 360
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const-string v1, "updateCallState() not supported"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public updateRadioState(II)V
    .locals 3
    .param p1, "simIdx"    # I
    .param p2, "radioState"    # I

    .line 370
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioState() : sim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " radioState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$1;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$300(Lcom/mediatek/wfo/impl/WfcHandler;)Lcom/mediatek/wfo/impl/WifiPdnHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->handleRadioStateChanged(II)V

    .line 374
    :cond_0
    return-void
.end method
