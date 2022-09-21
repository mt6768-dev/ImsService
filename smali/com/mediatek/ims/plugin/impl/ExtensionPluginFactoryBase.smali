.class public Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;
.super Ljava/lang/Object;
.source "ExtensionPluginFactoryBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ExtensionPluginFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "ExtensionPluginFactoryBase"

    const-string v1, "makeImsCallPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;->makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;

    move-result-object p1

    return-object p1
.end method

.method public makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    const-string v0, "ExtensionPluginFactoryBase"

    const-string v1, "makeImsSSExtPlugin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/plugin/impl/ImsSSExtPluginBase;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 74
    const-string v0, "ExtensionPluginFactoryBase"

    const-string v1, "makeImsSelfActivator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)V

    return-object v0
.end method
