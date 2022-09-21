.class Lcom/mediatek/ims/internal/WfcDispatcher$4$1;
.super Ljava/lang/Object;
.source "WfcDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/WfcDispatcher$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/WfcDispatcher$4;

.field final synthetic val$locationReq:Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/WfcDispatcher$4;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/WfcDispatcher$4;

    .line 241
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->this$1:Lcom/mediatek/ims/internal/WfcDispatcher$4;

    iput-object p2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->val$locationReq:Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->this$1:Lcom/mediatek/ims/internal/WfcDispatcher$4;

    iget-object v0, v0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " start for transaction-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->val$locationReq:Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    iget v2, v2, Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;->transactionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->this$1:Lcom/mediatek/ims/internal/WfcDispatcher$4;

    iget-object v0, v0, Lcom/mediatek/ims/internal/WfcDispatcher$4;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->val$locationReq:Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$700(Lcom/mediatek/ims/internal/WfcDispatcher;Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->this$1:Lcom/mediatek/ims/internal/WfcDispatcher$4;

    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$4$1;->val$locationReq:Lcom/mediatek/ims/internal/WfcDispatcher$GeoLocationTask;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/ims/internal/WfcDispatcher$4;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 248
    return-void
.end method
