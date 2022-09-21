.class public Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx$VideoProvider;
.super Ljava/lang/Object;
.source "ImsVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoProvider"
.end annotation


# static fields
.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL:I = 0xc8

.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL_AUTO_DOWNGRADE:I = 0xc9

.field public static final SESSION_MODIFY_CANCEL_UPGRADE_FAIL_REMOTE_REJECT_UPGRADE:I = 0xca

.field private static final SESSION_MODIFY_MTK_BASE:I = 0xc8


# instance fields
.field final synthetic this$1:Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;

    .line 347
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx$VideoProvider;->this$1:Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
