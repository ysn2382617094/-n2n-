.class public Lcom/umeng/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/umeng/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/umeng/facebook/share/internal/ShareContentValidation$WebShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 0

    .line 54
    invoke-static {p0, p1, p2}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/umeng/facebook/share/model/ShareVideo;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/umeng/facebook/share/model/ShareVideo;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/umeng/facebook/share/model/ShareLinkContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/umeng/facebook/share/model/ShareLinkContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/umeng/facebook/share/model/SharePhotoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/umeng/facebook/share/model/SharePhotoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/umeng/facebook/share/model/ShareVideoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/umeng/facebook/share/model/ShareVideoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/umeng/facebook/share/model/ShareMediaContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/umeng/facebook/share/model/ShareMediaContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static getApiValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .line 81
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    .line 84
    :cond_0
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getDefaultValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .line 74
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    .line 77
    :cond_0
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getWebShareValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;
    .locals 2

    .line 88
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/umeng/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/umeng/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    .line 91
    :cond_0
    sget-object v0, Lcom/umeng/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static validate(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/facebook/FacebookException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 100
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_0

    .line 101
    check-cast p0, Lcom/umeng/facebook/share/model/ShareLinkContent;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareLinkContent;)V

    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p0, Lcom/umeng/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_1

    .line 103
    check-cast p0, Lcom/umeng/facebook/share/model/SharePhotoContent;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/SharePhotoContent;)V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_2

    .line 105
    check-cast p0, Lcom/umeng/facebook/share/model/ShareVideoContent;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareVideoContent;)V

    goto :goto_0

    .line 106
    :cond_2
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_3

    .line 107
    check-cast p0, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_0

    .line 108
    :cond_3
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_4

    .line 109
    check-cast p0, Lcom/umeng/facebook/share/model/ShareMediaContent;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareMediaContent;)V

    :cond_4
    :goto_0
    return-void

    .line 97
    :cond_5
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Must provide non-null content to share"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateForMessage(Lcom/umeng/facebook/share/model/ShareContent;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validate(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public static validateForNativeShare(Lcom/umeng/facebook/share/model/ShareContent;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validate(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method public static validateForWebShare(Lcom/umeng/facebook/share/model/ShareContent;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validate(Lcom/umeng/facebook/share/model/ShareContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static validateLinkContent(Lcom/umeng/facebook/share/model/ShareLinkContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Image Url must be an http:// or https:// url"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static validateMediaContent(Lcom/umeng/facebook/share/model/ShareMediaContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 207
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/ShareMedia;

    .line 218
    invoke-virtual {p1, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareMedia;)V

    goto :goto_0

    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot add more than %d media."

    .line 212
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_2
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMedium(Lcom/umeng/facebook/share/model/ShareMedia;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 224
    instance-of v0, p0, Lcom/umeng/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_0

    .line 225
    check-cast p0, Lcom/umeng/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/SharePhoto;)V

    goto :goto_0

    .line 226
    :cond_0
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_1

    .line 227
    check-cast p0, Lcom/umeng/facebook/share/model/ShareVideo;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareVideo;)V

    :goto_0
    return-void

    .line 229
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Invalid media type: %s"

    .line 230
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static validateOpenGraphAction(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    return-void

    .line 262
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateOpenGraphContent(Lcom/umeng/facebook/share/model/ShareOpenGraphContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareOpenGraphAction;)V

    .line 241
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/umeng/facebook/share/model/ShareOpenGraphAction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Property \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" was not found on the action. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "The name of the preview property must match the name of an "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "action property."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Must specify a previewPropertyName."

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, ":"

    .line 308
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 309
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    .line 312
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v4, p1, v1

    .line 313
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Invalid key found in Open Graph dictionary: %s"

    invoke-direct {p1, p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void

    .line 310
    :cond_3
    new-instance p1, Lcom/umeng/facebook/FacebookException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Open Graph keys must be namespaced: %s"

    invoke-direct {p1, p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private static validateOpenGraphObject(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 275
    invoke-virtual {p1, p0, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    return-void

    .line 272
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateOpenGraphValueContainer(Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .locals 3

    .line 282
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    invoke-static {v1, p2}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/umeng/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 286
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 287
    check-cast v1, Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 294
    invoke-static {v2, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_1

    .line 290
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    :cond_2
    invoke-static {v1, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1

    .line 321
    instance-of v0, p0, Lcom/umeng/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_0

    .line 322
    check-cast p0, Lcom/umeng/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareOpenGraphObject;)V

    goto :goto_0

    .line 323
    :cond_0
    instance-of v0, p0, Lcom/umeng/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_1

    .line 324
    check-cast p0, Lcom/umeng/facebook/share/model/SharePhoto;

    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/SharePhoto;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static validatePhoto(Lcom/umeng/facebook/share/model/SharePhoto;)V
    .locals 1

    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string v0, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string v0, "Cannot share a null SharePhoto"

    invoke-direct {p0, v0}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePhotoContent(Lcom/umeng/facebook/share/model/SharePhotoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 125
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/facebook/share/model/SharePhoto;

    .line 137
    invoke-virtual {p1, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/SharePhoto;)V

    goto :goto_0

    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Cannot add more than %d photos."

    .line 130
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_2
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validatePhotoForApi(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1

    .line 155
    invoke-static {p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/umeng/facebook/share/model/SharePhoto;)V

    .line 157
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    if-nez v0, :cond_1

    .line 160
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 168
    invoke-static {p0, p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 170
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 171
    :cond_0
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/umeng/facebook/share/model/SharePhoto;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    .line 176
    invoke-static {p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/umeng/facebook/share/model/SharePhoto;)V

    return-void
.end method

.method private static validateVideo(Lcom/umeng/facebook/share/model/ShareVideo;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 0

    if-eqz p0, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 199
    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/umeng/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "ShareVideo must reference a video that is on the device"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_3
    new-instance p0, Lcom/umeng/facebook/FacebookException;

    const-string p1, "Cannot share a null ShareVideo"

    invoke-direct {p0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateVideoContent(Lcom/umeng/facebook/share/model/ShareVideoContent;Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getVideo()Lcom/umeng/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/ShareVideo;)V

    .line 183
    invoke-virtual {p0}, Lcom/umeng/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/umeng/facebook/share/model/SharePhoto;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p1, p0}, Lcom/umeng/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/umeng/facebook/share/model/SharePhoto;)V

    :cond_0
    return-void
.end method
