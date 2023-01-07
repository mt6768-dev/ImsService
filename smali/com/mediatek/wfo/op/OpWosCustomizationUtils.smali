.class public Lcom/mediatek/wfo/op/OpWosCustomizationUtils;
.super Ljava/lang/Object;
.source "OpWosCustomizationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpWosCustomizationUtils"

.field static sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

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
    .locals 6

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 54
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    .line 57
    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP07Wos.apk"

    const-string v3, "com.mediatek.op07.wfo.Op07WosCustomizationFactory"

    const-string v4, "com.mediatek.op07.wfo"

    const-string v5, "OP07"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP08Wos.apk"

    const-string v3, "com.mediatek.op08.wfo.Op08WosCustomizationFactory"

    const-string v4, "com.mediatek.op08.wfo"

    const-string v5, "OP08"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory(Landroid/content/Context;)Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 73
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_0

    .line 71
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 74
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_1
    const-string v2, "OpWosCustomizationUtils"

    const-string v3, "OpWosCustomizationFactoryBase ClassCastException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_0
    sget-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    invoke-direct {v1}, Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;-><init>()V

    sput-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;

    .line 81
    :cond_0
    sget-object v1, Lcom/mediatek/wfo/op/OpWosCustomizationUtils;->sFactory:Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 71
    .end local p0    # "context":Landroid/content/Context;
    :goto_1
    monitor-exit v0

    throw p0
.end method
