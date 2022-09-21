.class public Lcom/mediatek/ims/ext/ImsServiceExt;
.super Ljava/lang/Object;
.source "ImsServiceExt.java"

# interfaces
.implements Lcom/mediatek/ims/ext/IImsServiceExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsServiceExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public isWfcRegErrorCauseSupported()Z
    .locals 2

    .line 84
    const-string v0, "ImsServiceExt"

    const-string v1, "isWfcRegErrorCauseSupported return false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public notifyImsServiceEvent(ILandroid/content/Context;Landroid/os/Message;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "msg"    # Landroid/os/Message;

    .line 65
    return-void
.end method

.method public notifyRegistrationStateChange(ILandroid/os/Handler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ran"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "imsRILAdapter"    # Ljava/lang/Object;

    .line 76
    return-void
.end method
