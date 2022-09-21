.class Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;
.super Ljava/lang/Object;
.source "MtkImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallLogLevel"
.end annotation


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final INFO:I = 0x3

.field public static final VERBOSE:I = 0x1

.field public static final WARNNING:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/MtkImsCallSessionProxy;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mediatek/ims/MtkImsCallSessionProxy$ImsCallLogLevel;->this$0:Lcom/mediatek/ims/MtkImsCallSessionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
