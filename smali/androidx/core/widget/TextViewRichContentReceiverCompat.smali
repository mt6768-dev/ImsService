.class public abstract Landroidx/core/widget/TextViewRichContentReceiverCompat;
.super Landroidx/core/widget/RichContentReceiverCompat;
.source "TextViewRichContentReceiverCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/widget/RichContentReceiverCompat<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIME_TYPES_ALL_TEXT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "text/*"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/core/widget/TextViewRichContentReceiverCompat;->MIME_TYPES_ALL_TEXT:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroidx/core/widget/RichContentReceiverCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedMimeTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Landroidx/core/widget/TextViewRichContentReceiverCompat;->MIME_TYPES_ALL_TEXT:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic onReceive(Landroid/view/View;Landroid/content/ClipData;II)Z
    .locals 0

    .line 43
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/widget/TextViewRichContentReceiverCompat;->onReceive(Landroid/widget/TextView;Landroid/content/ClipData;II)Z

    move-result p1

    return p1
.end method

.method public onReceive(Landroid/widget/TextView;Landroid/content/ClipData;II)Z
    .locals 10
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "clip"    # Landroid/content/ClipData;
    .param p3, "source"    # I
    .param p4, "flags"    # I

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/widget/TextViewRichContentReceiverCompat;->supports(Landroid/content/ClipDescription;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 73
    .local v1, "editable":Landroid/text/Editable;
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 74
    .local v2, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 75
    .local v3, "didFirst":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 77
    and-int/lit8 v5, p4, 0x1

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {p2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 79
    .local v5, "paste":Ljava/lang/CharSequence;
    instance-of v6, v5, Landroid/text/Spanned;

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    move-object v5, v6

    goto :goto_2

    .line 81
    .end local v5    # "paste":Ljava/lang/CharSequence;
    :cond_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3

    .line 82
    invoke-virtual {p2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "paste":Ljava/lang/CharSequence;
    goto :goto_2

    .line 84
    .end local v5    # "paste":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 87
    .restart local v5    # "paste":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v5, :cond_5

    .line 88
    if-nez v3, :cond_4

    .line 89
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 90
    .local v6, "selStart":I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    .line 91
    .local v7, "selEnd":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 92
    .local v8, "start":I
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 93
    .local v9, "end":I
    invoke-static {v1, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 94
    invoke-interface {v1, v8, v9, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 95
    const/4 v3, 0x1

    .line 96
    .end local v6    # "selStart":I
    .end local v7    # "selEnd":I
    .end local v8    # "start":I
    .end local v9    # "end":I
    goto :goto_3

    .line 97
    :cond_4
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    const-string v7, "\n"

    invoke-interface {v1, v6, v7}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 98
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-interface {v1, v6, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 75
    .end local v5    # "paste":Ljava/lang/CharSequence;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "i":I
    :cond_6
    return v3
.end method
