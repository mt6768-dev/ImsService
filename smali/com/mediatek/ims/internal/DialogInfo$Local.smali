.class public Lcom/mediatek/ims/internal/DialogInfo$Local;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Local"
.end annotation


# instance fields
.field private mIdentity:Ljava/lang/String;

.field private mMediaAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:Lcom/mediatek/ims/internal/DialogInfo$Param;

.field private mTargetUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mIdentity:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mTargetUri:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mMediaAttributes:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/mediatek/ims/internal/DialogInfo$Param;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DialogInfo$Param;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mParam:Lcom/mediatek/ims/internal/DialogInfo$Param;

    return-void
.end method


# virtual methods
.method addMediaAttribute(Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;)Z
    .locals 1
    .param p1, "mediaAttribute"    # Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;

    .line 108
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mMediaAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getIdentity()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mIdentity:Ljava/lang/String;

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

    .line 112
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mMediaAttributes:Ljava/util/List;

    return-object v0
.end method

.method getPname()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mParam:Lcom/mediatek/ims/internal/DialogInfo$Param;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Param;->getPname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPval()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mParam:Lcom/mediatek/ims/internal/DialogInfo$Param;

    invoke-virtual {v0}, Lcom/mediatek/ims/internal/DialogInfo$Param;->getPval()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTargetUri()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mTargetUri:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mIdentity:Ljava/lang/String;

    .line 93
    return-void
.end method

.method setParam(Lcom/mediatek/ims/internal/DialogInfo$Param;)V
    .locals 0
    .param p1, "param"    # Lcom/mediatek/ims/internal/DialogInfo$Param;

    .line 116
    iput-object p1, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mParam:Lcom/mediatek/ims/internal/DialogInfo$Param;

    .line 117
    return-void
.end method

.method public setTargetUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUri"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/mediatek/ims/internal/DialogInfo$Local;->mTargetUri:Ljava/lang/String;

    .line 101
    return-void
.end method
