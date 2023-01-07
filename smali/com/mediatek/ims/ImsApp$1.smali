.class Lcom/mediatek/ims/ImsApp$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsApp;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsApp;

    .line 105
    iput-object p1, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "numOfActiveModems":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MULTI_SIM_CONFIG_CHANGED, mNumOfPhones: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v2}, Lcom/mediatek/ims/ImsApp;->access$000(Lcom/mediatek/ims/ImsApp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", numOfActiveModems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsApp"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v1}, Lcom/mediatek/ims/ImsApp;->access$000(Lcom/mediatek/ims/ImsApp;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v1}, Lcom/mediatek/ims/ImsApp;->access$100(Lcom/mediatek/ims/ImsApp;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/mediatek/ims/ImsApp$1;->this$0:Lcom/mediatek/ims/ImsApp;

    invoke-static {v1}, Lcom/mediatek/ims/ImsApp;->access$100(Lcom/mediatek/ims/ImsApp;)Lcom/mediatek/ims/ImsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/ims/ImsService;->clearImsRilRequest()V

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 124
    :cond_1
    return-void
.end method
