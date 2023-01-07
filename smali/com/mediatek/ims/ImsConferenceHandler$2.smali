.class Lcom/mediatek/ims/ImsConferenceHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsConferenceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsConferenceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsConferenceHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsConferenceHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsConferenceHandler;

    .line 407
    iput-object p1, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 410
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConferenceHandler"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v1, "android.intent.action.ims.conference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    const-string v1, "message.content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "data":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "call.id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 416
    .local v2, "callId":I
    const/16 v3, 0xff

    if-eq v2, v3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 417
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mediatek/ims/ImsConferenceHandler;->access$002(Lcom/mediatek/ims/ImsConferenceHandler;Z)Z

    .line 418
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$500(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v3}, Lcom/mediatek/ims/ImsConferenceHandler;->access$600(Lcom/mediatek/ims/ImsConferenceHandler;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$400(Lcom/mediatek/ims/ImsConferenceHandler;ILjava/lang/String;)V

    goto :goto_1

    .line 419
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mediatek/ims/ImsConferenceHandler$2;->this$0:Lcom/mediatek/ims/ImsConferenceHandler;

    invoke-static {v3, v1}, Lcom/mediatek/ims/ImsConferenceHandler;->access$302(Lcom/mediatek/ims/ImsConferenceHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "callId":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 425
    :cond_3
    const-string v1, "can\'t handle conference message since no call ID. Abnormal Case"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_2
    return-void
.end method
