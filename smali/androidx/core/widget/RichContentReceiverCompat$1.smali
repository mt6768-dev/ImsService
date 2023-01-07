.class Landroidx/core/widget/RichContentReceiverCompat$1;
.super Ljava/lang/Object;
.source "RichContentReceiverCompat.java"

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/widget/RichContentReceiverCompat;->buildOnCommitContentListener(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/RichContentReceiverCompat;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/widget/RichContentReceiverCompat;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/core/widget/RichContentReceiverCompat;

    .line 204
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat$1;, "Landroidx/core/widget/RichContentReceiverCompat$1;"
    iput-object p1, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->this$0:Landroidx/core/widget/RichContentReceiverCompat;

    iput-object p2, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "content"    # Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 208
    .local p0, "this":Landroidx/core/widget/RichContentReceiverCompat$1;, "Landroidx/core/widget/RichContentReceiverCompat$1;"
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 209
    .local v0, "description":Landroid/content/ClipDescription;
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t insert from IME; requestPermission() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RichContentReceiver"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v2

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/ClipData;

    new-instance v3, Landroid/content/ClipData$Item;

    .line 218
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v0, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 219
    .local v1, "clip":Landroid/content/ClipData;
    iget-object v3, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->this$0:Landroidx/core/widget/RichContentReceiverCompat;

    iget-object v4, p0, Landroidx/core/widget/RichContentReceiverCompat$1;->val$view:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5, v2}, Landroidx/core/widget/RichContentReceiverCompat;->onReceive(Landroid/view/View;Landroid/content/ClipData;II)Z

    move-result v2

    return v2
.end method
