.class public Lcom/mediatek/wfo/impl/WfoApp;
.super Landroid/app/Application;
.source "WfoApp.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WfoApp"

.field private static final VOWIFI_SERVIVE:Ljava/lang/String; = "vowifi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 56
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 58
    const-string v0, "WfoApp"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 64
    const-string v0, "WfoApp"

    const-string v1, "WfoApp onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method
