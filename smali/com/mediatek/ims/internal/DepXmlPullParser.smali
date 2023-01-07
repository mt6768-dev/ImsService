.class public Lcom/mediatek/ims/internal/DepXmlPullParser;
.super Ljava/lang/Object;
.source "DepXmlPullParser.java"

# interfaces
.implements Lcom/mediatek/ims/internal/DialogEventPackageParser;


# static fields
.field private static final namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readDialog(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Dialog;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "local":Lcom/mediatek/ims/internal/DialogInfo$Local;
    sget-object v1, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "dialog"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x0

    const-string v3, "id"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "dialogId":I
    const/4 v3, 0x1

    .line 73
    .local v3, "exclusive":Z
    const-string v4, ""

    .line 75
    .local v4, "state":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 77
    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "name":Ljava/lang/String;
    const-string v6, "sa:exclusive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "str":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 83
    .end local v6    # "str":Ljava/lang/String;
    goto :goto_1

    :cond_1
    const-string v6, "state"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 85
    :cond_2
    const-string v6, "local"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readLocal(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Local;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 90
    .end local v5    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 91
    :cond_4
    new-instance v2, Lcom/mediatek/ims/internal/DialogInfo$Dialog;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/mediatek/ims/internal/DialogInfo$Dialog;-><init>(IZLjava/lang/String;Lcom/mediatek/ims/internal/DialogInfo$Local;)V

    return-object v2
.end method

.method private readDialogInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/mediatek/ims/internal/DialogInfo;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DialogInfo;-><init>()V

    .line 50
    .local v0, "dialogInfo":Lcom/mediatek/ims/internal/DialogInfo;
    sget-object v1, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "dialog-info"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "name":Ljava/lang/String;
    const-string v3, "dialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readDialog(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Dialog;

    move-result-object v3

    .line 58
    .local v3, "dialog":Lcom/mediatek/ims/internal/DialogInfo$Dialog;
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/DialogInfo;->addDialog(Lcom/mediatek/ims/internal/DialogInfo$Dialog;)Z

    .line 59
    .end local v3    # "dialog":Lcom/mediatek/ims/internal/DialogInfo$Dialog;
    goto :goto_1

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 62
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 63
    :cond_2
    return-object v0
.end method

.method private readLocal(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Local;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/mediatek/ims/internal/DialogInfo$Local;

    invoke-direct {v0}, Lcom/mediatek/ims/internal/DialogInfo$Local;-><init>()V

    .line 97
    .local v0, "local":Lcom/mediatek/ims/internal/DialogInfo$Local;
    sget-object v1, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "local"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 100
    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "name":Ljava/lang/String;
    const-string v3, "identity"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "identity":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/DialogInfo$Local;->setIdentity(Ljava/lang/String;)V

    .line 106
    .end local v3    # "identity":Ljava/lang/String;
    goto :goto_1

    :cond_1
    const-string v3, "target"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const/4 v3, 0x0

    const-string v4, "uri"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "targetUri":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/DialogInfo$Local;->setTargetUri(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readTargetParamAttributesToLocal(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/ims/internal/DialogInfo$Local;)V

    .line 112
    .end local v3    # "targetUri":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string v3, "mediaAttributes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readMediaAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;

    move-result-object v3

    .line 114
    .local v3, "mediaAttribute":Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/DialogInfo$Local;->addMediaAttribute(Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;)Z

    .line 115
    .end local v3    # "mediaAttribute":Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;
    goto :goto_1

    :cond_3
    const-string v3, "param"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readParam(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Param;

    move-result-object v3

    .line 117
    .local v3, "param":Lcom/mediatek/ims/internal/DialogInfo$Param;
    invoke-virtual {v0, v3}, Lcom/mediatek/ims/internal/DialogInfo$Local;->setParam(Lcom/mediatek/ims/internal/DialogInfo$Param;)V

    .line 118
    const-string v4, "DEP Parser"

    const-string v5, "read param from Local()"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v3    # "param":Lcom/mediatek/ims/internal/DialogInfo$Param;
    goto :goto_1

    .line 120
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 122
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 123
    :cond_5
    return-object v0
.end method

.method private readMediaAttributes(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const-string v0, ""

    .line 147
    .local v0, "mediaType":Ljava/lang/String;
    const-string v1, ""

    .line 148
    .local v1, "mediaDirection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 149
    .local v2, "port0":Z
    sget-object v3, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "mediaAttributes"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    .line 151
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 152
    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "name":Ljava/lang/String;
    const-string v5, "mediaType"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 157
    :cond_1
    const-string v5, "mediaDirection"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 159
    :cond_2
    const-string v5, "port0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    const/4 v2, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 166
    .end local v3    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 167
    :cond_4
    new-instance v3, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;

    invoke-direct {v3, v0, v1, v2}, Lcom/mediatek/ims/internal/DialogInfo$MediaAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v3
.end method

.method private readParam(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Param;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 171
    sget-object v0, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "param"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    const-string v1, "pname"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "pname":Ljava/lang/String;
    const-string v2, "pval"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "pval":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    new-instance v2, Lcom/mediatek/ims/internal/DialogInfo$Param;

    invoke-direct {v2, v1, v0}, Lcom/mediatek/ims/internal/DialogInfo$Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private readTargetParamAttributesToLocal(Lorg/xmlpull/v1/XmlPullParser;Lcom/mediatek/ims/internal/DialogInfo$Local;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "local"    # Lcom/mediatek/ims/internal/DialogInfo$Local;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget-object v0, Lcom/mediatek/ims/internal/DepXmlPullParser;->namespace:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "target"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "DEP Parser"

    const-string v2, "readTargetParamAttributesToLocal()"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "name":Ljava/lang/String;
    const-string v2, "param"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readParam(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo$Param;

    move-result-object v2

    .line 137
    .local v2, "param":Lcom/mediatek/ims/internal/DialogInfo$Param;
    invoke-virtual {p2, v2}, Lcom/mediatek/ims/internal/DialogInfo$Local;->setParam(Lcom/mediatek/ims/internal/DialogInfo$Param;)V

    .line 138
    .end local v2    # "param":Lcom/mediatek/ims/internal/DialogInfo$Param;
    goto :goto_1

    .line 139
    :cond_1
    invoke-direct {p0, p1}, Lcom/mediatek/ims/internal/DepXmlPullParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 141
    .end local v0    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 142
    :cond_2
    return-void
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 180
    const-string v0, ""

    .line 181
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 182
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 185
    :cond_0
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 192
    const/4 v0, 0x1

    .line 193
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_2

    .line 194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 202
    goto :goto_0

    .line 196
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 197
    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 200
    goto :goto_0

    .line 205
    :cond_2
    return-void

    .line 190
    .end local v0    # "depth":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/mediatek/ims/internal/DialogInfo;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 37
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 38
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 40
    invoke-direct {p0, v0}, Lcom/mediatek/ims/internal/DepXmlPullParser;->readDialogInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/mediatek/ims/internal/DialogInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 40
    return-object v1

    .line 42
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 43
    throw v0
.end method
