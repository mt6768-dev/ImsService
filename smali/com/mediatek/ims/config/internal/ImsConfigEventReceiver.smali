.class public Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigEventReceiver.java"


# static fields
.field private static final ACTION_CXP_NOTIFY_FEATURE:Ljava/lang/String; = "com.mediatek.common.carrierexpress.cxp_notify_feature"

.field private static final DEBUG:Z

.field private static final PROPERTY_MTK_RCS_UA_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_rcs_ua_support"

.field private static final PROPERTY_MTK_VILTE_SUPPORT:Ljava/lang/String; = "persist.vendor.vilte_support"

.field private static final PROPERTY_MTK_VIWIFI_SUPPORT:Ljava/lang/String; = "persist.vendor.viwifi_support"

.field private static final PROPERTY_MTK_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.volte_support"

.field private static final PROPERTY_MTK_WFC_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_wfc_support"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigEventReceiver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

.field private mIsCarrierConfigLoaded:Z

.field private mLogTag:Ljava/lang/String;

.field private mMainPhoneId:I

.field private final mPhoneId:I

.field private mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 36
    const-string v0, "persist.vendor.log.tel_dbg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "phoneId"    # I
    .param p3, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 59
    iput p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 60
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsConfigEventReceiver["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 238
    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 240
    .local v0, "phoneId":I
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-eq v0, v1, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 245
    .local v1, "simState":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received CARRIER_CONFIG_CHANGED["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 248
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 251
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 252
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v4, "No need to reload config storage"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void

    .line 262
    :cond_2
    const-string v3, "ACTION_CARRIER_CONFIG_CHANGED"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 264
    const-string v3, "mtk_wfc_remove_preference_mode_bool"

    invoke-static {p1, v3, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    .line 266
    .local v3, "removeWfcPrefMode":Z
    const-string v4, "editable_wfc_mode_bool"

    invoke-static {p1, v4, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    .line 268
    .local v4, "wfcModeEditable":Z
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_WFC_REMOVE_PREFERENCE_MODE_BOOL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_EDITABLE_WFC_MODE_BOOL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    if-nez v4, :cond_5

    .line 271
    const-string v5, "carrier_default_wfc_ims_mode_int"

    invoke-static {p1, v5, v0}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getIntCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 273
    .local v5, "wfcMode":I
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_CARRIER_CONFIG_CHANGED: set wfc mode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", phoneId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v6

    if-nez v6, :cond_4

    .line 278
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v6

    if-ne v6, v0, :cond_3

    goto :goto_0

    .line 281
    :cond_3
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no set wfc mode due to mims: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", main phone id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainPhoneIdForSingleIms()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    :cond_4
    :goto_0
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/ims/ImsManager;->setWfcMode(I)V

    .line 285
    .end local v5    # "wfcMode":I
    :cond_5
    :goto_1
    return-void
.end method

.method private resetWfcModeFlag(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 290
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWfcModeFlag, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 293
    return-void
.end method

.method private updateFeatureSupportProperty(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 185
    const-string v0, "persist.vendor.mtk_wfc_support"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 187
    .local v0, "isWfcOn":Z
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnWfc(Landroid/os/Message;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v4, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffWfc(Landroid/os/Message;)V

    .line 194
    :goto_0
    const-string v4, "persist.vendor.volte_support"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 196
    .local v4, "isVolteOn":Z
    if-eqz v4, :cond_1

    .line 197
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVolte(Landroid/os/Message;)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v5, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVolte(Landroid/os/Message;)V

    .line 203
    :goto_1
    const-string v5, "persist.vendor.vilte_support"

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 205
    .local v5, "isVilteOn":Z
    if-eqz v5, :cond_2

    .line 206
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnVilte(Landroid/os/Message;)V

    goto :goto_2

    .line 208
    :cond_2
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v6, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffVilte(Landroid/os/Message;)V

    .line 212
    :goto_2
    const-string v6, "persist.vendor.viwifi_support"

    invoke-virtual {p1, v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 214
    .local v6, "isViWiFiOn":Z
    if-eqz v6, :cond_3

    .line 215
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnViwifi(Landroid/os/Message;)V

    goto :goto_3

    .line 217
    :cond_3
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v7, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffViwifi(Landroid/os/Message;)V

    .line 221
    :goto_3
    const-string v7, "persist.vendor.mtk_rcs_ua_support"

    invoke-virtual {p1, v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 223
    .local v7, "isRcsUaOn":Z
    if-eqz v7, :cond_4

    .line 224
    iget-object v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v8, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOnRcsUa(Landroid/os/Message;)V

    goto :goto_4

    .line 226
    :cond_4
    iget-object v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mRilAdapter:Lcom/mediatek/ims/ril/ImsCommandsInterface;

    invoke-interface {v8, v3}, Lcom/mediatek/ims/ril/ImsCommandsInterface;->turnOffRcsUa(Landroid/os/Message;)V

    .line 229
    :goto_4
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateFeatureSupportProperty(), volte:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    if-eqz v4, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object v9, v1

    :goto_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " wfc:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    if-eqz v0, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object v9, v1

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " vilte:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    if-eqz v5, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object v9, v1

    :goto_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " viwifi:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    if-eqz v6, :cond_8

    move-object v9, v2

    goto :goto_8

    :cond_8
    move-object v9, v1

    :goto_8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isRcsUaOn:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    if-eqz v7, :cond_9

    move-object v1, v2

    :cond_9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private updateImsServiceConfig(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 296
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    if-nez v0, :cond_0

    .line 297
    invoke-static {p1}, Lcom/mediatek/ims/plugin/ExtensionFactory;->makeOemPluginFactory(Landroid/content/Context;)Lcom/mediatek/ims/plugin/OemPluginFactory;

    move-result-object v0

    .line 298
    invoke-interface {v0, p1}, Lcom/mediatek/ims/plugin/OemPluginFactory;->makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    .line 301
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMims()Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    sget-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v1, "Do not update if phoneId is not main capability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mImsManagerOemPlugin:Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 309
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 68
    const/4 v0, -0x1

    .line 69
    .local v0, "phoneId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_1
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_2
    const-string v2, "com.mediatek.common.carrierexpress.cxp_notify_feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_4
    const-string v2, "com.mediatek.ims.MTK_MMTEL_READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :goto_0
    move v1, v7

    :goto_1
    if-eqz v1, :cond_b

    if-eq v1, v8, :cond_a

    if-eq v1, v6, :cond_7

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_1

    goto/16 :goto_6

    .line 165
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 167
    .local v1, "opFeature":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 170
    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateFeatureSupportProperty(Landroid/os/Bundle;)V

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 175
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "ACTION_CXP_NOTIFY_FEATURE, opFeature is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 134
    .end local v1    # "opFeature":Landroid/os/Bundle;
    :cond_3
    const/4 v1, 0x1

    .line 136
    .local v1, "isNeedUpdate":Z
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    if-ne v2, v7, :cond_4

    .line 138
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 139
    const/4 v1, 0x0

    goto :goto_2

    .line 141
    :cond_4
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 143
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    if-ne v0, v2, :cond_5

    .line 145
    const/4 v1, 0x0

    goto :goto_2

    .line 148
    :cond_5
    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mMainPhoneId:I

    .line 150
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-eq v2, v0, :cond_6

    .line 151
    const/4 v1, 0x0

    .line 156
    :cond_6
    :goto_2
    if-eqz v1, :cond_13

    .line 157
    const-string v2, "ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET_RADIO_CAPABILITY_DONE, update IMS config with phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-direct {p0, p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 113
    .end local v1    # "isNeedUpdate":Z
    :cond_7
    const-string v1, "android:phone_id"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 116
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v0, v1, :cond_13

    .line 117
    const-string v1, "ACTION_MTK_MMTEL_READY"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->resetWfcModeFlag(Ljava/lang/String;)V

    .line 118
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 119
    .local v1, "simState":I
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_MTK_MMTEL_READY, update IMS config with phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", simState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", carrier config loaded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eq v1, v8, :cond_9

    iget-boolean v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    if-eqz v2, :cond_8

    goto :goto_3

    .line 126
    :cond_8
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "sim state isn\'t absent or carrier config isn\'t loaded, don\'t update ims service config."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 124
    :cond_9
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    .line 130
    .end local v1    # "simState":I
    :goto_4
    goto/16 :goto_6

    .line 109
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->handleCarrierConfigChanged(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    goto/16 :goto_6

    .line 71
    :cond_b
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "state":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    if-ne v0, v2, :cond_13

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x79d7dbfb

    const-string v4, "ABSENT"

    if-eq v2, v3, :cond_f

    const v3, 0x4a3e183

    if-eq v2, v3, :cond_e

    const v3, 0x72b3d739

    if-eq v2, v3, :cond_d

    :cond_c
    goto :goto_5

    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v7, v8

    goto :goto_5

    :cond_e
    const-string v2, "READY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v7, v5

    goto :goto_5

    :cond_f
    const-string v2, "LOADED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v7, v6

    :goto_5
    if-eqz v7, :cond_12

    if-eq v7, v8, :cond_10

    if-eq v7, v6, :cond_10

    goto :goto_6

    .line 87
    :cond_10
    if-ne v1, v4, :cond_11

    .line 89
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ICC_ABSENT["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], reset carrier config loaded flag."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mIsCarrierConfigLoaded:Z

    .line 94
    :cond_11
    const-string v2, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 96
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImsServiceConfig after SIM event, phoneId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->updateImsServiceConfig(Landroid/content/Context;I)V

    goto :goto_6

    .line 77
    :cond_12
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->isWfcEnabledByUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    .line 78
    invoke-static {p1, v2}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->getWfcMode(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_13

    .line 80
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mPhoneId:I

    invoke-static {p1, v2, v8}, Lcom/mediatek/ims/config/internal/ImsConfigUtils;->sendWifiOnlyModeIntent(Landroid/content/Context;IZ)V

    .line 81
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigEventReceiver;->mLogTag:Ljava/lang/String;

    const-string v3, "Turn OFF radio, after sim ready and wfc mode is wifi_only"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "state":Ljava/lang/String;
    :cond_13
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7249aca6 -> :sswitch_4
        -0x43dd7a3f -> :sswitch_3
        -0x1a88cade -> :sswitch_2
        -0xdb21ee7 -> :sswitch_1
        0x3d6899a4 -> :sswitch_0
    .end sparse-switch
.end method
