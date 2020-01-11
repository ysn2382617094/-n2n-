.class Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Validator"
.end annotation


# instance fields
.field private isOpenGraphContent:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    .line 381
    invoke-direct {p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenGraphContent()Z
    .locals 1

    .line 431
    iget-boolean v0, p0, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return v0
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareLinkContent;)V
    .locals 0

    .line 385
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$500(Lcom/umeng/facebook/share/model/ShareLinkContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareMedia;)V
    .locals 0

    .line 427
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateMedium(Lcom/umeng/facebook/share/model/ShareMedia;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareMediaContent;)V
    .locals 0

    .line 397
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$800(Lcom/umeng/facebook/share/model/ShareMediaContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)V
    .locals 0

    .line 406
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$1000(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;)V
    .locals 1

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    .line 402
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$900(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;)V
    .locals 0

    .line 410
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$1100(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .locals 0

    .line 415
    invoke-static {p1, p0, p2}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$1200(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/SharePhoto;)V
    .locals 0

    .line 419
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$1300(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/SharePhotoContent;)V
    .locals 0

    .line 389
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$600(Lcom/umeng/facebook/share/model/SharePhotoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareVideo;)V
    .locals 0

    .line 423
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$1400(Lcom/umeng/facebook/share/model/ShareVideo;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareVideoContent;)V
    .locals 0

    .line 393
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$700(Lcom/umeng/facebook/share/model/ShareVideoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method
