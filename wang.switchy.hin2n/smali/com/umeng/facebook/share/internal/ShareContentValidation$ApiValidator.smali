.class Lcom/umeng/facebook/share/internal/ShareContentValidation$ApiValidator;
.super Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApiValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/umeng/facebook/share/model/ShareLinkContent;)V
    .locals 1

    .line 374
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share link content with quote using the share api"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareMediaContent;)V
    .locals 1

    .line 369
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share ShareMediaContent using the share api"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate(Lcom/umeng/facebook/share/model/SharePhoto;)V
    .locals 0

    .line 348
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$400(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareVideoContent;)V
    .locals 1

    .line 353
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 362
    :cond_0
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share video content with referrer URL using the share api"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share video content with people IDs using the share api"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_2
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share video content with place IDs using the share api"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
