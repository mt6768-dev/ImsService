.class public Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;
.super Ljava/lang/Object;
.source "OpImsServiceCustomizationUtils.java"


# static fields
.field static sFactory:Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

.field private static final sOperatorFactoryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 19
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sFactory:Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    .line 22
    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP08Ims.apk"

    const-string v4, "com.mediatek.op08.ims.Op08ImsServiceCustomizationFactory"

    const-string v5, "com.mediatek.op08.ims"

    const-string v6, "OP08"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v3, "OP18Ims.jar"

    const-string v4, "com.mediatek.op18.ims.Op18ImsServiceCustomizationFactory"

    const-string v5, "OP18"

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP12Ims.apk"

    const-string v3, "com.mediatek.op12.ims.Op12ImsServiceCustomizationFactory"

    const-string v4, "com.mediatek.op12.ims"

    const-string v5, "OP12"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP112Ims.apk"

    const-string v3, "com.mediatek.op112.ims.Op112ImsServiceCustomizationFactory"

    const-string v4, "com.mediatek.op112.ims"

    const-string v5, "OP112"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory(Landroid/content/Context;)Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 54
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sFactory:Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    .line 55
    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sFactory:Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;

    .line 58
    :cond_0
    sget-object v1, Lcom/mediatek/ims/ext/OpImsServiceCustomizationUtils;->sFactory:Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
