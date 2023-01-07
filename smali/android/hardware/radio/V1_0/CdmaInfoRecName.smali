.class public final Landroid/hardware/radio/V1_0/CdmaInfoRecName;
.super Ljava/lang/Object;
.source "CdmaInfoRecName.java"


# static fields
.field public static final CALLED_PARTY_NUMBER:I = 0x1

.field public static final CALLING_PARTY_NUMBER:I = 0x2

.field public static final CONNECTED_NUMBER:I = 0x3

.field public static final DISPLAY:I = 0x0

.field public static final EXTENDED_DISPLAY:I = 0x7

.field public static final LINE_CONTROL:I = 0x6

.field public static final REDIRECTING_NUMBER:I = 0x5

.field public static final SIGNAL:I = 0x4

.field public static final T53_AUDIO_CONTROL:I = 0xa

.field public static final T53_CLIR:I = 0x8

.field public static final T53_RELEASE:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 56
    .local v1, "flipped":I
    const-string v2, "DISPLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 58
    const-string v2, "CALLED_PARTY_NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    or-int/lit8 v1, v1, 0x1

    .line 61
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 62
    const-string v2, "CALLING_PARTY_NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    or-int/lit8 v1, v1, 0x2

    .line 65
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 66
    const-string v2, "CONNECTED_NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    or-int/lit8 v1, v1, 0x3

    .line 69
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 70
    const-string v2, "SIGNAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    or-int/lit8 v1, v1, 0x4

    .line 73
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 74
    const-string v2, "REDIRECTING_NUMBER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x5

    .line 77
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 78
    const-string v2, "LINE_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x6

    .line 81
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 82
    const-string v2, "EXTENDED_DISPLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x7

    .line 85
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 86
    const-string v2, "T53_CLIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x8

    .line 89
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 90
    const-string v2, "T53_RELEASE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x9

    .line 93
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 94
    const-string v2, "T53_AUDIO_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0xa

    .line 97
    :cond_9
    if-eq p0, v1, :cond_a

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_a
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 17
    if-nez p0, :cond_0

    .line 18
    const-string v0, "DISPLAY"

    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 21
    const-string v0, "CALLED_PARTY_NUMBER"

    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 24
    const-string v0, "CALLING_PARTY_NUMBER"

    return-object v0

    .line 26
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 27
    const-string v0, "CONNECTED_NUMBER"

    return-object v0

    .line 29
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 30
    const-string v0, "SIGNAL"

    return-object v0

    .line 32
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 33
    const-string v0, "REDIRECTING_NUMBER"

    return-object v0

    .line 35
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 36
    const-string v0, "LINE_CONTROL"

    return-object v0

    .line 38
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 39
    const-string v0, "EXTENDED_DISPLAY"

    return-object v0

    .line 41
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 42
    const-string v0, "T53_CLIR"

    return-object v0

    .line 44
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 45
    const-string v0, "T53_RELEASE"

    return-object v0

    .line 47
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 48
    const-string v0, "T53_AUDIO_CONTROL"

    return-object v0

    .line 50
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
