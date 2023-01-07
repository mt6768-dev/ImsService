.class public Lcom/mediatek/ims/config/internal/ImsConfigAdapter;
.super Ljava/lang/Object;
.source "ImsConfigAdapter.java"


# static fields
.field private static final DEBUG:Z

.field public static final ISLAST_FALSE:I = 0x0

.field public static final ISLAST_NULL:I = -0x1

.field public static final ISLAST_TRUE:I = 0x1

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final TAG:Ljava/lang/String; = "ImsConfigAdapter"

.field private static final TELDBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

.field private mLogTag:Ljava/lang/String;

.field private mPhoneId:I

.field mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "persist.vendor.log.tel_dbg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 21
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->DEBUG:Z

    .line 22
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    sput-boolean v2, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->TELDBG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mPhoneId:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/ims/ril/ImsCommandsInterface;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsRilAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p3, "phoneId"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mPhoneId:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mPhoneId:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsConfigAdapter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mLogTag:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-direct {v0, p1, p3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigController;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-direct {v0, p1, p3, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;-><init>(Landroid/content/Context;ILcom/mediatek/ims/ril/ImsCommandsInterface;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public getFeatureValue(II)I
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->getFeatureValue(II)I

    move-result v0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->getFeatureValue(II)I

    move-result v0

    return v0
.end method

.method public getImsResCapability(I)I
    .locals 1
    .param p1, "featureId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 140
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 141
    const/4 p1, 0x1

    .line 144
    :cond_0
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->getImsResCapability(I)I

    move-result v0

    return v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->getImsResCapability(I)I

    move-result v0

    return v0
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->getProvisionedValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionedValue(I)I
    .locals 6
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, "value":I
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v1, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->getProvisionedValue(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 121
    nop

    .line 122
    return v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProvisionedValue wrong, reason: return string while expecting int, result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 124
    .end local v0    # "value":I
    .end local v1    # "stringValue":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->getProvisionedValue(I)I

    move-result v0

    return v0
.end method

.method public sendWfcProfileInfo(I)V
    .locals 1
    .param p1, "rilWfcMode"    # I

    .line 172
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->sendWfcProfileInfo(I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->sendWfcProfileInfo(I)V

    .line 177
    :goto_0
    return-void
.end method

.method public setFeatureValue(IIII)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "isLast"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setFeatureValue(IIII)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setFeatureValue(III)V

    .line 91
    :goto_0
    return-void
.end method

.method public setImsResCapability(II)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mLogTag:Ljava/lang/String;

    const-string v1, "setImsResCapability not supported!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setImsResCapability(II)V

    .line 135
    :goto_0
    return-void
.end method

.method public setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "type"    # I

    .line 193
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setModemImsCfg([Ljava/lang/String;[Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "configId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 103
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setProvisionedValue(ILjava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setProvisionedStringValue(ILjava/lang/String;)V

    .line 108
    :goto_0
    return-void
.end method

.method public setProvisionedValue(II)V
    .locals 2
    .param p1, "configId"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setProvisionedValue(ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setProvisionedValue(II)V

    .line 99
    :goto_0
    return-void
.end method

.method public setVoltePreference(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 185
    invoke-static {}, Lcom/mediatek/ims/ImsCommonUtil;->supportMdAutoSetupIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mController:Lcom/mediatek/ims/config/internal/ImsConfigController;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigController;->setVoltePreference(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigAdapter;->mStorage:Lcom/mediatek/ims/config/internal/ImsConfigStorage;

    invoke-virtual {v0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->setVoltePreference(I)V

    .line 190
    :goto_0
    return-void
.end method
