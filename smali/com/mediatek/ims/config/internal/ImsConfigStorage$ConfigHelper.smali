.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

.field private mHandler:Landroid/os/Handler;

.field private mInitDone:Z

.field private mOpCode:I

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 946
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 947
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 948
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 949
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 950
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 951
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 955
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 956
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 957
    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 958
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 960
    const/4 v2, 0x0

    .line 962
    .local v2, "opCode":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigSetting(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 963
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse SETTING_ID_OPCODE error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsConfigStorage"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    goto :goto_1

    .line 964
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 965
    .local v0, "e":Lcom/android/ims/ImsException;
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 969
    .end local v0    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 970
    :goto_1
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 945
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 945
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->clear()V

    return-void
.end method

.method private addConfig(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1238
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1240
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v0

    .line 1241
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1246
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1248
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1249
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private addConfigSetting(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, "result":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1044
    .local v1, "cv":Landroid/content/ContentValues;
    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "phone_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "setting_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1048
    if-eqz v0, :cond_0

    .line 1052
    return-void

    .line 1049
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConfigSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clear()V
    .locals 4

    .line 1211
    const-string v0, "phone_id = ?"

    .line 1212
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1213
    .local v1, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1214
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1215
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1216
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1217
    return-void
.end method

.method private enforceConfigId(I)V
    .locals 3
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1385
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    return-void

    .line 1386
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private enforceDefaultValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "configId"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1378
    const-string v0, "n/a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    return-void

    .line 1379
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getConfigCv(III)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # I

    .line 1219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1220
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1223
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1224
    return-object v0
.end method

.method private getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 1228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1230
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1232
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-object v0
.end method

.method private getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1281
    const-string v0, "phone_id"

    const-string v1, "config_id"

    const-string v2, "mimetype_id"

    const-string v3, "data"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1286
    .local v6, "projection":[Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {p1, v0, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 1287
    .local v0, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1288
    .local v1, "c":Landroid/database/Cursor;
    const/16 v2, 0x65

    if-eqz v1, :cond_2

    .line 1289
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1290
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1291
    return-object v1

    .line 1292
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "Config "

    if-nez v3, :cond_1

    .line 1293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1294
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " shall exist in table: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1298
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1299
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " shall exist once in table: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1304
    :cond_2
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null cursor with config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getConfigSetting(I)Ljava/lang/String;
    .locals 13
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1069
    const-string v0, " for phone "

    const-string v1, "getConfigSetting "

    const/4 v2, 0x0

    .line 1070
    .local v2, "c":Landroid/database/Cursor;
    const-string v3, ""

    .line 1071
    .local v3, "result":Ljava/lang/String;
    const-string v4, "phone_id"

    const-string v5, "setting_id"

    const-string v6, "value"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v9

    .line 1076
    .local v9, "projection":[Ljava/lang/String;
    const/16 v4, 0x66

    :try_start_0
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1077
    invoke-static {v5, p1}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1076
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v2, v5

    .line 1080
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 1081
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1082
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1083
    .local v5, "index":I
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 1084
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    .end local v5    # "index":I
    nop

    .line 1095
    if-eqz v2, :cond_0

    .line 1096
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1100
    :cond_0
    return-object v3

    .line 1086
    :cond_1
    :try_start_1
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "result":Ljava/lang/String;
    .end local v9    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1090
    :catch_0
    move-exception v5

    .line 1091
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Lcom/android/ims/ImsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found or something wrong with cursor"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "result":Ljava/lang/String;
    .end local v9    # "projection":[Ljava/lang/String;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "id":I
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1095
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v9    # "projection":[Ljava/lang/String;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "id":I
    :goto_0
    if-eqz v2, :cond_2

    .line 1096
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1098
    :cond_2
    throw v0
.end method

.method private getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1344
    const-string v0, ", but "

    const-string v1, " shall be type "

    const-string v2, "Config "

    const/4 v3, -0x1

    .line 1346
    .local v3, "mimeType":I
    const/4 v4, 0x0

    .line 1347
    .local v4, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1350
    const/16 v5, 0x65

    const/4 v6, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1351
    const-string v7, "data"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1352
    .local v7, "dataIndex":I
    const-string v8, "mimetype_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1353
    .local v8, "mimeTypeIndex":I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v3, v9

    .line 1355
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1356
    if-ne v3, v6, :cond_1

    .line 1361
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    .local v0, "result":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1370
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1374
    :cond_0
    return-object v0

    .line 1357
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/ims/ImsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1369
    .end local v7    # "dataIndex":I
    .end local v8    # "mimeTypeIndex":I
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1363
    :catch_0
    move-exception v7

    .line 1364
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or something wrong with cursor"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1369
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :goto_0
    if-eqz v4, :cond_2

    .line 1370
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1372
    :cond_2
    throw v0
.end method

.method private getConfigValue(Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1311
    const-string v0, ", but "

    const-string v1, " shall be type "

    const-string v2, "Config "

    const/4 v3, -0x1

    .line 1312
    .local v3, "mimeType":I
    const/4 v4, 0x0

    .line 1313
    .local v4, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1316
    const/16 v5, 0x65

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    move-object v4, v7

    .line 1317
    const-string v7, "data"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1318
    .local v7, "dataIndex":I
    const-string v8, "mimetype_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1319
    .local v8, "mimeTypeIndex":I
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move v3, v9

    .line 1321
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p2, v9}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1322
    if-nez v3, :cond_1

    .line 1327
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    .local v0, "result":I
    if-eqz v4, :cond_0

    .line 1336
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1340
    :cond_0
    return v0

    .line 1323
    .end local v0    # "result":I
    :cond_1
    :try_start_1
    new-instance v9, Lcom/android/ims/ImsException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    .end local v7    # "dataIndex":I
    .end local v8    # "mimeTypeIndex":I
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1329
    :catch_0
    move-exception v7

    .line 1330
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v8, Lcom/android/ims/ImsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or something wrong with cursor"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v3    # "mimeType":I
    .end local v4    # "c":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "table":Ljava/lang/String;
    .end local p2    # "configId":I
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1335
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "mimeType":I
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .restart local p1    # "table":Ljava/lang/String;
    .restart local p2    # "configId":I
    :goto_0
    if-eqz v4, :cond_2

    .line 1336
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1338
    :cond_2
    throw v0
.end method

.method private initConfigSettingStorage(I)V
    .locals 2
    .param p1, "opCode"    # I

    .line 1037
    nop

    .line 1038
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1037
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfigSetting(ILjava/lang/String;)V

    .line 1039
    return-void
.end method

.method private initDefaultStorage(I)V
    .locals 12
    .param p1, "opCode"    # I

    .line 1105
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v0

    .line 1106
    .local v0, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1109
    .local v1, "defSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;>;"
    invoke-static {p1}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->getInstanceByOpCode(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 1110
    invoke-virtual {v2}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->load()Ljava/util/HashMap;

    move-result-object v1

    .line 1111
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1112
    const-string v2, "ImsConfigStorage"

    const-string v3, "No default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void

    .line 1116
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1117
    .local v3, "configId":Ljava/lang/Integer;
    const-string v4, "n/a"

    .line 1118
    .local v4, "value":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1119
    .local v5, "unitId":I
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->hasDefaultValue(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1120
    goto :goto_0

    .line 1122
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 1123
    .local v6, "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    if-eqz v6, :cond_2

    .line 1124
    iget-object v4, v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 1125
    iget v5, v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 1127
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 1128
    .local v7, "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    iget v8, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    const-string v9, "unit_id"

    if-nez v8, :cond_3

    .line 1129
    nop

    .line 1130
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1129
    invoke-direct {p0, v8, v10, v11}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v8

    .line 1131
    .local v8, "cv":Landroid/content/ContentValues;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1132
    iget-object v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v8    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 1133
    :cond_3
    const/4 v8, 0x1

    iget v10, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    if-ne v8, v10, :cond_4

    .line 1134
    nop

    .line 1135
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v10, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    .line 1134
    invoke-direct {p0, v8, v10, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 1136
    .restart local v8    # "cv":Landroid/content/ContentValues;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    iget-object v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 1133
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    nop

    .line 1141
    .end local v3    # "configId":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "unitId":I
    .end local v6    # "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    .end local v7    # "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    :goto_2
    goto :goto_0

    .line 1142
    :cond_5
    return-void
.end method

.method private initMasterStorage()V
    .locals 20

    .line 1146
    move-object/from16 v1, p0

    const-string v2, "data"

    const-string v3, "mimetype_id"

    const-string v4, "config_id"

    const-string v5, "phone_id"

    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v6

    .line 1148
    .local v6, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1208
    return-void

    .line 1148
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    .line 1149
    .local v8, "configId":Ljava/lang/Integer;
    const/4 v9, 0x0

    .line 1150
    .local v9, "c":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v10, v0

    .line 1151
    .local v10, "cv":Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 1152
    .local v11, "isFoundInNvRam":Z
    const/4 v12, 0x1

    .line 1157
    .local v12, "isFoundInAny":Z
    :try_start_0
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v13, "here"

    const/16 v14, 0x66

    invoke-direct {v0, v13, v14}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v8    # "configId":Ljava/lang/Integer;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "isFoundInNvRam":Z
    .end local v12    # "isFoundInAny":Z
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    .restart local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v8    # "configId":Ljava/lang/Integer;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "cv":Landroid/content/ContentValues;
    .restart local v11    # "isFoundInNvRam":Z
    .restart local v12    # "isFoundInAny":Z
    .restart local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 1161
    .local v13, "e":Lcom/android/ims/ImsException;
    :try_start_1
    const-string v0, "tb_default"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v1, v0, v14}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 1162
    if-eqz v9, :cond_1

    .line 1163
    nop

    .line 1164
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1165
    .local v0, "phoneIdIndex":I
    nop

    .line 1166
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1167
    .local v14, "configIndex":I
    nop

    .line 1168
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1169
    .local v15, "mimeTypeIndex":I
    nop

    .line 1170
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move/from16 v17, v16

    .line 1171
    .local v17, "dataIndex":I
    nop

    .line 1172
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v18, v0

    .end local v0    # "phoneIdIndex":I
    .local v18, "phoneIdIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1171
    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1173
    nop

    .line 1174
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1173
    invoke-virtual {v10, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    nop

    .line 1176
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1175
    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1177
    nop

    .line 1178
    move-object/from16 v16, v6

    move/from16 v0, v17

    .end local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v17    # "dataIndex":I
    .local v0, "dataIndex":I
    .local v16, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1177
    invoke-virtual {v10, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v6, "ImsConfigStorage"
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v7

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v19, v12

    .end local v12    # "isFoundInAny":Z
    .local v19, "isFoundInAny":Z
    :try_start_4
    const-string v12, "Load default value "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " for config "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1186
    .end local v0    # "dataIndex":I
    .end local v14    # "configIndex":I
    .end local v15    # "mimeTypeIndex":I
    .end local v18    # "phoneIdIndex":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1183
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v19    # "isFoundInAny":Z
    .restart local v12    # "isFoundInAny":Z
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1186
    :catchall_1
    move-exception v0

    move/from16 v19, v12

    .end local v12    # "isFoundInAny":Z
    .restart local v19    # "isFoundInAny":Z
    goto :goto_3

    .line 1183
    .end local v19    # "isFoundInAny":Z
    .restart local v12    # "isFoundInAny":Z
    :catch_3
    move-exception v0

    move-object/from16 v17, v7

    :goto_1
    move/from16 v19, v12

    .end local v12    # "isFoundInAny":Z
    .restart local v19    # "isFoundInAny":Z
    goto :goto_4

    .line 1162
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v19    # "isFoundInAny":Z
    .restart local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v12    # "isFoundInAny":Z
    :cond_1
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v19, v12

    .line 1186
    .end local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v12    # "isFoundInAny":Z
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v19    # "isFoundInAny":Z
    :goto_2
    if-eqz v9, :cond_2

    .line 1187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1191
    .end local v13    # "e":Lcom/android/ims/ImsException;
    :cond_2
    move/from16 v12, v19

    goto :goto_5

    .line 1186
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v19    # "isFoundInAny":Z
    .restart local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v12    # "isFoundInAny":Z
    .restart local v13    # "e":Lcom/android/ims/ImsException;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v19, v12

    .end local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v12    # "isFoundInAny":Z
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v19    # "isFoundInAny":Z
    :goto_3
    if-eqz v9, :cond_3

    .line 1187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1189
    :cond_3
    throw v0

    .line 1183
    .end local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v19    # "isFoundInAny":Z
    .restart local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v12    # "isFoundInAny":Z
    :catch_4
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move/from16 v19, v12

    .line 1184
    .end local v6    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .end local v12    # "isFoundInAny":Z
    .local v0, "e2":Lcom/android/ims/ImsException;
    .restart local v16    # "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    .restart local v19    # "isFoundInAny":Z
    :goto_4
    const/4 v12, 0x0

    .line 1186
    .end local v0    # "e2":Lcom/android/ims/ImsException;
    .end local v19    # "isFoundInAny":Z
    .restart local v12    # "isFoundInAny":Z
    if-eqz v9, :cond_4

    .line 1187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1191
    .end local v13    # "e":Lcom/android/ims/ImsException;
    :cond_4
    :goto_5
    if-eqz v12, :cond_5

    if-nez v9, :cond_6

    .line 1192
    :cond_5
    iget v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    invoke-virtual {v10, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    nop

    .line 1195
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/ims/config/ImsConfigSettings;->getMimeType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1194
    invoke-virtual {v10, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1196
    const-string v0, "n/a"

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_6
    iget-object v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1204
    if-eqz v11, :cond_7

    .line 1205
    iget-object v0, v1, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1207
    .end local v8    # "configId":Ljava/lang/Integer;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "cv":Landroid/content/ContentValues;
    .end local v11    # "isFoundInNvRam":Z
    .end local v12    # "isFoundInAny":Z
    :cond_7
    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto/16 :goto_0
.end method

.method static loadConfigStorage(Landroid/os/Handler;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "operatorCode"    # I

    .line 1023
    if-eqz p0, :cond_1

    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1026
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1027
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1028
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1029
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadConfigStorage() msg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImsConfigStorage"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1034
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateConfig(Ljava/lang/String;III)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1254
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1256
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1257
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1262
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1263
    invoke-static {p1, v2, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1262
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateConfig(Ljava/lang/String;IILjava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1268
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1271
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "config_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mimetype_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1274
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1277
    invoke-static {p1, v2, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1276
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateConfigSetting(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 1055
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1056
    .local v0, "cv":Landroid/content/ContentValues;
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1057
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setting_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1059
    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    const-string v2, "tb_config_setting"

    invoke-static {v2, v1, p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v1

    .line 1061
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1062
    .local v2, "count":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1066
    return-void

    .line 1063
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConfigSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method declared-synchronized getOpCode()I
    .locals 1

    monitor-enter p0

    .line 977
    :try_start_0
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 977
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init()V
    .locals 1

    .line 994
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 995
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 996
    return-void
.end method

.method init(I)V
    .locals 0
    .param p1, "opCode"    # I

    .line 999
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 1002
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initConfigSettingStorage(I)V

    .line 1003
    return-void
.end method

.method declared-synchronized isInitDone()Z
    .locals 1

    monitor-enter p0

    .line 990
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 990
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isStorageInitialized()Z
    .locals 10

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "initialized":Z
    const-string v1, "phone_id"

    const-string v2, "setting_id"

    const-string v3, "value"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "projection":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1012
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v5

    .line 1011
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1016
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1017
    const/4 v0, 0x1

    .line 1019
    :cond_0
    return v0
.end method

.method declared-synchronized setInitDone(Z)V
    .locals 3
    .param p1, "done"    # Z

    monitor-enter p0

    .line 981
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 984
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit p0

    return-void

    .line 980
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "done":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setOpCode(I)V
    .locals 0
    .param p1, "opCode"    # I

    monitor-enter p0

    .line 973
    :try_start_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit p0

    return-void

    .line 972
    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .end local p1    # "opCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
