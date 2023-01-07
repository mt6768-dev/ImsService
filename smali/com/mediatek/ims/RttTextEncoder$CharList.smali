.class Lcom/mediatek/ims/RttTextEncoder$CharList;
.super Ljava/lang/Object;
.source "RttTextEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/RttTextEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharList"
.end annotation


# instance fields
.field private data:[C

.field final synthetic this$0:Lcom/mediatek/ims/RttTextEncoder;

.field private used:I


# direct methods
.method private constructor <init>(Lcom/mediatek/ims/RttTextEncoder;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->this$0:Lcom/mediatek/ims/RttTextEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    .line 187
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->used:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ims/RttTextEncoder;Lcom/mediatek/ims/RttTextEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/ims/RttTextEncoder;
    .param p2, "x1"    # Lcom/mediatek/ims/RttTextEncoder$1;

    .line 185
    invoke-direct {p0, p1}, Lcom/mediatek/ims/RttTextEncoder$CharList;-><init>(Lcom/mediatek/ims/RttTextEncoder;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 5
    .param p1, "c"    # I

    .line 189
    iget-object v0, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    if-nez v0, :cond_0

    .line 190
    const/16 v0, 0x10

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    goto :goto_0

    .line 191
    :cond_0
    iget v1, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->used:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 192
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 193
    .local v2, "temp":[C
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iput-object v2, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    .line 196
    .end local v2    # "temp":[C
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 197
    .local v0, "tmp":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    iget v3, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->used:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->used:I

    aget-char v4, v0, v1

    aput-char v4, v2, v3

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public toArray()[C
    .locals 4

    .line 202
    iget v0, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->used:I

    new-array v1, v0, [C

    .line 203
    .local v1, "chars":[C
    iget-object v2, p0, Lcom/mediatek/ims/RttTextEncoder$CharList;->data:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    return-object v1
.end method
