.class public Lcom/mediatek/ims/internal/DialogInfo$Dialog;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dialog"
.end annotation


# instance fields
.field private mDialogId:I

.field private mExclusive:Z

.field private mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

.field private mState:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZLjava/lang/String;Lcom/mediatek/ims/internal/DialogInfo$Local;)V
    .locals 1
    .param p1, "dialogId"    # I
    .param p2, "exclusive"    # Z
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "local"    # Lcom/mediatek/ims/internal/DialogInfo$Local;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mExclusive:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mState:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    .line 39
    iput p1, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mDialogId:I

    .line 40
    iput-boolean p2, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mExclusive:Z

    .line 41
    iput-object p3, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mState:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    .line 43
    return-void
.end method


# virtual methods
.method getDialogId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mDialogId:I

    return v0
.end method

.method getExclusive()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mExclusive:Z

    return v0
.end method

.method getIdentity()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;->getIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLocal()Lcom/mediatek/ims/internal/DialogInfo$Local;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    return-object v0
.end method

.method getMediaAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;->getMediaAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPname()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;->getPname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPval()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;->getPval()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getState()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mState:Ljava/lang/String;

    return-object v0
.end method

.method getTargetUri()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Dialog;->mLocal:Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;->getTargetUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
