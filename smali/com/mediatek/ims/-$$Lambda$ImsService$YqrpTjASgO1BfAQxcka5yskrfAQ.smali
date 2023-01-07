.class public final synthetic Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/mediatek/ims/ImsService;

.field public final synthetic f$1:Lcom/mediatek/ims/ImsRegInfo;

.field public final synthetic f$2:[Landroid/net/Uri;

.field public final synthetic f$3:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/mediatek/ims/ImsService;Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$0:Lcom/mediatek/ims/ImsService;

    iput-object p2, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$1:Lcom/mediatek/ims/ImsRegInfo;

    iput-object p3, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$2:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$3:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$0:Lcom/mediatek/ims/ImsService;

    iget-object v1, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$1:Lcom/mediatek/ims/ImsRegInfo;

    iget-object v2, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$2:[Landroid/net/Uri;

    iget-object v3, p0, Lcom/mediatek/ims/-$$Lambda$ImsService$YqrpTjASgO1BfAQxcka5yskrfAQ;->f$3:Landroid/telephony/ims/ImsReasonInfo;

    check-cast p1, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mediatek/ims/ImsService;->lambda$notifyImsRegInd$5$ImsService(Lcom/mediatek/ims/ImsRegInfo;[Landroid/net/Uri;Landroid/telephony/ims/ImsReasonInfo;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;)V

    return-void
.end method
