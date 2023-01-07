.class public Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;
.super Ljava/lang/Object;
.source "ImsSelfActivatorBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/ImsSelfActivator;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsSelfActivatorBase"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/mediatek/ims/ImsCallSessionProxy;Lcom/mediatek/ims/ril/ImsCommandsInterface;Lcom/mediatek/ims/ImsService;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "callSessionProxy"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p4, "imsRILAdapter"    # Lcom/mediatek/ims/ril/ImsCommandsInterface;
    .param p5, "imsService"    # Lcom/mediatek/ims/ImsService;
    .param p6, "phoneId"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mediatek/ims/plugin/impl/ImsSelfActivatorBase;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 75
    return-void
.end method

.method public doSelfActivationDial(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Z)V
    .locals 0
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "isEcc"    # Z

    .line 71
    return-void
.end method

.method public shouldProcessSelfActivation(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 67
    const/4 v0, 0x0

    return v0
.end method
