.class public Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;
.super Ljava/lang/Object;
.source "ImsVTProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectionEx"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx$VideoProvider;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/internal/ImsVTProvider;


# direct methods
.method protected constructor <init>(Lcom/mediatek/ims/internal/ImsVTProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/internal/ImsVTProvider;

    .line 346
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTProvider$ConnectionEx;->this$0:Lcom/mediatek/ims/internal/ImsVTProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
