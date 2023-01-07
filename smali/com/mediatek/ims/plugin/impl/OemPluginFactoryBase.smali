.class public Lcom/mediatek/ims/plugin/impl/OemPluginFactoryBase;
.super Ljava/lang/Object;
.source "OemPluginFactoryBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/OemPluginFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsCallOemPluginBase;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/plugin/impl/ImsCallOemPluginBase;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsManagerOemPluginBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/ImsManagerOemPluginBase;-><init>()V

    return-object v0
.end method

.method public makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsRegistrationOemPluginBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/ImsRegistrationOemPluginBase;-><init>()V

    return-object v0
.end method

.method public makeImsSSOemPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/plugin/impl/ImsSSOemPluginBase;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
