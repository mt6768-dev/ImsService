.class Lcom/mediatek/ims/internal/ImsDataTracker$1;
.super Landroid/os/Handler;
.source "ImsDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsDataTracker;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsDataTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsDataTracker;

    .line 123
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 126
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not handle the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$300(Lcom/mediatek/ims/internal/ImsDataTracker;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local p0    # "this":Lcom/mediatek/ims/internal/ImsDataTracker$1;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$000(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 129
    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$200(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V

    .line 135
    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ims/internal/ImsDataTracker$1;->this$0:Lcom/mediatek/ims/internal/ImsDataTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-static {v0, v1}, Lcom/mediatek/ims/internal/ImsDataTracker;->access$100(Lcom/mediatek/ims/internal/ImsDataTracker;Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
