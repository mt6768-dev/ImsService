.class public Lcom/mediatek/ims/plugin/impl/ImsManagerOemPluginBase;
.super Ljava/lang/Object;
.source "ImsManagerOemPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsManagerOemPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsManagerOemPluginBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPlugin()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public updateImsServiceConfig(Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "force"    # Z

    .line 64
    invoke-static {p1, p2, p3}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 65
    return-void
.end method
