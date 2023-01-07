.class public abstract Lcom/mediatek/ims/config/Register;
.super Ljava/lang/Object;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/config/Register$ArgsObserver;,
        Lcom/mediatek/ims/config/Register$IArgsChangeListener;
    }
.end annotation


# instance fields
.field protected argType:Ljava/lang/String;

.field protected mArgsListener:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

.field protected mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mPhoneId:I

.field protected mRegArgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/Register;->mRegArgs:Ljava/util/HashSet;

    .line 19
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsListener:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 22
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    .line 23
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandlerThread:Landroid/os/HandlerThread;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ims/config/Register;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/config/Register;->mRegArgs:Ljava/util/HashSet;

    .line 19
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsListener:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 22
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    .line 23
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    iput-object p1, p0, Lcom/mediatek/ims/config/Register;->mContext:Landroid/content/Context;

    .line 34
    iput p2, p0, Lcom/mediatek/ims/config/Register;->mPhoneId:I

    .line 35
    if-eqz p1, :cond_1

    .line 39
    if-eqz p3, :cond_0

    .line 40
    iput-object p3, p0, Lcom/mediatek/ims/config/Register;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ims"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Reg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandlerThread:Landroid/os/HandlerThread;

    .line 43
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mediatek/ims/config/Register;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandler:Landroid/os/Handler;

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/mediatek/ims/config/Register;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/Register;

    .line 16
    iget-object v0, p0, Lcom/mediatek/ims/config/Register;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addArg(I)Lcom/mediatek/ims/config/Register;
    .locals 2
    .param p1, "argId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/mediatek/ims/config/Register;->mRegArgs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    return-object p0
.end method

.method public register(Lcom/mediatek/ims/config/Register$IArgsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mediatek/ims/config/Register$IArgsChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/mediatek/ims/config/Register;->mArgsListener:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    .line 55
    iget-object v0, p0, Lcom/mediatek/ims/config/Register;->mRegArgs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/mediatek/ims/config/Register$ArgsObserver;

    iget-object v1, p0, Lcom/mediatek/ims/config/Register;->mArgsListener:Lcom/mediatek/ims/config/Register$IArgsChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/config/Register$ArgsObserver;-><init>(Lcom/mediatek/ims/config/Register;Lcom/mediatek/ims/config/Register$IArgsChangeListener;)V

    iput-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    .line 62
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/config/Register;->argType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregister()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mediatek/ims/config/Register;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/ims/config/Register;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/config/Register;->mArgsObserver:Lcom/mediatek/ims/config/Register$ArgsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    :cond_0
    return-void
.end method
