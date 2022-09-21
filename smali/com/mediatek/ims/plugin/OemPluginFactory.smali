.class public interface abstract Lcom/mediatek/ims/plugin/OemPluginFactory;
.super Ljava/lang/Object;
.source "OemPluginFactory.java"


# virtual methods
.method public abstract makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsCallOemPlugin;
.end method

.method public abstract makeImsManagerPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;
.end method

.method public abstract makeImsRegistrationPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;
.end method

.method public abstract makeImsSSOemPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSOemPlugin;
.end method
