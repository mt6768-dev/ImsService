.class public interface abstract Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
.super Ljava/lang/Object;
.source "ExtensionPluginFactory.java"


# virtual methods
.method public abstract makeImsCallPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/impl/ImsCallPluginBase;
.end method

.method public abstract makeImsSSExtPlugin(Landroid/content/Context;)Lcom/mediatek/ims/plugin/ImsSSExtPlugin;
.end method

.method public abstract makeImsSelfActivator(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
.end method
