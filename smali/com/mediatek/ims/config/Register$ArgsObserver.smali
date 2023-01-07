.class public Lcom/mediatek/ims/config/Register$ArgsObserver;
.super Landroid/database/ContentObserver;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArgsObserver"
.end annotation


# instance fields
.field private mArgsObserver:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

.field final synthetic this$0:Lcom/mediatek/ims/config/Register;


# direct methods
.method public constructor <init>(Lcom/mediatek/ims/config/Register;Lcom/mediatek/ims/config/Register$IArgsChangeListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mediatek/ims/config/Register;
    .param p2, "listener"    # Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 76
    iput-object p1, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->this$0:Lcom/mediatek/ims/config/Register;

    .line 77
    invoke-static {p1}, Lcom/mediatek/ims/config/Register;->access$000(Lcom/mediatek/ims/config/Register;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->mArgsObserver:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 78
    iput-object p2, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->mArgsObserver:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/ims/config/Register$ArgsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 83
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 86
    const/4 v0, -0x1

    .line 87
    .local v0, "argId":I
    if-nez p2, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->this$0:Lcom/mediatek/ims/config/Register;

    iget-object v1, v1, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x50c07cbe

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    const v4, -0x3a5d850a

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "feature"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    goto :goto_0

    :cond_3
    const-string v3, "config"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    if-ne v2, v5, :cond_4

    .line 100
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    iget-object v2, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->mArgsObserver:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/config/Register$IArgsChangeListener;->onChange(I)V

    .line 103
    goto :goto_1

    .line 105
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Register class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->this$0:Lcom/mediatek/ims/config/Register;

    iget-object v3, v3, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_5
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "configName":Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/ims/config/ImsConfigContract;->configNameToId(Ljava/lang/String;)I

    move-result v0

    .line 95
    iget-object v2, p0, Lcom/mediatek/ims/config/Register$ArgsObserver;->mArgsObserver:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    invoke-interface {v2, v0}, Lcom/mediatek/ims/config/Register$IArgsChangeListener;->onChange(I)V

    .line 96
    nop

    .line 108
    .end local v1    # "configName":Ljava/lang/String;
    :goto_1
    return-void
.end method
