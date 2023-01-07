.class public Lcom/mediatek/ims/config/ImsConfigSettings;
.super Ljava/lang/Object;
.source "ImsConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    }
.end annotation


# static fields
.field private static sImsConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/ImsConfigSettings$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    .line 20
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->buildConfigSettings()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildConfigSettings()V
    .locals 7

    .line 24
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    const-string v6, "video_over_ps_support"

    invoke-direct {v3, v4, v1, v6}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    const-string v6, "epdg_identifier"

    invoke-direct {v3, v4, v5, v6}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v1}, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;-><init>(Ljava/lang/Class;I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public static getConfigSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/ims/config/ImsConfigSettings$Setting;",
            ">;"
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getIsStoreModem(I)Z
    .locals 2
    .param p0, "configId"    # I

    .line 199
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 200
    .local v0, "s":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    iget-boolean v1, v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mIsStoreModem:Z

    return v1
.end method

.method public static getMimeType(I)I
    .locals 2
    .param p0, "configId"    # I

    .line 194
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 195
    .local v0, "s":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    iget v1, v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    return v1
.end method

.method public static getProvisionStr(I)Ljava/lang/String;
    .locals 2
    .param p0, "configId"    # I

    .line 204
    sget-object v0, Lcom/mediatek/ims/config/ImsConfigSettings;->sImsConfigurations:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 205
    .local v0, "s":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    iget-object v1, v0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mProvisionStr:Ljava/lang/String;

    return-object v1
.end method
