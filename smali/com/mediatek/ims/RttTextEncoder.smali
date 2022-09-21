.class public Lcom/mediatek/ims/RttTextEncoder;
.super Ljava/lang/Object;
.source "RttTextEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/RttTextEncoder$CharList;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RttTextEncoder"


# instance fields
.field private final B_00000011:B

.field private final B_00000111:B

.field private final B_00001111:B

.field private final B_00011100:B

.field private final B_00110000:B

.field private final B_00111100:B

.field private final B_00111111:B

.field private final B_10000000:B

.field private final B_11000000:B

.field private final B_11100000:B

.field private final B_11110000:B

.field private mRemaining:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, -0x80

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_10000000:B

    .line 53
    const/16 v0, -0x40

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_11000000:B

    .line 54
    const/16 v0, -0x20

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_11100000:B

    .line 55
    const/16 v0, -0x10

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_11110000:B

    .line 56
    const/16 v0, 0x1c

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00011100:B

    .line 57
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00000011:B

    .line 58
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00000111:B

    .line 59
    const/16 v0, 0x3f

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00111111:B

    .line 60
    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00001111:B

    .line 61
    const/16 v0, 0x3c

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00111100:B

    .line 62
    const/16 v0, 0x30

    iput-byte v0, p0, Lcom/mediatek/ims/RttTextEncoder;->B_00110000:B

    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    .line 208
    return-void
.end method

.method private addRemaining(B)V
    .locals 3
    .param p1, "b"    # B

    .line 169
    iget-object v0, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/ims/RttTextEncoder;->appendByteArray([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    .line 170
    return-void
.end method

.method private appendByteArray([B[B)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 177
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p2

    .line 178
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    return-object p1

    .line 179
    :cond_1
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 180
    .local v0, "byteArray":[B
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    return-object v0
.end method

.method private checkIsRemaining(I[B)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "utf8Bytes"    # [B

    .line 162
    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p2, v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/RttTextEncoder;->addRemaining(B)V

    .line 163
    array-length v0, p2

    if-lt p1, v0, :cond_0

    .line 164
    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clearRemaining()V
    .locals 1

    .line 173
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    .line 174
    return-void
.end method

.method private isNotHead(B)Z
    .locals 2
    .param p1, "b"    # B

    .line 152
    and-int/lit8 v0, p1, -0x40

    const/16 v1, -0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeChar(II)I
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 155
    shl-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p2

    return v0
.end method

.method private makeChar(III)I
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "b3"    # I

    .line 158
    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    return v0
.end method

.method private printBytes([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .line 65
    const-string v0, ""

    .line 66
    .local v0, "ret":Ljava/lang/String;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 67
    .local v3, "b":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v5, v3, 0xff

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v0
.end method

.method private sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 246
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toUCS2([B)[C
    .locals 11
    .param p1, "utf8Bytes"    # [B

    .line 76
    new-instance v0, Lcom/mediatek/ims/RttTextEncoder$CharList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/ims/RttTextEncoder$CharList;-><init>(Lcom/mediatek/ims/RttTextEncoder;Lcom/mediatek/ims/RttTextEncoder$1;)V

    .line 77
    .local v0, "charList":Lcom/mediatek/ims/RttTextEncoder$CharList;
    const/4 v1, 0x0

    .local v1, "b2":B
    const/4 v2, 0x0

    .local v2, "b3":B
    const/4 v3, 0x0

    .line 78
    .local v3, "b4":B
    const/4 v4, 0x0

    .local v4, "ub1":I
    const/4 v5, 0x0

    .local v5, "ub2":I
    const/4 v6, 0x0

    .line 80
    .local v6, "ub3":I
    iget-object v7, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    invoke-direct {p0, v7, p1}, Lcom/mediatek/ims/RttTextEncoder;->appendByteArray([B[B)[B

    move-result-object p1

    .line 81
    invoke-direct {p0}, Lcom/mediatek/ims/RttTextEncoder;->clearRemaining()V

    .line 83
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, p1

    if-ge v7, v8, :cond_10

    .line 85
    :try_start_0
    aget-byte v8, p1, v7

    .line 86
    .local v8, "b":B
    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 88
    goto/16 :goto_2

    .line 89
    :cond_0
    if-lez v8, :cond_1

    .line 91
    int-to-char v9, v8

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/RttTextEncoder$CharList;->add(I)V

    goto/16 :goto_1

    .line 92
    :cond_1
    and-int/lit8 v9, v8, -0x10

    const/16 v10, -0x10

    if-ne v9, v10, :cond_8

    .line 94
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_3

    .line 95
    :cond_2
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v1, v9

    .line 96
    invoke-direct {p0, v1}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_2

    .line 97
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 99
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_3

    .line 100
    :cond_4
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v2, v9

    .line 101
    invoke-direct {p0, v2}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_2

    .line 102
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 104
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_3

    .line 105
    :cond_6
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v3, v9

    .line 106
    invoke-direct {p0, v3}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_2

    .line 107
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 109
    and-int/lit8 v9, v8, 0x7

    shl-int/lit8 v9, v9, 0x2

    and-int/lit8 v10, v1, 0x30

    shr-int/lit8 v10, v10, 0x4

    add-int v4, v9, v10

    .line 110
    and-int/lit8 v9, v1, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v2, 0x3c

    shr-int/lit8 v10, v10, 0x2

    add-int v5, v9, v10

    .line 111
    and-int/lit8 v9, v2, 0x3

    shl-int/lit8 v9, v9, 0x6

    and-int/lit8 v10, v3, 0x3f

    add-int v6, v9, v10

    .line 112
    invoke-direct {p0, v4, v5, v6}, Lcom/mediatek/ims/RttTextEncoder;->makeChar(III)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/RttTextEncoder$CharList;->add(I)V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/ims/RttTextEncoder;->clearRemaining()V

    goto/16 :goto_1

    .line 115
    :cond_8
    and-int/lit8 v9, v8, -0x20

    const/16 v10, -0x20

    if-ne v9, v10, :cond_d

    .line 117
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_9

    goto/16 :goto_3

    .line 118
    :cond_9
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v1, v9

    .line 119
    invoke-direct {p0, v1}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_2

    .line 120
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 122
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_3

    .line 123
    :cond_b
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v2, v9

    .line 124
    invoke-direct {p0, v2}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_2

    .line 125
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 127
    and-int/lit8 v9, v8, 0xf

    shl-int/lit8 v9, v9, 0x4

    and-int/lit8 v10, v1, 0x3c

    shr-int/lit8 v10, v10, 0x2

    add-int v4, v9, v10

    .line 128
    and-int/lit8 v9, v1, 0x3

    shl-int/lit8 v9, v9, 0x6

    and-int/lit8 v10, v2, 0x3f

    add-int v5, v9, v10

    .line 129
    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/RttTextEncoder;->makeChar(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/RttTextEncoder$CharList;->add(I)V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/ims/RttTextEncoder;->clearRemaining()V

    goto :goto_1

    .line 134
    :cond_d
    add-int/lit8 v9, v7, 0x1

    invoke-direct {p0, v9, p1}, Lcom/mediatek/ims/RttTextEncoder;->checkIsRemaining(I[B)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_3

    .line 135
    :cond_e
    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p1, v9

    move v1, v9

    .line 136
    invoke-direct {p0, v1}, Lcom/mediatek/ims/RttTextEncoder;->isNotHead(B)Z

    move-result v9

    if-nez v9, :cond_f

    goto :goto_2

    .line 137
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 139
    and-int/lit8 v9, v8, 0x1c

    shr-int/lit8 v4, v9, 0x2

    .line 140
    and-int/lit8 v9, v8, 0x3

    shl-int/lit8 v9, v9, 0x6

    and-int/lit8 v10, v1, 0x3f

    add-int v5, v9, v10

    .line 141
    invoke-direct {p0, v4, v5}, Lcom/mediatek/ims/RttTextEncoder;->makeChar(II)I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/mediatek/ims/RttTextEncoder$CharList;->add(I)V

    .line 142
    invoke-direct {p0}, Lcom/mediatek/ims/RttTextEncoder;->clearRemaining()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v8    # "b":B
    :goto_1
    nop

    .line 83
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 144
    :catch_0
    move-exception v8

    .line 145
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "RttTextEncoder"

    const-string v10, "IndexOutOfBoundsException: toUCS2"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v7    # "i":I
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_10
    :goto_3
    invoke-virtual {v0}, Lcom/mediatek/ims/RttTextEncoder$CharList;->toArray()[C

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public getUnicodeFromUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "utf8"    # Ljava/lang/String;

    .line 210
    const-string v0, "RttTextEncoder"

    const/4 v1, 0x0

    .line 212
    .local v1, "decodeText":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 214
    .local v4, "length":I
    if-gtz v4, :cond_0

    return-object v2

    .line 215
    :cond_0
    div-int/lit8 v5, v4, 0x2

    new-array v5, v5, [B

    .line 216
    .local v5, "data":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 217
    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v10, v6, 0x1

    .line 218
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 216
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 220
    .end local v6    # "i":I
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/ims/RttTextEncoder;->toUCS2([B)[C

    move-result-object v6

    .line 221
    .local v6, "c":[C
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([C)V

    move-object v1, v7

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decode len = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", textMessage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->printBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", remain len: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    array-length v8, v8

    .line 224
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    .line 225
    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->printBytes([B)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/ims/RttTextEncoder;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    nop

    .line 231
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "data":[B
    .end local v6    # "c":[C
    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    .line 232
    .local v3, "bom":[B
    const/4 v4, 0x0

    .line 234
    .local v4, "BOM":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    .line 237
    goto :goto_1

    .line 235
    :catch_0
    move-exception v5

    .line 236
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Exception when transcode bom to string."

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/ims/RttTextEncoder;->mRemaining:[B

    array-length v5, v5

    if-nez v5, :cond_2

    .line 239
    const-string v5, "found BOM, ignore it"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v2

    .line 242
    :cond_2
    return-object v1

    .line 226
    .end local v3    # "bom":[B
    .end local v4    # "BOM":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception: handleRttTextReceivedIndication"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v2

    :array_0
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method
