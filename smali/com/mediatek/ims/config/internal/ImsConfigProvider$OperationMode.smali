.class Lcom/mediatek/ims/config/internal/ImsConfigProvider$OperationMode;
.super Ljava/lang/Object;
.source "ImsConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationMode"
.end annotation


# static fields
.field static final MODE_DELETE:I = 0x3

.field static final MODE_INSERT:I = 0x1

.field static final MODE_QUERY:I = 0x0

.field static final MODE_UPDATE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
