.class public Lcom/mediatek/ims/internal/DialogInfo;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/DialogInfo$Param;,
        Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;,
        Lcom/mediatek/ims/internal/DialogInfo$Local;,
        Lcom/mediatek/ims/internal/DialogInfo$Dialog;
    }
.end annotation


# instance fields
.field private mDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/DialogInfo$Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo;->mDialogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addDialog(Lcom/mediatek/ims/internal/DialogInfo$Dialog;)Z
    .locals 1
    .param p1, "dialog"    # Lcom/mediatek/ims/internal/DialogInfo$Dialog;

    .line 14
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo;->mDialogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getDialogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/DialogInfo$Dialog;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo;->mDialogs:Ljava/util/List;

    return-object v0
.end method
