.class Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;
.super Landroid/os/Handler;
.source "ImsEventPackageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsEventPackageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/ImsEventPackageAdapter;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 233
    iput-object p1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    .line 234
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 235
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsEventPackageAdapter"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 241
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 242
    const-string v2, "message error"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 245
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/mediatek/ims/ImsEventPackageAdapter;->access$100(Lcom/mediatek/ims/ImsEventPackageAdapter;Ljava/util/ArrayList;)V

    .line 252
    :goto_0
    const-string v2, "Unregistered event"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsEventPackageAdapter$MyHandler;->this$0:Lcom/mediatek/ims/ImsEventPackageAdapter;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mediatek/ims/ImsEventPackageAdapter;->access$000(Lcom/mediatek/ims/ImsEventPackageAdapter;[Ljava/lang/String;)V

    .line 248
    nop

    .line 255
    :goto_1
    return-void
.end method
