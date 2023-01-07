.class public Lcom/mediatek/ims/common/SubscriptionManagerHelper;
.super Ljava/lang/Object;
.source "SubscriptionManagerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubIdUsingPhoneId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .line 45
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 46
    .local v0, "values":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 47
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method
