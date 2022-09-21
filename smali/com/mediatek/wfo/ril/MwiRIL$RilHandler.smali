.class Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;
.super Landroid/os/Handler;
.source "MwiRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/ril/MwiRIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RilHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/ril/MwiRIL;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/ril/MwiRIL;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 349
    iput-object p1, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    .line 350
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 358
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_RADIO_PROXY_DEAD cookie = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mRadioProxyCookie = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v3, v3, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 417
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->riljLog(Ljava/lang/String;)V

    .line 418
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v3, v3, Lcom/mediatek/wfo/ril/MwiRIL;->mRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    .line 419
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v0}, Lcom/mediatek/wfo/ril/MwiRIL;->access$500(Lcom/mediatek/wfo/ril/MwiRIL;)V

    .line 423
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v0, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->access$600(Lcom/mediatek/wfo/ril/MwiRIL;Landroid/os/Message;)Lvendor/mediatek/hardware/mtkradioex/V2_0/IMtkRadioEx;

    goto/16 :goto_1

    .line 396
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 397
    .local v0, "serial":I
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v1, v0}, Lcom/mediatek/wfo/ril/MwiRIL;->access$100(Lcom/mediatek/wfo/ril/MwiRIL;I)Lcom/mediatek/wfo/ril/RILRequest;

    move-result-object v1

    .line 399
    .local v1, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    if-nez v1, :cond_2

    .line 400
    goto/16 :goto_1

    .line 404
    :cond_2
    iget-object v3, v1, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v3, :cond_3

    .line 405
    invoke-static {v1}, Lcom/mediatek/wfo/ril/MwiRIL;->access$200(Lcom/mediatek/wfo/ril/RILRequest;)Ljava/lang/Object;

    move-result-object v3

    .line 406
    .local v3, "timeoutResponse":Ljava/lang/Object;
    iget-object v4, v1, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 407
    iget-object v2, v1, Lcom/mediatek/wfo/ril/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 408
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v2}, Lcom/mediatek/wfo/ril/MwiRIL;->access$300(Lcom/mediatek/wfo/ril/MwiRIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v2

    iget-object v4, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v4, v4, Lcom/mediatek/wfo/ril/MwiRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, v1, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    iget v6, v1, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilTimeoutResponse(III)V

    .line 411
    .end local v3    # "timeoutResponse":Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->access$400(Lcom/mediatek/wfo/ril/MwiRIL;Lcom/mediatek/wfo/ril/RILRequest;)V

    .line 412
    invoke-virtual {v1}, Lcom/mediatek/wfo/ril/RILRequest;->release()V

    .line 413
    goto/16 :goto_1

    .line 388
    .end local v0    # "serial":I
    .end local v1    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mAckWlSequenceNum:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/wfo/ril/MwiRIL;->access$000(Lcom/mediatek/wfo/ril/MwiRIL;I)Z

    move-result v0

    goto :goto_1

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v0, v0, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 372
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget v2, v2, Lcom/mediatek/wfo/ril/MwiRIL;->mWlSequenceNum:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/wfo/ril/MwiRIL;->access$000(Lcom/mediatek/wfo/ril/MwiRIL;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    iget-object v1, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v1, v1, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 375
    .local v1, "count":I
    const-string v2, "MwiRIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 378
    iget-object v3, p0, Lcom/mediatek/wfo/ril/MwiRIL$RilHandler;->this$0:Lcom/mediatek/wfo/ril/MwiRIL;

    iget-object v3, v3, Lcom/mediatek/wfo/ril/MwiRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfo/ril/RILRequest;

    .line 379
    .local v3, "rr":Lcom/mediatek/wfo/ril/RILRequest;
    const-string v4, "MwiRIL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/mediatek/wfo/ril/RILRequest;->mRequest:I

    .line 380
    invoke-static {v6}, Lcom/mediatek/wfo/ril/MwiRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "rr":Lcom/mediatek/wfo/ril/RILRequest;
    :cond_6
    monitor-exit v0

    .line 385
    nop

    .line 427
    :cond_7
    :goto_1
    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
