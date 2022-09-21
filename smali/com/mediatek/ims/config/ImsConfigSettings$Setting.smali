.class public Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
.super Ljava/lang/Object;
.source "ImsConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/ImsConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# instance fields
.field public clazz:Ljava/lang/Class;

.field public mIsStoreModem:Z

.field public mProvisionStr:Ljava/lang/String;

.field public mimeType:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p1, "_clazz"    # Ljava/lang/Class;
    .param p2, "_mimeType"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->clazz:Ljava/lang/Class;

    .line 171
    iput p2, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mIsStoreModem:Z

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mProvisionStr:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/lang/String;)V
    .locals 1
    .param p1, "_clazz"    # Ljava/lang/Class;
    .param p2, "_mimeType"    # I
    .param p3, "_provisionStr"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->clazz:Ljava/lang/Class;

    .line 177
    iput p2, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    .line 178
    const-string v0, ""

    if-eq p3, v0, :cond_0

    if-eqz p3, :cond_0

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mIsStoreModem:Z

    .line 180
    iput-object p3, p0, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mProvisionStr:Ljava/lang/String;

    .line 182
    :cond_0
    return-void
.end method
