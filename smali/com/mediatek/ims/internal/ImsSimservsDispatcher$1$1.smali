.class Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;
.super Landroid/os/Handler;
.source "ImsSimservsDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    .line 49
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;->this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 52
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/ims/ImsAdapter$VaEvent;

    .line 54
    .local v0, "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSimservsDispatcher receives request ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Lcom/mediatek/ims/ImsAdapter$VaEvent;->getDataLen()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$100(Ljava/lang/String;)V

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    const v3, 0xdbd31

    if-eq v1, v3, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsSimservsDispatcher receives unhandled message ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1$1;->this$1:Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;

    iget-object v1, v1, Lcom/mediatek/ims/internal/ImsSimservsDispatcher$1;->this$0:Lcom/mediatek/ims/internal/ImsSimservsDispatcher;

    invoke-static {v1, v0}, Lcom/mediatek/ims/internal/ImsSimservsDispatcher;->access$200(Lcom/mediatek/ims/internal/ImsSimservsDispatcher;Lcom/mediatek/ims/ImsAdapter$VaEvent;)V

    .line 65
    .end local v0    # "event":Lcom/mediatek/ims/ImsAdapter$VaEvent;
    :cond_1
    :goto_0
    return-void
.end method
