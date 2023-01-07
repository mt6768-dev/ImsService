.class public Lcom/mediatek/wfo/op/OpWosCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpWosCustomizationFactoryBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeWosExt(Landroid/content/Context;)Lcom/mediatek/wfo/op/IWosExt;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/mediatek/wfo/op/DefaultWosExt;

    invoke-direct {v0, p1}, Lcom/mediatek/wfo/op/DefaultWosExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
