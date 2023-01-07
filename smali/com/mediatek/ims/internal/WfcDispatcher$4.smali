.class Lcom/mediatek/ims/internal/WfcDispatcher$4;
.super Landroid/os/Handler;
.source "WfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/WfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/WfcDispatcher;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/WfcDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/WfcDispatcher;

    .line 228
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    .line 232
    .local v0, "what":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    .local v1, "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 236
    if-eqz v0, :cond_6

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3, v0}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$600(Lcom/mediatek/ims/internal/WfcDispatcher;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wfc-IMSA"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1200(Lcom/mediatek/ims/internal/WfcDispatcher;)V

    .line 306
    goto/16 :goto_1

    .line 298
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 299
    .local v2, "locationRsp":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish for transaction-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1100(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    .line 301
    goto/16 :goto_1

    .line 276
    .end local v2    # "locationRsp":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :cond_2
    move-object v2, v1

    check-cast v2, Landroid/location/Location;

    .line 277
    .local v2, "location":Landroid/location/Location;
    if-nez v2, :cond_3

    .line 278
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v4, "network location get null, unexpected result"

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 279
    return-void

    .line 282
    :cond_3
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 283
    .local v3, "latitude":D
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 284
    .local v5, "longitude":D
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v8, "update all GeoLocationTask"

    invoke-virtual {v7, v8}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 286
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v7}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 287
    .local v8, "locationTask":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iput-wide v3, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->latitude:D

    .line 288
    iput-wide v5, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->longitude:D

    .line 289
    iget-object v9, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get network location, send EVENT_MSG_REQUEST_GEO_LOCATION for transactionId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 291
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Lcom/mediatek/ims/internal/WfcDispatcher$4;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 292
    .end local v8    # "locationTask":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    goto :goto_0

    .line 293
    :cond_4
    iget-object v7, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v7}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 294
    goto :goto_1

    .line 254
    .end local v2    # "location":Landroid/location/Location;
    .end local v3    # "latitude":D
    .end local v5    # "longitude":D
    :cond_5
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 255
    .local v2, "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$1000(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 258
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$900(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    iget-object v4, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v5, "getLastKnownLocation failed"

    invoke-virtual {v4, v5}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v3, v2}, Lcom/mediatek/ims/internal/WfcDispatcher$4;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 261
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 238
    .end local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :cond_6
    move-object v2, v1

    check-cast v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    .line 239
    .restart local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "push GeoLocation task transaction-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$800()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    new-instance v4, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;

    invoke-direct {v4, p0, v2}, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;-><init>(Lcom/mediatek/ims/internal/WfcDispatcher$4;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 250
    nop

    .line 313
    .end local v2    # "locationReq":Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;
    :cond_7
    :goto_1
    return-void
.end method
