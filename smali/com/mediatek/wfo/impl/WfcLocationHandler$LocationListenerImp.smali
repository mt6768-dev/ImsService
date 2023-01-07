.class Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;
.super Ljava/lang/Object;
.source "WfcLocationHandler.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method private constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;Lcom/mediatek/wfo/impl/WfcLocationHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;
    .param p2, "x1"    # Lcom/mediatek/wfo/impl/WfcLocationHandler$1;

    .line 219
    invoke-direct {p0, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;-><init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .line 222
    invoke-static {}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLocationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WfcLocationHandler"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_0
    const-string v0, "WfcLocationHandler"

    const-string v1, "onLocationChanged"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 229
    .local v0, "newNlpTime":J
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLocationChanged newNlpTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "isCache":Z
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$600(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;

    .line 232
    .local v4, "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    iget-object v5, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onLocationChanged locationInfo time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 233
    iget-wide v5, v4, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;->mTime:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_1

    .line 234
    const/4 v2, 0x1

    .line 236
    .end local v4    # "locationInfo":Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationInfo;
    :cond_1
    goto :goto_1

    .line 238
    :cond_2
    if-eqz v2, :cond_3

    .line 239
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLocationChanged isCache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$708(Lcom/mediatek/wfo/impl/WfcLocationHandler;)I

    .line 243
    :cond_3
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V

    .line 244
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 245
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1002(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 246
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const-string v4, "removeMessages: EVENT_GET_LAST_KNOWN_LOCATION"

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->removeMessages(I)V

    .line 251
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v4, 0xbba

    invoke-virtual {v3, v4, v5, v5, p1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 253
    return-void

    .line 246
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProviderEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 267
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$LocationListenerImp;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 268
    return-void
.end method
