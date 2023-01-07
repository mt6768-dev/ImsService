.class Lcom/mediatek/ims/ImsConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/ImsConfigManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/ImsConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/ImsConfigManager;

    .line 106
    iput-object p1, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.ims.config.action.DYNAMIC_IMS_SWITCH_TRIGGER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "phone"

    const/4 v2, -0x1

    const-string v3, "ImsConfigManager"

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "phoneId":I
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "simState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DYNAMIC_IMS_SWITCH_TRIGGER phoneId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v2, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v2, p1, p2}, Lcom/mediatek/ims/ImsConfigManager;->access$000(Lcom/mediatek/ims/ImsConfigManager;Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    .end local v0    # "phoneId":I
    .end local v1    # "simState":Ljava/lang/String;
    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "OM"

    const-string v5, "persist.vendor.operator.optr"

    const-string v6, "OP236"

    const/16 v7, 0x3eb

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    const-string v1, "phone_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .restart local v0    # "phoneId":I
    const-string v1, "item"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, "itemId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_IMS_CONFIG_CHANGED phoneId:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", itemId:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-ne v7, v1, :cond_4

    .line 128
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/mediatek/ims/ImsConfigManager;->access$100(Lcom/mediatek/ims/ImsConfigManager;II)V

    goto :goto_0

    .line 132
    .end local v0    # "phoneId":I
    .end local v1    # "itemId":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v8, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .restart local v0    # "phoneId":I
    if-gez v0, :cond_2

    return-void

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/ims/ImsConfigManager;->getEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v1

    .line 138
    .local v1, "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :try_start_0
    invoke-interface {v1, v7}, Lcom/mediatek/ims/internal/IMtkImsConfig;->getProvisionedValue(I)I

    move-result v2

    .line 140
    .local v2, "value":I
    iget-object v4, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v4}, Lcom/mediatek/ims/ImsConfigManager;->access$200(Lcom/mediatek/ims/ImsConfigManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v4

    .line 141
    .local v4, "imsManager":Lcom/android/ims/ImsManager;
    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v5

    .line 142
    .local v5, "volteEnabledByPlatform":Z
    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 143
    const-string v6, "ignore setVdpProvision for internal test."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/mediatek/ims/ImsConfigManager$1;->this$0:Lcom/mediatek/ims/ImsConfigManager;

    invoke-static {v6, v0, v2}, Lcom/mediatek/ims/ImsConfigManager;->access$100(Lcom/mediatek/ims/ImsConfigManager;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "value":I
    .end local v4    # "imsManager":Lcom/android/ims/ImsManager;
    .end local v5    # "volteEnabledByPlatform":Z
    goto :goto_1

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProvisionedValue fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v0    # "phoneId":I
    .end local v1    # "imsConfig":Lcom/mediatek/ims/internal/IMtkImsConfig;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    nop

    .line 152
    :cond_5
    :goto_1
    return-void
.end method
