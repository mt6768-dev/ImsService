.class Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DialogEventPackageReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DialogEventPackageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    .line 79
    iput-object p1, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;->this$0:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.intent.action.ims.dialogEventPackage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;->this$0:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    invoke-static {v0, p2}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->access$000(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;Landroid/content/Intent;)V

    goto :goto_1

    .line 87
    :cond_0
    nop

    .line 88
    const-string v0, "com.mediatek.intent.extra.DEP_CONTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    .local v0, "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsExternalCallState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/ImsExternalCallState;

    .line 90
    .local v2, "dialog":Landroid/telephony/ims/ImsExternalCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_IMS_DIALOG_EVENT_PACKAGE content:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsExternalCallState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DialogEventPackageReceiver"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v2    # "dialog":Landroid/telephony/ims/ImsExternalCallState;
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$1;->this$0:Lcom/mediatek/ims/internal/DialogEventPackageReceiver;

    invoke-static {v1}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver;->access$100(Lcom/mediatek/ims/internal/DialogEventPackageReceiver;)Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/ims/internal/DialogEventPackageReceiver$Listener;->onStateChanged(Ljava/util/List;)V

    .line 95
    .end local v0    # "dialogList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/ims/ImsExternalCallState;>;"
    :cond_2
    :goto_1
    return-void
.end method
