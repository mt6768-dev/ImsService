.class public abstract Landroidx/core/widget/RichContentReceiverCompat;
.super Ljava/lang/Object;
.source "RichContentReceiverCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_CONVERT_TO_PLAIN_TEXT:I = 0x1

.field public static final SOURCE_CLIPBOARD:I = 0x0

.field public static final SOURCE_INPUT_METHOD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RichContentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 78
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat;, "Landroidx/core/widget/RichContentReceiverCompat<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildOnCommitContentListener(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;"
        }
    .end annotation

    .line 204
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat;, "Landroidx/core/widget/RichContentReceiverCompat<TT;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    new-instance v0, Landroidx/core/widget/RichContentReceiverCompat$1;

    invoke-direct {v0, p0, p1}, Landroidx/core/widget/RichContentReceiverCompat$1;-><init>(Landroidx/core/widget/RichContentReceiverCompat;Landroid/view/View;)V

    return-object v0
.end method

.method public abstract getSupportedMimeTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onReceive(Landroid/view/View;Landroid/content/ClipData;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/content/ClipData;",
            "II)Z"
        }
    .end annotation
.end method

.method public final populateEditorInfoContentMimeTypes(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .line 185
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat;, "Landroidx/core/widget/RichContentReceiverCompat<TT;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroidx/core/widget/RichContentReceiverCompat;->getSupportedMimeTypes()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 189
    .local v0, "mimeTypes":[Ljava/lang/String;
    invoke-static {p2, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    .end local v0    # "mimeTypes":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method public final supports(Landroid/content/ClipDescription;)Z
    .locals 3
    .param p1, "description"    # Landroid/content/ClipDescription;

    .line 169
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat;, "Landroidx/core/widget/RichContentReceiverCompat<TT;>;"
    invoke-virtual {p0}, Landroidx/core/widget/RichContentReceiverCompat;->getSupportedMimeTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "supportedMimeType":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const/4 v0, 0x1

    return v0

    .line 173
    .end local v1    # "supportedMimeType":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
