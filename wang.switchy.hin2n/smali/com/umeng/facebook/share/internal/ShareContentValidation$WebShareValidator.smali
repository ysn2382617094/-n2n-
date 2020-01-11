.class Lcom/umeng/facebook/share/internal/ShareContentValidation$WebShareValidator;
.super Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebShareValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V
    .locals 0

    .line 328
    invoke-direct {p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/umeng/facebook/share/model/ShareMediaContent;)V
    .locals 1

    .line 336
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share ShareMediaContent via web sharing dialogs"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate(Lcom/umeng/facebook/share/model/SharePhoto;)V
    .locals 0

    .line 341
    invoke-static {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->access$300(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public validate(Lcom/umeng/facebook/share/model/ShareVideoContent;)V
    .locals 1

    .line 331
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {p1, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
