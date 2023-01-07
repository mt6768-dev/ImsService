.class public Lcom/mediatek/wfo/op/DefaultWosExt;
.super Ljava/lang/Object;
.source "DefaultWosExt.java"

# interfaces
.implements Lcom/mediatek/wfo/op/IWosExt;


# static fields
.field static final TAG:Ljava/lang/String; = "DefaultWosExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "DefaultWosExt"

    const-string v1, "DefaultWosExt constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method


# virtual methods
.method public clearPDNErrorMessages()V
    .locals 2

    .line 51
    const-string v0, "DefaultWosExt"

    const-string v1, "clearPDNErrorMessages is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 67
    const-string v0, "DefaultWosExt"

    const-string v1, "dispose is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method public factoryReset()V
    .locals 2

    .line 55
    const-string v0, "DefaultWosExt"

    const-string v1, "factoryReset is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    const-string v0, "DefaultWosExt"

    const-string v1, "initialize is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public showLocationTimeoutMessage()V
    .locals 2

    .line 59
    const-string v0, "DefaultWosExt"

    const-string v1, "showLocationTimeoutMessage is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public showPDNErrorMessages(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 47
    const-string v0, "DefaultWosExt"

    const-string v1, "showPDNErrorMessages is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method
