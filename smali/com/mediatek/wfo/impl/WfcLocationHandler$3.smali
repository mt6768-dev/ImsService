.class Lcom/mediatek/wfo/impl/WfcLocationHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "WfcLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/WfcLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WfcLocationHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 1157
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1160
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->log(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.intent.action.LOCATED_PLMN_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1165
    const-string v0, "iso"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1166
    .local v0, "lowerCaseCountryCode":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1167
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "isoCountryCode":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_LOCATED_PLMN_CHANGED, iso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WfcLocationHandler"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    if-eqz v2, :cond_1

    const-string v3, "CN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1202(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    goto :goto_0

    .line 1173
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v3, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1202(Lcom/mediatek/wfo/impl/WfcLocationHandler;Z)Z

    .line 1176
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1300(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1177
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v3, 0xbbd

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1179
    .end local v2    # "isoCountryCode":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1180
    :cond_3
    const-string v1, "WfcLocationHandler"

    const-string v2, "iso country code is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .end local v0    # "lowerCaseCountryCode":Ljava/lang/String;
    :goto_1
    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1183
    const-string v0, "WfcLocationHandler"

    const-string v1, "LocationManager.MODE_CHANGED_ACTION"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v1, 0xbc1

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3

    .line 1185
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1186
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 1187
    invoke-static {v0}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$1400(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1188
    .local v0, "isNlpEnabled":Z
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$800(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1189
    :try_start_0
    const-string v1, "WfcLocationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationManager.PROVIDERS_CHANGED_ACTION isNlpEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", location timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    .line 1190
    invoke-static {v4}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-static {v1, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->access$900(Lcom/mediatek/wfo/impl/WfcLocationHandler;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 1192
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v3, 0xbc5

    invoke-virtual {v1, v3}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1194
    :cond_6
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1195
    .end local v0    # "isNlpEnabled":Z
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.mediatek.intent.action.LOCATION_HANDLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1196
    const-string v0, "enable_location_handle"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1197
    .local v0, "cacheEnable":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WfcLocationHandler$3;->this$0:Lcom/mediatek/wfo/impl/WfcLocationHandler;

    const/16 v3, 0xbc3

    invoke-virtual {v2, v3, v0, v1}, Lcom/mediatek/wfo/impl/WfcLocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1198
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 1195
    .end local v0    # "cacheEnable":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    :goto_2
    nop

    .line 1200
    :goto_3
    return-void

    .line 1161
    :cond_9
    :goto_4
    return-void
.end method
