.class public Lcom/mediatek/ims/plugin/impl/ImsRegistrationOemPluginBase;
.super Ljava/lang/Object;
.source "ImsRegistrationOemPluginBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsRegistrationOemPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRegistrationOemPluginBase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastImsRegistration(IIZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imsRegState"    # I
    .param p3, "isVoWiFi"    # Z

    .line 55
    return-void
.end method
