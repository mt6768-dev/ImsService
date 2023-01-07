.class Lcom/mediatek/ims/internal/DataDispatcher$3$1;
.super Landroid/os/Handler;
.source "DataDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/DataDispatcher$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DataDispatcher$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/DataDispatcher$3;

    .line 341
    iput-object p1, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receives request ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    .line 346
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xc3505

    if-eq v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receives unhandled message ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/DataDispatcher;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local p0    # "this":Lcom/mediatek/ims/internal/DataDispatcher$3$1;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/DataDispatcher$3$1;->this$1:Lcom/mediatek/ims/internal/DataDispatcher$3;

    iget-object v0, v0, Lcom/mediatek/ims/internal/DataDispatcher$3;->this$0:Lcom/mediatek/ims/internal/DataDispatcher;

    invoke-static {v0}, Lcom/mediatek/ims/internal/DataDispatcher;->access$100(Lcom/mediatek/ims/internal/DataDispatcher;)Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DataDispatcher$DataConnection;->onImsRequestTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    nop

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
