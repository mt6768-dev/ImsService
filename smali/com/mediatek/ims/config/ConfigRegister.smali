.class public final Lcom/mediatek/ims/config/ConfigRegister;
.super Lcom/mediatek/ims/config/Register;
.source "ConfigRegister.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/config/ConfigRegister;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/ims/config/Register;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 18
    const-string v0, "config"

    iput-object v0, p0, Lcom/mediatek/ims/config/ConfigRegister;->argType:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public addArg(I)Lcom/mediatek/ims/config/Register;
    .locals 3
    .param p1, "argId"    # I

    .line 23
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0, p1}, Lcom/mediatek/ims/config/Register;->addArg(I)Lcom/mediatek/ims/config/Register;

    .line 28
    return-object p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid config id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Lcom/mediatek/ims/config/Register$IArgsChangeListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 33
    invoke-super {p0, p1}, Lcom/mediatek/ims/config/Register;->register(Lcom/mediatek/ims/config/Register$IArgsChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/mediatek/ims/config/ConfigRegister;->mRegArgs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 35
    .local v1, "argId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/mediatek/ims/config/ConfigRegister;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/ims/config/ConfigRegister;->mPhoneId:I

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/config/ImsConfigContract$Master;->getUriWithConfigId(II)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ims/config/ConfigRegister;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    .line 35
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 39
    .end local v1    # "argId":Ljava/lang/Integer;
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 0

    .line 44
    invoke-super {p0}, Lcom/mediatek/ims/config/Register;->unregister()V

    .line 45
    return-void
.end method
