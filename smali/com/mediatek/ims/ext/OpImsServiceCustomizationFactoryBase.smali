.class public Lcom/mediatek/ims/ext/OpImsServiceCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpImsServiceCustomizationFactoryBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDigitsUtil()Lcom/mediatek/ims/ext/DigitsUtil;
    .locals 1

    .line 21
    new-instance v0, Lcom/mediatek/ims/ext/DigitsUtilBase;

    invoke-direct {v0}, Lcom/mediatek/ims/ext/DigitsUtilBase;-><init>()V

    return-object v0
.end method

.method public makeImsServiceExt(Landroid/content/Context;)Lcom/mediatek/ims/ext/IImsServiceExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/mediatek/ims/ext/ImsServiceExt;

    invoke-direct {v0, p1}, Lcom/mediatek/ims/ext/ImsServiceExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeImsVTUsageManager()Lcom/mediatek/ims/internal/ImsVTUsageManager;
    .locals 1

    .line 39
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTUsageManager;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager;-><init>()V

    return-object v0
.end method

.method public makeImsVtProvider()Lcom/mediatek/ims/internal/ImsVTProvider;
    .locals 1

    .line 35
    new-instance v0, Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/ImsVTProvider;-><init>()V

    return-object v0
.end method

.method public makeOpImsCallSessionProxy()Lcom/mediatek/ims/ext/OpImsCallSessionProxy;
    .locals 2

    .line 25
    const-string v0, "OpFactory"

    const-string v1, "makeOpImsCallSessionProxy: default"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/mediatek/ims/ext/OpImsCallSessionProxyBase;

    invoke-direct {v0}, Lcom/mediatek/ims/ext/OpImsCallSessionProxyBase;-><init>()V

    return-object v0
.end method
