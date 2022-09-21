.class public Lcom/mediatek/wfo/plugin/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# static fields
.field private static final LEGACY_COMPONENT_CLASS_PATH:Ljava/lang/String; = "/system/framework/mediatek-wfo-legacy.jar"

.field private static final LEGACY_COMPONENT_NAME:Ljava/lang/String; = "com.mediatek.wfo.legacy.LegacyComponentFactoryImpl"

.field public static final LOG_TAG:Ljava/lang/String; = "WfoExtensionFactory"

.field private static sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeLegacyComponentFactory(Landroid/content/Context;)Lcom/mediatek/wfo/plugin/LegacyComponentFactory;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    if-nez v0, :cond_2

    .line 77
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "WfoExtensionFactory"

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Gen93 detected !"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "ro.vendor.mtk_telephony_add_on_policy"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v2, "/system/framework/mediatek-wfo-legacy.jar"

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 86
    .local v0, "pathClassLoader":Ldalvik/system/PathClassLoader;
    const-string v2, "com.mediatek.wfo.legacy.LegacyComponentFactoryImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 88
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 89
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    sput-object v3, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    .line 90
    const-string v3, "Use Legacy\'s LegacyComponentFactory"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .end local v0    # "pathClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Cannot load legacy factory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    if-nez v0, :cond_2

    .line 98
    new-instance v0, Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/wfo/plugin/impl/LegacyComponentFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    .line 102
    :cond_2
    sget-object v0, Lcom/mediatek/wfo/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/wfo/plugin/LegacyComponentFactory;

    return-object v0
.end method
