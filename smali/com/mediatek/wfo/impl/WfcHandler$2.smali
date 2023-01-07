.class Lcom/mediatek/wfo/impl/WfcHandler$2;
.super Landroid/database/ContentObserver;
.source "WfcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcHandler;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcHandler;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 792
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 795
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver.onChange(), selfChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/mediatek/wfo/impl/WfcHandler;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    .line 800
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$600(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    const-string v1, "wfc_aid_value"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty aid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 805
    return-void

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/WfcHandler;->access$702(Lcom/mediatek/wfo/impl/WfcHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 809
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWfcEccAid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v4}, Lcom/mediatek/wfo/impl/WfcHandler;->access$700(Lcom/mediatek/wfo/impl/WfcHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WfcHandler;->log(Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WfcHandler;->access$600(Lcom/mediatek/wfo/impl/WfcHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 814
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcHandler$2;->this$0:Lcom/mediatek/wfo/impl/WfcHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WfcHandler;->sendMessage(Landroid/os/Message;)Z

    .line 816
    .end local v0    # "aid":Ljava/lang/String;
    :cond_1
    return-void
.end method
