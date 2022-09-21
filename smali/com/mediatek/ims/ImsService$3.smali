.class Lcom/mediatek/ims/ImsService$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsService;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsService;

    .line 3426
    iput-object p1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3428
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volte_setting mSubInfoReceiver action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3430
    const/4 v0, 0x1

    .line 3431
    .local v0, "needDereg":Z
    const/4 v1, 0x0

    .local v1, "phoneId":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$600(Lcom/mediatek/ims/ImsService;)I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 3432
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    .line 3433
    invoke-virtual {v2, v1}, Lcom/mediatek/ims/ImsService;->getSubIdUsingPhoneId(I)I

    move-result v2

    const/4 v4, -0x1

    if-le v2, v4, :cond_0

    .line 3435
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$3900(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    invoke-static {v2, v1, v4}, Lcom/mediatek/ims/ImsService;->access$4200(Lcom/mediatek/ims/ImsService;IZ)V

    .line 3436
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aput-boolean v3, v2, v1

    .line 3438
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$3800(Lcom/mediatek/ims/ImsService;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 3439
    const/4 v0, 0x0

    .line 3431
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3442
    .end local v1    # "phoneId":I
    :cond_2
    if-eqz v0, :cond_3

    .line 3443
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1}, Lcom/mediatek/ims/ImsService;->access$800(Lcom/mediatek/ims/ImsService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v2}, Lcom/mediatek/ims/ImsService;->access$3700(Lcom/mediatek/ims/ImsService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3444
    iget-object v1, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    invoke-static {v1, v3}, Lcom/mediatek/ims/ImsService;->access$3602(Lcom/mediatek/ims/ImsService;Z)Z

    .line 3447
    .end local v0    # "needDereg":Z
    :cond_3
    iget-object v0, p0, Lcom/mediatek/ims/ImsService$3;->this$0:Lcom/mediatek/ims/ImsService;

    const-string v1, "volte_setting mSubInfoReceiver finished"

    invoke-static {v0, v1}, Lcom/mediatek/ims/ImsService;->access$100(Lcom/mediatek/ims/ImsService;Ljava/lang/String;)V

    .line 3448
    return-void
.end method
