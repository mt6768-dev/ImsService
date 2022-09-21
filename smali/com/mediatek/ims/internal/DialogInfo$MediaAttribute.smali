.class public Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/DialogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaAttribute"
.end annotation


# instance fields
.field private mMediaDirection:Ljava/lang/String;

.field private mMediaType:Ljava/lang/String;

.field private mPort0:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "mediaType"    # Ljava/lang/String;
    .param p2, "mediaDirection"    # Ljava/lang/String;
    .param p3, "port0"    # Z

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaType:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaDirection:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mPort0:Z

    .line 145
    iput-object p1, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaType:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaDirection:Ljava/lang/String;

    .line 147
    iput-boolean p3, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mPort0:Z

    .line 148
    return-void
.end method


# virtual methods
.method getMediaDirection()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaDirection:Ljava/lang/String;

    return-object v0
.end method

.method getMediaType()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method isDowngradedVideo()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;->mPort0:Z

    return v0
.end method
