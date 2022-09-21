.class public Lcom/mediatek/ims/plugin/impl/LegacyComponentFactoryBase;
.super Ljava/lang/Object;
.source "LegacyComponentFactoryBase.java"

# interfaces
.implements Lcom/mediatek/ims/plugin/LegacyComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public makeMtkImsUt(Landroid/content/Context;ILcom/mediatek/ims/ImsService;)Lcom/mediatek/ims/feature/MtkImsUtImplBase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "imsService"    # Lcom/mediatek/ims/ImsService;

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method
