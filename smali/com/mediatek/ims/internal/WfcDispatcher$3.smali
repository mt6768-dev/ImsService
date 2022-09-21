.class Lcom/mediatek/ims/internal/WfcDispatcher$3;
.super Landroid/content/BroadcastReceiver;
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

    .line 200
    iput-object p1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 203
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const-string v0, "iso"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "lowerCaseCountryCode":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$502(Lcom/mediatek/ims/internal/WfcDispatcher;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_LOCATED_PLMN_CHANGED, iso: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    invoke-static {v3}, Lcom/mediatek/ims/internal/WfcDispatcher;->access$500(Lcom/mediatek/ims/internal/WfcDispatcher;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/internal/WfcDispatcher$3;->this$0:Lcom/mediatek/ims/internal/WfcDispatcher;

    const-string v2, "iso country code is null"

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/WfcDispatcher;->log(Ljava/lang/String;)V

    .line 218
    .end local v0    # "lowerCaseCountryCode":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 204
    :cond_3
    :goto_1
    return-void
.end method
